package com.onb.ateneomp.application;

import java.util.List;

import com.onb.ateneomp.model.OfferedCourse;
import com.onb.ateneomp.model.Term;

public interface OfferedCourseService {
	
	OfferedCourse getOfferedCourse(int offeredCourseId);
	List<OfferedCourse> getOfferedCourses(Iterable<Integer> ids);
	List<OfferedCourse> getOfferedCoursesForStudentInTerm(int degreeId, int studentId, int termId);
	List<OfferedCourse> getOfferedCoursesInTerm(int termId);
}
