package com.onb.ateneomp.application;

import java.util.List;

import com.onb.ateneomp.model.Enrollment;
import com.onb.ateneomp.model.OfferedCourse;
import com.onb.ateneomp.model.Student;

public interface StudentService {
	
	Student getStudent(int studentId);
	List<Student> getAllStudents();
	boolean enrollStudentToCourse(Enrollment enrollment) throws ConflictScheduleException, SectionIsFullException;
	List<Student> getStudentsInASection(int offeredCourseId, int termId);
	List<OfferedCourse> getEnrolledCoursesOfAStudent(int studentId, int termId);
	void updateSectionOfStudent(int enrollmentId, int offeredCourseId, int termId);
	void deleteCourseOfStudent(int offeredCourseId, int studentId);
	int getDegreeIdOfStudent(int studentId);
}
 