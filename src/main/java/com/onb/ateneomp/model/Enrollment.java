package com.onb.ateneomp.model;

import java.util.Objects;

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
	
	protected Enrollment() {}

	public Enrollment(Student student, OfferedCourse enrolledCourse) {
		Objects.requireNonNull(student, "Student must not be null");		
		this.student = student;
		
		Objects.requireNonNull(enrolledCourse, "EnrolledCourse must not be null");
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

	public void enroll(OfferedCourse enrolledCourse) {
		this.enrolledCourse = enrolledCourse;
	}

	@Override
	public String toString() {
		return "Enrollment [id=" + id + ", student=" + student + ", enrolledCourse=" + enrolledCourse + "]";
	}
	
	@Override
	public boolean equals(Object object) {
		if (this.id == ((Enrollment)object).getId()) {
			return true;
		}
		else {
			return false;
		}
	}
	
    @Override
    public int hashCode() {
        int result = 17;
        return 31 * result + this.id;
    }
}
