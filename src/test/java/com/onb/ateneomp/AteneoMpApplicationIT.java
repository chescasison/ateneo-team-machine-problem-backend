package com.onb.ateneomp;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;

import javax.transaction.Transactional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.onb.ateneomp.application.ConflictScheduleException;
import com.onb.ateneomp.application.OfferedCourseService;
import com.onb.ateneomp.application.SectionIsFullException;
import com.onb.ateneomp.application.StudentService;
import com.onb.ateneomp.model.Enrollment;
import com.onb.ateneomp.model.OfferedCourse;
import com.onb.ateneomp.model.Student;
import com.onb.ateneomp.repository.EnrollmentRepository;

@SpringBootTest
@Transactional
class AteneoMpApplicationIT {

	@Autowired
	StudentService studentService;
	
	@Autowired
	OfferedCourseService offeredCourseService;
	
	@Autowired
	EnrollmentRepository enrollmentRepository;
	
	@Test
	void enrollStudentToCourseTest() {
		int studentId = 5;
		int offeredCourseId = 11;
		
		Student student = studentService.getStudent(studentId);
		OfferedCourse offeredCourse = offeredCourseService.getOfferedCourse(offeredCourseId);
		
		Enrollment enrollment = new Enrollment(student, offeredCourse);
		studentService.enrollStudentToCourse(enrollment);
		
		Enrollment insertedEnrollment = enrollmentRepository.findByStudentAndEnrolledCourse(student, offeredCourse).get();
		
		assertNotNull(insertedEnrollment);
	}
	
	@Test
	void enrollStudentToCourse_throwsSectionIsFullException_withNoSeatsAvailableTest() {
		int studentId = 6;
		int offeredCourseId = 10;
		
		Student student = studentService.getStudent(studentId);
		OfferedCourse offeredCourse = offeredCourseService.getOfferedCourse(offeredCourseId);
		
		Enrollment enrollment = new Enrollment(student, offeredCourse);
		
		assertThrows(SectionIsFullException.class, () -> {
			studentService.enrollStudentToCourse(enrollment);
		});
	}

	@Test
	void enrollStudentToCourse_throwsConflictScheduleException_withConflictScheduleTest() {
		int studentId = 6;
		int offeredCourseId = 5;
		
		Student student = studentService.getStudent(studentId);
		OfferedCourse offeredCourse = offeredCourseService.getOfferedCourse(offeredCourseId);
		
		Enrollment enrollment = new Enrollment(student, offeredCourse);
		studentService.enrollStudentToCourse(enrollment);
		
		enrollmentRepository.findByStudentAndEnrolledCourse(student, offeredCourse);
		
		int newOfferedCourseId = 6;
		OfferedCourse newOfferedCourse = offeredCourseService.getOfferedCourse(newOfferedCourseId);
		
		Enrollment newEnrollment = new Enrollment(student, newOfferedCourse);
		
		assertThrows(ConflictScheduleException.class, () -> {
			studentService.enrollStudentToCourse(newEnrollment);
		});
	}
	
	@Test
	void updateSectionOfStudentTest() {
		int enrollmentId = -10;
		int newOfferedCourseId = 7;
		
		Enrollment enrollment = enrollmentRepository.findById(enrollmentId).get();
		int oldOfferedCourseId = enrollment.getEnrolledCourse().getId();
		
		studentService.updateSectionOfStudent(enrollmentId, newOfferedCourseId);
		
		Enrollment updatedEnrollment = enrollmentRepository.findById(enrollmentId).get();

		assertTrue(updatedEnrollment.getEnrolledCourse().getId() != oldOfferedCourseId);
	}
	
	@Test
	void deleteCourseOfStudentTest() {
		int enrollmentId = -101;
		int studentId = 6;
		int offeredCourseId = 11;
		
		studentService.deleteCourseOfStudent(offeredCourseId, studentId);
		
		Enrollment enrollment = enrollmentRepository.findEnrollmentById(enrollmentId);
		assertNull(enrollment);
	}
	
	@Test
	void getEnrolledCoursesOfAStudentTest() {
		int studentId = 4;
		int termId = 1;
		int offeredCourseId = 5;
		
		List<OfferedCourse> studentCourses = studentService.getEnrolledCoursesOfStudent(studentId, termId);
		OfferedCourse offeredCourse = offeredCourseService.getOfferedCourse(offeredCourseId);
		
		assertTrue(studentCourses.get(0) == offeredCourse);
	}

}
