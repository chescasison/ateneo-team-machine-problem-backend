package com.onb.ateneomp.application;

import java.time.DayOfWeek;
import java.time.LocalTime;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.onb.ateneomp.model.Enrollment;
import com.onb.ateneomp.model.OfferedCourse;
import com.onb.ateneomp.model.Schedule;
import com.onb.ateneomp.model.Section;
import com.onb.ateneomp.model.Student;
import com.onb.ateneomp.model.StudentDto;
import com.onb.ateneomp.repository.EnrollmentRepository;
import com.onb.ateneomp.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentRepository studentRepository;

	@Autowired
	private EnrollmentRepository enrollmentRepository;

	@Autowired
	private OfferedCourseService offeredCourseService;

	@Override
	@Transactional(readOnly = true)
	public Student getStudent(int studentId) {
		return studentRepository.findById(studentId).get();
	}

	@Override
	@Transactional(readOnly = true)
	public List<StudentDto> getAllStudents() {
		return ((List<Student>) studentRepository.findAll()).stream()
				.map(this::convertStudentToDto).collect(Collectors.toList());
	}
	
	private StudentDto convertStudentToDto(Student student) {
		StudentDto studentDto = new StudentDto();
		
		studentDto.setId(student.getId());
		studentDto.setDegreeProgram(student.getDegreeProgram().getName());
		studentDto.setName(student.getName());
		studentDto.setYearlLevel(student.getYearLevel());
		
		return studentDto;
	}

	@Override
	@Transactional
	public void enrollStudentToCourse(Enrollment enrollment) throws ConflictScheduleException, SectionIsFullException {
		OfferedCourse enrolledCourse = enrollment.getEnrolledCourse();
		Student student = enrollment.getStudent();
		
		sectionHasConflict(enrolledCourse, student);
		sectionIsFull(enrolledCourse);
		
		enrollmentRepository.save(enrollment);
	}

	@Override
	@Transactional
	public void updateSectionOfStudent(int enrollmentId, int newOfferedCourseId) {
		Enrollment enrollment = enrollmentRepository.findById(enrollmentId).get();
		Student student = enrollment.getStudent();
		
		OfferedCourse newOfferedCourse = offeredCourseService.getOfferedCourse(newOfferedCourseId);
		sectionHasConflict(newOfferedCourse, student);
		sectionIsFull(newOfferedCourse);
		
		enrollment.enroll(newOfferedCourse);
		enrollmentRepository.save(enrollment);
	}

	@Override
	@Transactional
	public void deleteCourseOfStudent(int offeredCourseId, int studentId) {
		OfferedCourse course = offeredCourseService.getOfferedCourse(offeredCourseId);
		Student student = studentRepository.findById(studentId).get();
		
		Enrollment enrollment = enrollmentRepository.findByStudentAndEnrolledCourse(student, course).get();
		enrollmentRepository.delete(enrollment);
	}

	@Override
	@Transactional(readOnly = true)
	public List<OfferedCourse> getEnrolledCoursesOfStudent(int studentId, int termId) {
		List<Integer> enrolledCoursesIds = enrollmentRepository.getEnrolledCoursesOfStudent(studentId, termId);
		
		return offeredCourseService.getOfferedCourses(enrolledCoursesIds);
	}

	public void sectionHasConflict(OfferedCourse offeredCourse, Student student) throws ConflictScheduleException {
		Schedule offeredCourseSchedule = offeredCourse.getSchedule();
		
		DayOfWeek offeredDay1 = offeredCourseSchedule.getDay1();
		LocalTime offeredDay1StartTime = offeredCourseSchedule.getDay1StartTime();
		LocalTime offeredDay1EndTime = offeredCourseSchedule.getDay1EndTime();
		
		DayOfWeek offeredDay2 = offeredCourseSchedule.getDay2();
		LocalTime offeredDay2StartTime = offeredCourseSchedule.getDay2StartTime();
		LocalTime offeredDay2EndTime = offeredCourseSchedule.getDay2EndTime();

		int studentId = student.getId();
		int termId = offeredCourse.getTerm().getId();
		List<OfferedCourse> enrolledCourses = offeredCourseService.getOfferedCourses(enrollmentRepository.getEnrolledCoursesOfStudent(studentId, termId));
		
		for (OfferedCourse enrolledCourse : enrolledCourses) {
			if (offeredCourse.getCourse().getId() != enrolledCourse.getCourse().getId()) {
				Schedule enrolledCourseSchedule = enrolledCourse.getSchedule();
				
				DayOfWeek enrolledDay1 = enrolledCourseSchedule.getDay1();
				LocalTime enrolledDay1StartTime = enrolledCourseSchedule.getDay1StartTime();
				LocalTime enrolledDay1EndTime = enrolledCourseSchedule.getDay1EndTime();
				DayOfWeek enrolledDay2 = enrolledCourseSchedule.getDay2();
				LocalTime enrolledDay2StartTime = enrolledCourseSchedule.getDay2StartTime();
				LocalTime enrolledDay2EndTime = enrolledCourseSchedule.getDay2EndTime();
				
				if (areConflict(enrolledDay1, enrolledDay1StartTime, enrolledDay1EndTime,
						offeredDay1, offeredDay1StartTime, offeredDay1EndTime) ||
						areConflict(enrolledDay1, enrolledDay1StartTime, enrolledDay1EndTime,
								offeredDay2, offeredDay2StartTime, offeredDay2EndTime) ||
						areConflict(enrolledDay2, enrolledDay2StartTime, enrolledDay2EndTime,
								offeredDay1, offeredDay1StartTime, offeredDay1EndTime) ||
						areConflict(enrolledDay2, enrolledDay2StartTime, enrolledDay2EndTime,
								offeredDay2, offeredDay2StartTime, offeredDay2EndTime)) {
					throw new ConflictScheduleException();
				}
			}
		}
	}

	public boolean areConflict(DayOfWeek day1, LocalTime startTime1, LocalTime endTime1,
			DayOfWeek day2, LocalTime startTime2, LocalTime endTime2) {
		if (day1 == null || day2 == null) {
			return false;
		}
		
		if (day1 == day2) {
			return startTime1.isBefore(endTime2) && endTime1.isAfter(startTime2);
		} else {
			return false;
		}
	}

	public void sectionIsFull(OfferedCourse offeredCourse) throws SectionIsFullException {
		int termId = offeredCourse.getTerm().getId();
		
		Section section = offeredCourse.getSection();
		int sectionId = offeredCourse.getSection().getId();
		
		int takenSeats = enrollmentRepository.getTakenSeatsOfASection(sectionId, termId);
		int numberOfSeats = section.getNumberOfSeats();
		
		if (takenSeats == numberOfSeats) {
			throw new SectionIsFullException();
		}
	}

	@Override
	@Transactional(readOnly = true)
	public List<StudentDto> getStudentsInASection(int offeredCourseId, int termId) {
		List<Integer> studentIds = enrollmentRepository.getEnrolledStudentsInTheCourse(offeredCourseId, termId);
		return ((List<Student>) studentRepository.findAllById(studentIds)).stream()
				.map(this::convertStudentToDto).collect(Collectors.toList());
	}

	@Override
	@Transactional(readOnly = true)
	public int getDegreeIdOfStudent(int studentId) {
		return studentRepository.getDegreeIdOfStudent(studentId);
	}

}
