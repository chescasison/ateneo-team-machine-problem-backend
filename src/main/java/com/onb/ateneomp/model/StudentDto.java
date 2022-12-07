package com.onb.ateneomp.model;

public class StudentDto {
	
	private int id;
	private String name;
	private String degreeProgram;
	private int yearlLevel;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDegreeProgram() {
		return degreeProgram;
	}
	public void setDegreeProgram(String degreeProgram) {
		this.degreeProgram = degreeProgram;
	}
	public int getYearlLevel() {
		return yearlLevel;
	}
	public void setYearlLevel(int yearlLevel) {
		this.yearlLevel = yearlLevel;
	}
	
}
