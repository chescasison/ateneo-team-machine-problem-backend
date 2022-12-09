package com.onb.ateneomp;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.spy;
import static org.mockito.Mockito.when;

import java.time.DayOfWeek;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;
import org.mockito.junit.MockitoJUnitRunner;

import com.onb.ateneomp.application.ConflictScheduleException;
import com.onb.ateneomp.application.OfferedCourseService;
import com.onb.ateneomp.application.SectionIsFullException;
import com.onb.ateneomp.application.StudentServiceImpl;
import com.onb.ateneomp.model.Course;
import com.onb.ateneomp.model.OfferedCourse;
import com.onb.ateneomp.model.Schedule;
import com.onb.ateneomp.model.Section;
import com.onb.ateneomp.model.Student;
import com.onb.ateneomp.model.Term;
import com.onb.ateneomp.repository.EnrollmentRepository;
import com.onb.ateneomp.repository.OfferedCourseRepository;
import com.onb.ateneomp.repository.StudentRepository;

@RunWith(MockitoJUnitRunner.class)
public class StudentServiceTest {

	@Mock
	OfferedCourseRepository offeredCourseRepository;
	
	@Mock
	OfferedCourseService offeredCourseService;
	
	@Mock
	StudentRepository studentRepository;
	
	@Mock
	EnrollmentRepository enrollmentRepository;
	
	@InjectMocks
	StudentServiceImpl studentService;
	
	@Spy
	private List<Student> parts = new ArrayList<>();
	
	@BeforeEach
	public void setup(){
	    MockitoAnnotations.openMocks(this);
	}

	@Test
	void sectionHasConflict_hasConflict_throwConflictScheduleException() {
		int studentId = 4;
		Student student = mock(Student.class);
		when(student.getId()).thenReturn(studentId);

		OfferedCourse offeredCourse = mock(OfferedCourse.class);
		Schedule offeredCourseSchedule = mock(Schedule.class);
		
		Course course = mock(Course.class);
		when(offeredCourse.getCourse()).thenReturn(course);
		when(course.getId()).thenReturn(1);
		
		when(offeredCourse.getSchedule()).thenReturn(offeredCourseSchedule);
		
		when(offeredCourseSchedule.getDay1()).thenReturn(DayOfWeek.MONDAY);
		when(offeredCourseSchedule.getDay1StartTime()).thenReturn(LocalTime.of(9,0));
		when(offeredCourseSchedule.getDay1EndTime()).thenReturn(LocalTime.of(11,0));
		when(offeredCourseSchedule.getDay2()).thenReturn(DayOfWeek.WEDNESDAY);
		when(offeredCourseSchedule.getDay2StartTime()).thenReturn(LocalTime.of(9,0));
		when(offeredCourseSchedule.getDay2EndTime()).thenReturn(LocalTime.of(11,0));
		
		Term term = mock(Term.class);
		int termId = 1;
		when(offeredCourse.getTerm()).thenReturn(term);
		when(term.getId()).thenReturn(termId);
		
		List<OfferedCourse> enrolledCourses = spy(new ArrayList<>());
		OfferedCourse enrolledCourse = mock(OfferedCourse.class);
		enrolledCourses.add(enrolledCourse);
		
		Course course2 = mock(Course.class);
		when(enrolledCourse.getCourse()).thenReturn(course2);
		when(course2.getId()).thenReturn(2);
		
		List<Integer> enrolledCourseIds = mock(ArrayList.class);
		when(enrollmentRepository.getEnrolledCoursesOfStudent(studentId, termId)).thenReturn(enrolledCourseIds);
		when(offeredCourseService.getOfferedCourses(enrolledCourseIds)).thenReturn(enrolledCourses);
		
		Schedule enrolledCourseSchedule = mock(Schedule.class);
		when(enrolledCourse.getSchedule()).thenReturn(enrolledCourseSchedule);
		
		when(enrolledCourseSchedule.getDay1()).thenReturn(DayOfWeek.MONDAY);
		when(enrolledCourseSchedule.getDay1StartTime()).thenReturn(LocalTime.of(9,0));
		when(enrolledCourseSchedule.getDay1EndTime()).thenReturn(LocalTime.of(11,0));
		when(enrolledCourseSchedule.getDay2()).thenReturn(DayOfWeek.WEDNESDAY);
		when(enrolledCourseSchedule.getDay2StartTime()).thenReturn(LocalTime.of(9,0));
		when(enrolledCourseSchedule.getDay2EndTime()).thenReturn(LocalTime.of(11,0));

		assertThatThrownBy(() -> {
			studentService.sectionHasConflict(offeredCourse, student);
		}).isInstanceOf(ConflictScheduleException.class);
	}
	
