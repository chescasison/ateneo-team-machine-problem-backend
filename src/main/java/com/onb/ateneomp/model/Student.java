package com.onb.ateneomp.model;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.util.StringUtils;

@Entity
public class Student extends User{
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "studentIdGenerator")
	private int id;
	
	@ManyToOne
	@JoinColumn(name = "degreeProgramId", referencedColumnName = "id")
	private Degree degreeProgram;
	
	private int yearLevel;
	private String status;
	
	protected Student() {}
	
	protected Student(String name, Degree degreeProgram, int yearLevel, String status) {
		super(name, "student");
		
		Objects.requireNonNull(degreeProgram, "degreeProgram must not be null");
		this.degreeProgram = degreeProgram;
		this.yearLevel = yearLevel;
		
		if (!StringUtils.hasText(status)) {
			throw new IllegalArgumentException();
		}
		this.status = status;
	}
	
	public int getId() {
		return id;
	}

	public Degree getDegreeProgram() {
		return degreeProgram;
	}

	public int getYearLevel() {
		return yearLevel;
	}

	public String getStatus() {
		return status;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", degreeProgram=" + degreeProgram + ", yearLevel="
				+ yearLevel + ", status=" + status + "]";
	}
	
	@Override
	public boolean equals(Object object) {
		if (this.id == ((Student)object).getId()) {
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
