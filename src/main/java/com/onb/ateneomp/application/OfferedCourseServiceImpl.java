package com.onb.ateneomp.application;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onb.ateneomp.model.OfferedCourse;
import com.onb.ateneomp.model.Term;
import com.onb.ateneomp.repository.OfferedCourseRepository;

@Service
public class OfferedCourseServiceImpl implements OfferedCourseService {

	@Autowired
	private OfferedCourseRepository offeredCourseRepository;
	
	@Autowired 
	private TermService termService;
	
	@Override
	public OfferedCourse getOfferedCourse(int offeredCourseId) {
		Optional<OfferedCourse> offeredCourseOptional = offeredCourseRepository.findById(offeredCourseId);
		if (offeredCourseOptional.isPresent()) return offeredCourseOptional.get();
		else throw new IllegalArgumentException("Offered course does not exist.");
	}

	@Override
	public List<OfferedCourse> getOfferedCourses(Iterable<Integer> ids) {
		List<OfferedCourse> courses = new ArrayList<>();
		offeredCourseRepository.findAllById(ids).forEach(courses::add);
		return courses;
	}
	
	@Override
	public List<OfferedCourse> getOfferedCoursesForStudentInTerm(int degreeId, int studentId, int termId) {
		List<OfferedCourse> courses = new ArrayList<>();
		Term term = termService.getTerm(termId);
		offeredCourseRepository.findCoursesForStudent(degreeId, studentId, termId).forEach(courses::add);
		return courses;
	}
	
	@Override
	public List<OfferedCourse> getOfferedCoursesInTerm(int termId) {
		List<OfferedCourse> courses = new ArrayList<>();
		offeredCourseRepository.findAllByTermId(termId).forEach(courses::add);
		return courses;
	}
}
