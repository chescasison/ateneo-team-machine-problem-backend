package com.onb.ateneomp.application;

import java.time.DayOfWeek;
import java.time.LocalTime;
import java.util.List;

import com.onb.ateneomp.model.Enrollment;
import com.onb.ateneomp.model.OfferedCourse;
import com.onb.ateneomp.model.Student;
import com.onb.ateneomp.model.StudentDto;

public interface StudentService {
	
	Student getStudent(int studentId);
	List<StudentDto> getAllStudents();
	void enrollStudentToCourse(Enrollment enrollment) throws ConflictScheduleException, SectionIsFullException;
	List<StudentDto> getStudentsInASection(int offeredCourseId, int termId);
	List<OfferedCourse> getEnrolledCoursesOfStudent(int studentId, int termId);
	void updateSectionOfStudent(int enrollmentId, int offeredCourseId);
	void deleteCourseOfStudent(int offeredCourseId, int studentId);
	int getDegreeIdOfStudent(int studentId);
	void sectionHasConflict(OfferedCourse offeredCourse, Student student);
	boolean areConflict(DayOfWeek day1, LocalTime startTime1, LocalTime endTime1, 
			DayOfWeek day2, LocalTime startTime2, LocalTime endTime2);
	void sectionIsFull(OfferedCourse offeredCourseId);
}
 