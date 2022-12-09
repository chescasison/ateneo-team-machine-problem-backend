package com.onb.ateneomp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.util.StringUtils;

@Entity
public class Course {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "courseIdGenerator")
	private int id;
	
	@Column(unique=true)
	private String courseCode;
	
	private String courseDescription;
	private int units;
	
	protected Course() {}

	public Course(int id, String courseCode, String courseDescription, int units) {
		this.id = id;
		this.units = units;
		
		if (!StringUtils.hasText(courseCode) || !StringUtils.hasText(courseDescription)) {
			throw new IllegalArgumentException();
		}
		
		this.courseCode = courseCode;
		this.courseDescription = courseDescription;
	}

	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		return "Course [id=" + id + ", courseCode=" + courseCode + ", courseDescription=" + courseDescription
				+ ", units=" + units + "]";
	}
	
	@Override
	public boolean equals(Object object) {
		if (this.id == ((Course)object).getId()) {
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
