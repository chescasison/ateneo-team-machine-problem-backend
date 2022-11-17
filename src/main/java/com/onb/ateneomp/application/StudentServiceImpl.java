package com.onb.ateneomp.application;

import java.time.DayOfWeek;
import java.time.LocalTime;
import java.util.List;
import java.util.Optional;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import com.onb.ateneomp.model.Enrollment;
import com.onb.ateneomp.model.OfferedCourse;
import com.onb.ateneomp.model.Schedule;
import com.onb.ateneomp.model.Section;
import com.onb.ateneomp.model.Student;
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
	public Student getStudent(int studentId) {
		Optional<Student> student = studentRepository.findById(studentId);
		if (student.isPresent()) return student.get();
		else throw new IllegalArgumentException("Student does not exist.");
	}

	@Override
	public List<Student> getAllStudents() {
		List<Student> students = (List<Student>) studentRepository.findAll();
		return students;
	}

	@Override
	@Transactional
	public boolean enrollStudentToCourse(Enrollment enrollment) throws ConflictScheduleException, SectionIsFullException {
		OfferedCourse enrolledCourse = enrollment.getEnrolledCourse();
		int studentId = enrollment.getStudent().getId();
		sectionHasConflict(enrolledCourse.getId(), studentId, enrollment.getEnrolledCourse().getTerm().getId());
		sectionIsFull(enrollment.getEnrolledCourse().getId());
		enrollmentRepository.save(enrollment);
		return true;
	}

	@Override
	@Transactional
	public void updateSectionOfStudent(int enrollmentId, int newOfferedCourseId, int termId) {
		Optional<Enrollment> optionalEnrollment = enrollmentRepository.findById(enrollmentId);
		if (optionalEnrollment.isEmpty()) throw new IllegalArgumentException("Enrollment does not exist.");
		Enrollment enrollment = optionalEnrollment.get();
		OfferedCourse newOfferedCourse = offeredCourseService.getOfferedCourse(newOfferedCourseId);
		int studentId = enrollment.getStudent().getId();
		sectionHasConflict(newOfferedCourse.getId(), studentId, termId);
		sectionIsFull(newOfferedCourseId);
		enrollment.setEnrolledCourse(newOfferedCourse);
		enrollmentRepository.save(enrollment);
	}

	@Override
	@Transactional
	public void deleteCourseOfStudent(int offeredCourseId, int studentId) {
		OfferedCourse course = offeredCourseService.getOfferedCourse(offeredCourseId);
		Student student = studentRepository.findById(studentId).get();
		Optional<Enrollment> enrollment = enrollmentRepository.findByStudentAndEnrolledCourse(student, course);
		if (enrollment.isEmpty()) throw new IllegalArgumentException("Enrollment does not exist.");
		enrollmentRepository.delete(enrollment.get());
	}

	@Override
	public List<OfferedCourse> getEnrolledCoursesOfAStudent(int studentId, int termId) {
		List<Integer> enrolledCoursesIds = enrollmentRepository.getEnrolledCoursesOfStudent(studentId, termId);
		List<OfferedCourse> enrolledCourses = offeredCourseService.getOfferedCourses(enrolledCoursesIds);
		return enrolledCourses;
	}

	public void sectionHasConflict(int offeredCourseId, int studentId, int termId) throws ConflictScheduleException {
		OfferedCourse offeredCourse = offeredCourseService.getOfferedCourse(offeredCourseId);
		Schedule offeredCourseSchedule = offeredCourse.getSchedule();
		
		DayOfWeek offeredDay1 = offeredCourseSchedule.getDay1();
		LocalTime offeredDay1StartTime = offeredCourseSchedule.getDay1StartTime();
		LocalTime offeredDay1EndTime = offeredCourseSchedule.getDay1EndTime();
		DayOfWeek offeredDay2 = offeredCourseSchedule.getDay2();
		LocalTime offeredDay2StartTime = offeredCourseSchedule.getDay2StartTime();
		LocalTime offeredDay2EndTime = offeredCourseSchedule.getDay2EndTime();
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

	private boolean areConflict(DayOfWeek day1, LocalTime startTime1, LocalTime endTime1,
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

	public void sectionIsFull(int offeredCourseId) throws SectionIsFullException {
		OfferedCourse offeredCourse = offeredCourseService.getOfferedCourse(offeredCourseId);
		Section section = offeredCourse.getSection();
		int sectionId = section.getId();
		int termId = offeredCourse.getTerm().getId();
		int takenSeats = enrollmentRepository.getTakenSeatsOfASection(sectionId, termId);
		int numberOfSeats = section.getNumberOfSeats();
		if (takenSeats == numberOfSeats) throw new SectionIsFullException();
	}

	@Override
	public List<Student> getStudentsInASection(int offeredCourseId, int termId) {
		List<Integer> studentIds = enrollmentRepository.getEnrolledStudentsInTheCourse(offeredCourseId, termId);
		List<Student> students = (List<Student>) studentRepository.findAllById(studentIds);
		return students;
	}

	@Override
	public int getDegreeIdOfStudent(int studentId) {
		return studentRepository.getDegreeIdOfStudent(studentId);
	}

}
