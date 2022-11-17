package com.onb.ateneomp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.onb.ateneomp.model.OfferedCourse;
import com.onb.ateneomp.model.Term;

@Repository
public interface OfferedCourseRepository extends CrudRepository<OfferedCourse, Integer> {
	
	List<OfferedCourse> findAllByTerm(Term term);
	
	@Query(value = "select * from offered_course oc"
			+ "	where course_id  in (select courses_id from degree_courses dc where degree_id = ?1)"
			+ "intersect"
			+ " select * from offered_course oc2 where"
			+ " course_id not in ("
			+ "	select course_id from offered_course oc"
			+ "	join enrollment e"
			+ "		on e.offered_course_id  = oc.id"
			+ "	where e.student_id = ?2"
			+ "	and term_id = ?3"
			+ ") and term_id = ?3", nativeQuery=true)
	List<OfferedCourse> findCoursesForStudent(int degreeId, int studentId, int termId);
	
	List<OfferedCourse> findAllByTermId(int termId);
	
}
