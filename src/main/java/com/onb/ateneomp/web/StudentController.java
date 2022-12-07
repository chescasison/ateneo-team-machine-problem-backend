package com.onb.ateneomp.web;

import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.onb.ateneomp.application.ConflictScheduleException;
import com.onb.ateneomp.application.EnrollmentAssessmentFormService;
import com.onb.ateneomp.application.EnrollmentException;
import com.onb.ateneomp.application.OfferedCourseService;
import com.onb.ateneomp.application.SectionIsFullException;
import com.onb.ateneomp.application.StudentService;
import com.onb.ateneomp.model.Enrollment;
import com.onb.ateneomp.model.OfferedCourse;
import com.onb.ateneomp.model.Student;

import net.sf.jasperreports.engine.JRException;

@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("api/student")
@PreAuthorize("hasRole('student')")
@RestController
public class StudentController {
	

	private static final Logger LOGGER = LoggerFactory.getLogger(StudentController.class);
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private OfferedCourseService offeredCourseService;
	
	@Autowired
	private EnrollmentAssessmentFormService enrollmentAssessmentService;
	
	private final int TERM_ID = 1; //TODO: Get current term
	
	
	@ExceptionHandler(EnrollmentException.class)
	public void handleException() {
		
	}
	
	@GetMapping("/details")
	public Student getStudent() {
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String name = authentication.getName();
		return studentService.getStudent(4);
	}
	
	@GetMapping("/enrolled/courses")
	public List<OfferedCourse> getEnrolledCoursesOfStudent(@RequestParam int studentId) {
		List<OfferedCourse> enrolledCourses = studentService.getEnrolledCoursesOfStudent(studentId, TERM_ID);
		return enrolledCourses;
	}
	
	@PostMapping("/enroll")
	public ResponseEntity<String> addStudentToSection(@RequestParam int offeredCourseId, @RequestParam int studentId) {
		Student student = studentService.getStudent(studentId);
		OfferedCourse offeredCourse = offeredCourseService .getOfferedCourse(offeredCourseId);
		String message = "";
		
		try {
			Enrollment enrollment = new Enrollment(student, offeredCourse); //TODO: look for ways on how to auto increment id
			studentService.enrollStudentToCourse(enrollment);
			message = "Successfully enlisted to the section.";
			LOGGER.info(message);
			return ResponseEntity.ok(message);
		} catch (RuntimeException e) {
			message = e.getMessage();
			LOGGER.info(message);
			return ResponseEntity.status(HttpServletResponse.SC_CONFLICT).body(message);
		}
	}

	@PostMapping("enrollment/delete")
	public void deleteSectionFromStudent(@RequestParam int offeredCourseId, @RequestParam int studentId) {
		try {
			studentService.deleteCourseOfStudent(offeredCourseId, studentId);
			LOGGER.info("Deleting offered course from student is successful.");
		} catch (IllegalArgumentException e) {
			LOGGER.error("Deleting section of the student's section is unsuccessful.");
		}
	}
	
	@PostMapping("/enrollment/update")
	public void updateSectionFromStudent(@RequestParam int enrollmentId, @RequestParam int newOfferedCourseId) {
		try {
			studentService.updateSectionOfStudent(enrollmentId, newOfferedCourseId);
			//if successful update, refresh page to fetch updated section
			LOGGER.info("Section of student's course successfully updated");
		} catch (ConflictScheduleException e) {
			LOGGER.error("SCHEDULE CONFLICT. Updating section of the student's course is unsuccessful.");
		} catch (SectionIsFullException e) {
			LOGGER.error("SECTION IS FULL. Updating section of the student's course is unsuccessful.");
		} catch (IllegalArgumentException e) {
			LOGGER.error(e.getMessage());
		}
	}
	
	@GetMapping("/offered/courses")
	public List<OfferedCourse> getOfferedCourses(@RequestParam int studentId) { //TODO: select all offeredCourses that are not yet added by student
		int degreeId = studentService.getDegreeIdOfStudent(studentId);
		return offeredCourseService.getOfferedCoursesForStudentInTerm(degreeId, studentId, TERM_ID);
	}
	
	@GetMapping("/enrollment/assessment/form")
	public String exportReport() {
		String message;
		try {
			message = enrollmentAssessmentService.exportReport();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return e.getMessage();
		} catch (JRException e) {
			e.printStackTrace();
			return e.getMessage();
		} catch (SQLException e) {
			e.printStackTrace();
			return e.getMessage();
		}
		return message;
	}
}
