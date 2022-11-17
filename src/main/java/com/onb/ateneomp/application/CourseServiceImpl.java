package com.onb.ateneomp.application;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onb.ateneomp.model.Course;
import com.onb.ateneomp.repository.CourseRepository;

@Service
public class CourseServiceImpl implements CourseService{
	
	@Autowired
	private CourseRepository courseRepository;
	
	@Override
	public Course getCourse(int courseId) {
		Optional<Course> course = courseRepository.findById(courseId);
		if (course.isPresent()) return course.get();
		else throw new IllegalArgumentException("Course does not exist.");
	}

}
