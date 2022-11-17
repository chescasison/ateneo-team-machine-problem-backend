package com.onb.ateneomp.model;

import java.time.DayOfWeek;
import java.time.LocalTime;

public class EnrollmentAssessmentObject {
	private String name;
	private String status;
	private int yearLevel;
	private String degree;
	private String courseCode;
	private DayOfWeek day1;
	private LocalTime day1StartTime;
	private LocalTime day1endTime;
	private DayOfWeek day2;
	private LocalTime day2StartTime;
	private LocalTime day2EndTime;
	private int room;
	
	public EnrollmentAssessmentObject(String name, String status, int yearLevel, String degree, String courseCode,
			DayOfWeek day1, LocalTime day1StartTime, LocalTime day1endTime, DayOfWeek day2, LocalTime day2StartTime,
			LocalTime day2EndTime, int room) {
		super();
		this.name = name;
		this.status = status;
		this.yearLevel = yearLevel;
		this.degree = degree;
		this.courseCode = courseCode;
		this.day1 = day1;
		this.day1StartTime = day1StartTime;
		this.day1endTime = day1endTime;
		this.day2 = day2;
		this.day2StartTime = day2StartTime;
		this.day2EndTime = day2EndTime;
		this.room = room;
	}

	public String getName() {
		return name;
	}

	public String getStatus() {
		return status;
	}

	public int getYearLevel() {
		return yearLevel;
	}

	public String getDegree() {
		return degree;
	}

	public String getCourseCode() {
		return courseCode;
	}

	public DayOfWeek getDay1() {
		return day1;
	}

	public LocalTime getDay1StartTime() {
		return day1StartTime;
	}

	public LocalTime getDay1endTime() {
		return day1endTime;
	}

	public DayOfWeek getDay2() {
		return day2;
	}

	public LocalTime getDay2StartTime() {
		return day2StartTime;
	}

	public LocalTime getDay2EndTime() {
		return day2EndTime;
	}

	public int getRoom() {
		return room;
	}
	
	
}
