package com.onb.ateneomp.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

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
	
	public Student() {}
	
	public Student(String name, Degree degreeProgram, int yearLevel, String status) {
		super(name, "student");
		this.degreeProgram = degreeProgram;
		this.yearLevel = yearLevel;
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
	
}
