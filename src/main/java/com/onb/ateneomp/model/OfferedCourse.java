package com.onb.ateneomp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class OfferedCourse {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "offeredCourseIdGenerator")
	private int id;
	
	@ManyToOne
	@JoinColumn(name = "courseId")
	private Course course;
	
	@ManyToOne
	@JoinColumn(name = "sectionId")
	private Section section;
	
	@ManyToOne
	@JoinColumn(name = "scheduleId")
	private Schedule schedule;
	
	@ManyToOne
	@JoinColumn(name = "roomId")
	private Room room;
		
	@ManyToOne
	@JoinColumn(name = "termId")
	private Term term;
	
	public OfferedCourse() {}
	
	public OfferedCourse(Course course, Section section, Term term) {
		this.course = course;
		this.section = section;
		this.term = term;
	}

	public int getId() {
		return id;
	}
	
	public Course getCourse() {
		return course;
	}

	public Section getSection() {
		return section;
	}

	public Term getTerm() {
		return term;
	}

	public Schedule getSchedule() {
		return schedule;
	}

	public Room getRoom() {
		return room;
	}

	@Override
	public String toString() {
		return "OfferedCourse [id=" + id + ", course=" + course + ", section=" + section + ", term=" + term
				+ ", schedule=" + schedule + ", room=" + room + "]";
	}

	

}
