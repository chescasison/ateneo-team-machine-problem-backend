package com.onb.ateneomp.model;

import java.util.Objects;

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
	
	protected OfferedCourse() {}

	public OfferedCourse(Course course, Section section, Term term) {
		Objects.requireNonNull(course, "Course must not be null");
		this.course = course;
		
		Objects.requireNonNull(section, "Section must not be null");
		this.section = section;
		
		Objects.requireNonNull(term, "Term must not be null");
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

	@Override
	public boolean equals(Object object) {
		if (this.id == ((OfferedCourse)object).getId()) {
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
