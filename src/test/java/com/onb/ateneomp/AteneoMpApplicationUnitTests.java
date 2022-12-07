package com.onb.ateneomp;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.time.DayOfWeek;
import java.time.LocalTime;

import javax.transaction.Transactional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.onb.ateneomp.application.ConflictScheduleException;
import com.onb.ateneomp.application.SectionIsFullException;
import com.onb.ateneomp.application.StudentService;
import com.onb.ateneomp.model.OfferedCourse;
import com.onb.ateneomp.model.Student;
import com.onb.ateneomp.repository.OfferedCourseRepository;
import com.onb.ateneomp.repository.StudentRepository;

@SpringBootTest
@Transactional
public class AteneoMpApplicationUnitTests {
	
	@Autowired
	StudentService studentService;
	
	@Autowired
	OfferedCourseRepository offeredCourseRepository;
	
	@Autowired
	StudentRepository studentRepository;
	
	@Test
	void when_section_has_conflict_then_ConflictScheduleException_will_be_thrown_test() {
		int studentId = 4;
		Student student = studentRepository.findById(studentId).get();
		
		int offeredCourseId = 6;
		OfferedCourse offeredCourse = offeredCourseRepository.findById(offeredCourseId).get();
		
		assertThrows(ConflictScheduleException.class, () -> {
			studentService.sectionHasConflict(offeredCourse, student); 
		});
	}
	
	@Test
	void when_scheduleB_starts_before_scheduleA_then_two_schedules_are_conflict_test() {
		DayOfWeek day1 = DayOfWeek.MONDAY;
		LocalTime day1StartTime = LocalTime.of(9, 0);
		LocalTime day1EndTime = LocalTime.of(11, 0);
		
		DayOfWeek day2 = DayOfWeek.MONDAY;
		LocalTime day2StartTime = LocalTime.of(10, 0);
		LocalTime day2EndTime = LocalTime.of(12, 0);
		
		assertTrue(studentService.areConflict(day1, day1StartTime, day1EndTime, day2, day2StartTime, day2EndTime));
	}
	
	@Test
	void when_scheduleB_is_within_scheduleA_then_two_schedules_are_conflict_test() {
		DayOfWeek day1 = DayOfWeek.MONDAY;
		LocalTime day1StartTime = LocalTime.of(7, 0);
		LocalTime day1EndTime = LocalTime.of(12, 0);

		DayOfWeek day2 = DayOfWeek.MONDAY;
		LocalTime day2StartTime = LocalTime.of(9, 0);
		LocalTime day2EndTime = LocalTime.of(11, 0);
		
		assertTrue(studentService.areConflict(day1, day1StartTime, day1EndTime, day2, day2StartTime, day2EndTime));
	}
	
	@Test
	void when_scheduleB_finishes_within_scheduleA_then_two_schedules_are_conflict_test() {		
		DayOfWeek day1 = DayOfWeek.MONDAY;
		LocalTime day1StartTime = LocalTime.of(9, 0);
		LocalTime day1EndTime = LocalTime.of(12, 0);
		
		DayOfWeek day2 = DayOfWeek.MONDAY;
		LocalTime day2StartTime = LocalTime.of(7, 0);
		LocalTime day2EndTime = LocalTime.of(10, 0);
		
		assertTrue(studentService.areConflict(day1, day1StartTime, day1EndTime, day2, day2StartTime, day2EndTime));
	}
	
	@Test
	void when_two_schedules_have_the_same_time_but_different_days_then_they_are_not_conflict_test() {
		DayOfWeek day1 = DayOfWeek.TUESDAY;
		LocalTime day1StartTime = LocalTime.of(9, 0);
		LocalTime day1EndTime = LocalTime.of(12, 0);
		
		DayOfWeek day2 = DayOfWeek.WEDNESDAY;
		LocalTime day2StartTime = LocalTime.of(9, 0);
		LocalTime day2EndTime = LocalTime.of(12, 0);
		
		assertFalse(studentService.areConflict(day1, day1StartTime, day1EndTime, day2, day2StartTime, day2EndTime));
	}
	
	@Test
	void when_section_is_full_then_SectionIsFullException_will_be_thrown_test() {
		int offeredCourseId = 10;
		OfferedCourse offeredCourse = offeredCourseRepository.findById(offeredCourseId).get();
		
		assertThrows(SectionIsFullException.class, () -> { 
			studentService.sectionIsFull(offeredCourse); 
		});
		
		int offeredCourseId2 = 11;
		OfferedCourse offeredCourse2 = offeredCourseRepository.findById(offeredCourseId2).get();
		
		assertDoesNotThrow(() -> {
			studentService.sectionIsFull(offeredCourse2);
		});
	}
	
	@Test
	void get_students_in_a_section_test() {
		int offeredCourseId = 10;
		int termId = 1;
		assertTrue(studentService.getStudentsInASection(offeredCourseId, termId).size() == 1);
	}
	
	@Test
	void get_degree_id_of_student_test() {
		int studentId = 5;
		assertTrue(studentService.getDegreeIdOfStudent(studentId) == 3);
	}
	
}
