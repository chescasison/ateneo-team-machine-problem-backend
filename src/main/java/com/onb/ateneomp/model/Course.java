package com.onb.ateneomp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Course {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "courseIdGenerator")
	private int id;
	private String courseCode;
	private String courseDescription;
	private int units;
	
	public Course() {}

	public Course(int id, String courseCode, String courseDescription, int units) {
		super();
		this.id = id;
		this.courseCode = courseCode;
		this.courseDescription = courseDescription;
		this.units = units;
	}


	public String getCourseCode() {
		return courseCode;
	}

	public int getId() {
		return id;
	}

	public String getCourseDescription() {
		return courseDescription;
	}

	public int getUnits() {
		return units;
	}

	@Override
	public String toString() {
		return "Course [id=" + id + ", courseCode=" + courseCode + ", courseDescription=" + courseDescription
				+ ", units=" + units + "]";
	}
	
}
