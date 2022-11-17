package com.onb.ateneomp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Section {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sectionIdGenerator")
	private int id;
	
	private String sectionCode;
	private int numberOfSeats;

	public Section() {}

	public Section(String sectionCode, int numberOfSeats) {
		super();
		this.sectionCode = sectionCode;
		this.numberOfSeats = numberOfSeats;
	}
	
	public int getId() {
		return id;
	}

	public int getNumberOfSeats() {
		return numberOfSeats;
	}
	
	@Override
	public String toString() {
		return "Section [id=" + id + ", sectionCode=" + sectionCode + " numberOfSeats="
				+ numberOfSeats + "]";
	}
	
}