	@Test
	void sectionIsFull_numberOfSeatsIsEqualToTakenSeats_throwSectionIsFullException() {
		int termId = 1;
		int sectionId = 6;
		int numberOfSeats = 1;
		int takenSeats = 1;
		
		OfferedCourse offeredCourse = mock(OfferedCourse.class);
		
		Term term = mock(Term.class);
		when(offeredCourse.getTerm()).thenReturn(term);
		when(term.getId()).thenReturn(termId);
		
		Section section = mock(Section.class);
		when(offeredCourse.getSection()).thenReturn(section);
		when(section.getId()).thenReturn(sectionId);
		when(section.getNumberOfSeats()).thenReturn(numberOfSeats);
		
		when(enrollmentRepository.getTakenSeatsOfASection(sectionId, termId)).thenReturn(takenSeats);
		
		assertThatThrownBy(() -> {
			studentService.sectionIsFull(offeredCourse);
		}).isInstanceOf(SectionIsFullException.class);
		
	}
	
	@Test
	void when_scheduleB_starts_before_scheduleA_then_two_schedules_are_conflict_test() {
		DayOfWeek day1 = DayOfWeek.MONDAY;
		LocalTime day1StartTime = LocalTime.of(9, 0);
		LocalTime day1EndTime = LocalTime.of(11, 0);
		
		DayOfWeek day2 = DayOfWeek.MONDAY;
		LocalTime day2StartTime = LocalTime.of(10, 0);
		LocalTime day2EndTime = LocalTime.of(12, 0);
		
		assertThat(studentService.areConflict(day1, day1StartTime, day1EndTime, day2, day2StartTime, day2EndTime)).isTrue();
	}
	
	@Test
	void when_scheduleB_is_within_scheduleA_then_two_schedules_are_conflict_test() {
		DayOfWeek day1 = DayOfWeek.MONDAY;
		LocalTime day1StartTime = LocalTime.of(7, 0);
		LocalTime day1EndTime = LocalTime.of(12, 0);

		DayOfWeek day2 = DayOfWeek.MONDAY;
		LocalTime day2StartTime = LocalTime.of(9, 0);
		LocalTime day2EndTime = LocalTime.of(11, 0);
		
		assertThat(studentService.areConflict(day1, day1StartTime, day1EndTime, day2, day2StartTime, day2EndTime)).isTrue();
	}

	@Test
	void when_scheduleB_finishes_within_scheduleA_then_two_schedules_are_conflict_test() {		
		DayOfWeek day1 = DayOfWeek.MONDAY;
		LocalTime day1StartTime = LocalTime.of(9, 0);
		LocalTime day1EndTime = LocalTime.of(12, 0);
		
		DayOfWeek day2 = DayOfWeek.MONDAY;
		LocalTime day2StartTime = LocalTime.of(7, 0);
		LocalTime day2EndTime = LocalTime.of(10, 0);
		
		assertThat(studentService.areConflict(day1, day1StartTime, day1EndTime, day2, day2StartTime, day2EndTime)).isTrue();
	}

	@Test
	void when_two_schedules_have_the_same_time_but_different_days_then_they_are_not_conflict_test() {
		DayOfWeek day1 = DayOfWeek.TUESDAY;
		LocalTime day1StartTime = LocalTime.of(9, 0);
		LocalTime day1EndTime = LocalTime.of(12, 0);
		
		DayOfWeek day2 = DayOfWeek.WEDNESDAY;
		LocalTime day2StartTime = LocalTime.of(9, 0);
		LocalTime day2EndTime = LocalTime.of(12, 0);
		
		assertThat(studentService.areConflict(day1, day1StartTime, day1EndTime, day2, day2StartTime, day2EndTime)).isFalse();
	}

}
