package com.onb.ateneomp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Enrollment {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "offeredCourseIdGenerator")
	private int id;
	
	@ManyToOne
	@JoinColumn(name = "studentId")
	private Student student;
	
	@ManyToOne
	@JoinColumn(name = "offeredCourseId")
	private OfferedCourse enrolledCourse;
	
	public Enrollment() {}

	public Enrollment(Student student, OfferedCourse enrolledCourse) {
		this.student = student;
		this.enrolledCourse = enrolledCourse;
	}

	public int getId() {
		return id;
	}

	public Student getStudent() {
		return student;
	}

	public OfferedCourse getEnrolledCourse() {
		return enrolledCourse;
	}

	public void setEnrolledCourse(OfferedCourse enrolledCourse) {
		this.enrolledCourse = enrolledCourse;
	}

	@Override
	public String toString() {
		return "Enrollment [id=" + id + ", student=" + student + ", enrolledCourse=" + enrolledCourse + "]";
	}
	
}
