package com.onb.ateneomp.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.onb.ateneomp.application.OfferedCourseService;
import com.onb.ateneomp.application.StudentService;
import com.onb.ateneomp.model.OfferedCourse;
import com.onb.ateneomp.model.Student;

@RestController
@RequestMapping("api/admin")
public class AdminController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private OfferedCourseService offeredCourseService;
	private static final Logger logger = LoggerFactory.getLogger(StudentController.class);
	
	@GetMapping("/all")
	public List<Student> getStudents() {
		List<Student> students = studentService.getAllStudents();
		return students;
	}
	
	@GetMapping("/term/section")
	public List<Student> getStudentsInASection(@RequestParam int offeredCourseId, @RequestParam int termId) {
		logger.info("getStudentsInASection endpoint..");
		List<Student> students = studentService.getStudentsInASection(offeredCourseId, termId);
		return students;
	}
	
	@GetMapping("/offeredcourses")
	public List<OfferedCourse> getAllOfferedCoursesInTerm(@RequestParam int termId) {
		logger.info("getAllOfferedCoursesInTerm endpoint..");
		List<OfferedCourse> courses =  offeredCourseService.getOfferedCoursesInTerm(termId);
		return courses;
	}
}
