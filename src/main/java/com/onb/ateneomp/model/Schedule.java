package com.onb.ateneomp.model;

import java.time.DayOfWeek;
import java.time.LocalTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Schedule {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "scheduleIdGenerator")
	private int id;
	private LocalTime day1StartTime;
	private LocalTime day1EndTime;
	private DayOfWeek day1;
	
	private DayOfWeek day2;
	private LocalTime day2StartTime;
	private LocalTime day2EndTime;
	
	public Schedule() {}

	public Schedule(int id, LocalTime day1StartTime, LocalTime day1EndTime, DayOfWeek day1, DayOfWeek day2,
			LocalTime day2StartTime, LocalTime day2EndTime) {
		this.id = id;
		this.day1StartTime = day1StartTime;
		this.day1EndTime = day1EndTime;
		this.day1 = day1;
		this.day2 = day2;
		this.day2StartTime = day2StartTime;
		this.day2EndTime = day2EndTime;
	}
	
	public int getId() {
		return id;
	}

	public LocalTime getDay1StartTime() {
		return day1StartTime;
	}

	public LocalTime getDay1EndTime() {
		return day1EndTime;
	}

	public DayOfWeek getDay1() {
		return day1;
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

	@Override
	public String toString() {
		return "Schedule [id=" + id + ", day1StartTime=" + day1StartTime + ", day1EndTime=" + day1EndTime + ", day1="
				+ day1 + ", day2=" + day2 + ", day2StartTime=" + day2StartTime + ", day2EndTime=" + day2EndTime + "]";
	}

}
