package com.onb.ateneomp.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.onb.ateneomp.application.OfferedCourseService;
import com.onb.ateneomp.application.StudentService;
import com.onb.ateneomp.model.OfferedCourse;
import com.onb.ateneomp.model.Student;
import com.onb.ateneomp.model.StudentDto;

@RestController
@PreAuthorize("hasRole('admin')")
@RequestMapping("api/admin")
public class AdminController {
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private OfferedCourseService offeredCourseService;
	
	@GetMapping("/all")
	public List<StudentDto> getStudents() {
		return studentService.getAllStudents();
	}
	
	@GetMapping("/term/section")
	public List<StudentDto> getStudentsInASection(@RequestParam int offeredCourseId, @RequestParam int termId) {
		return studentService.getStudentsInASection(offeredCourseId, termId);
	}
	
	@GetMapping("/offeredcourses")
	public List<OfferedCourse> getAllOfferedCoursesInTerm(@RequestParam int termId) {
		List<OfferedCourse> courses =  offeredCourseService.getOfferedCoursesInTerm(termId);
		return courses;
	}
}
