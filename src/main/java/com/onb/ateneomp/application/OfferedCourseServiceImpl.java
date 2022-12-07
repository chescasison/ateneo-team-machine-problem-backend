package com.onb.ateneomp.application;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onb.ateneomp.model.OfferedCourse;
import com.onb.ateneomp.repository.OfferedCourseRepository;

@Service
public class OfferedCourseServiceImpl implements OfferedCourseService {

	@Autowired
	private OfferedCourseRepository offeredCourseRepository;
	
	@Override
	public OfferedCourse getOfferedCourse(int offeredCourseId) {
		return offeredCourseRepository.findById(offeredCourseId).get();
	}

	@Override
	public List<OfferedCourse> getOfferedCourses(Iterable<Integer> ids) {
		return (List<OfferedCourse>) offeredCourseRepository.findAllById(ids);
	}
	
	@Override
	public List<OfferedCourse> getOfferedCoursesForStudentInTerm(int degreeId, int studentId, int termId) {
		return offeredCourseRepository.findCoursesForStudent(degreeId, studentId, termId);
	}
	
	@Override
	public List<OfferedCourse> getOfferedCoursesInTerm(int termId) {
		return offeredCourseRepository.findAllByTermId(termId);
	}
}
