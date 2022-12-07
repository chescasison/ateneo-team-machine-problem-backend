package com.onb.ateneomp.repository;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.onb.ateneomp.model.Enrollment;
import com.onb.ateneomp.model.EnrollmentAssessmentObject;
import com.onb.ateneomp.model.OfferedCourse;
import com.onb.ateneomp.model.Student;

@Repository
public interface EnrollmentRepository extends CrudRepository<Enrollment, Integer> {
	
	@Query(value = "SELECT s.id FROM student s "
					+ "JOIN enrollment e ON e.student_id = s.id "
					+ "JOIN offered_course o ON o.id = e.offered_course_id "
					+ "WHERE o.id = ?1 AND o.term_id = ?2 " , nativeQuery = true)
	List<Integer> getEnrolledStudentsInTheCourse(int offeredCourseId, int termId);

	@Query(value = "SELECT o.id FROM offered_course o "
					+ "JOIN enrollment e ON o.id = e.offered_course_id "
					+ "WHERE e.student_id = ?1 AND o.term_id = ?2", nativeQuery = true)
	List<Integer> getEnrolledCoursesOfStudent(int studentId, int termId);
	
	@Query(value = "SELECT count(*) FROM enrollment e "
			+ "JOIN offered_course o ON o.id = e.offered_course_id "
			+ "WHERE o.section_id = ?1 AND o.term_id = ?2", nativeQuery = true)
	Integer getTakenSeatsOfASection(int sectionId, int termId);

	@Query(value="SELECT o.section_id FROM offered_course o"
				  + "JOIN enrollment e ON e.offered_course_id = o.id"
				  + "WHERE e.student_id = ?1 AND o.term_id = ?2", nativeQuery = true)
	List<Integer> getSectionsOfStudentAtTerm(Integer studentId, Integer termId);

	Optional<Enrollment> findByStudentAndEnrolledCourse(Student student, OfferedCourse enrolledCourse);
	
	@Query(value="select st.name as \"Student Name\", st.status as \"Status\", st.year_level as \"Year Level\", d.name as \"Degree\",\n"
			+ "c.course_code as \"Course Code\", s.section_code as \"Section\", \n"
			+ "case when sc.day1 = 0 then 'Monday'\n"
			+ "	when sc.day1 = 1 then 'Tuesday'\n"
			+ "	when sc.day1 = 2 then 'Wednesday'\n"
			+ "	when sc.day1 = 3 then 'Thursday'\n"
			+ "	when sc.day1 = 4 then 'Friday'\n"
			+ "	when sc.day1 = 5 then 'Saturday'\n"
			+ "	when sc.day1 = 6 then 'Sunday'\n"
			+ "	end as \"Day 1\",\n"
			+ "sc.day1start_time as \"Start Time\", sc.day1end_time as \"End Time\",\n"
			+ "case when sc.day2 = 0 then 'Monday'\n"
			+ "	when sc.day2 = 1 then 'Tuesday'\n"
			+ "	when sc.day2 = 2 then 'Wednesday'\n"
			+ "	when sc.day2 = 3 then 'Thursday'\n"
			+ "	when sc.day2 = 4 then 'Friday'\n"
			+ "	when sc.day2 = 5 then 'Saturday'\n"
			+ "	when sc.day2 = 6 then 'Sunday'\n"
			+ "	end as \"Day 2\",\n"
			+ "sc.day2start_time as \"Start Time\", sc.day2end_time as \"End Time\",\n"
			+ "oc.room_id as \"Room\"\n"
			+ "from offered_course oc \n"
			+ "join enrollment e\n"
			+ "on oc.id = e.offered_course_id\n"
			+ "join student st\n"
			+ "on e.student_id = st.id\n"
			+ "join degree d\n"
			+ "on st.degree_program_id = d.id\n"
			+ "join course c\n"
			+ "on oc.course_id = c.id\n"
			+ "join section s\n"
			+ "on oc.section_id = s.id\n"
			+ "join schedule sc\n"
			+ "on oc.schedule_id = sc.id\n"
			+ "where e.student_id = 4\n"
			+ "and oc.term_id = 1", nativeQuery=true)
	Collection<EnrollmentAssessmentObject> getEnrollmentAssessmentOfStudent(int studentId);
	
	@Query(value="SELECT * FROM enrollment e"
			  + " WHERE e.id = ?1", nativeQuery = true)
	Enrollment findEnrollmentById(int id);

}
