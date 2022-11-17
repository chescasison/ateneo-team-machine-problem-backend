package com.onb.ateneomp.model;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Term {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "termIdGenerator")
	private int id;
	private int termNumber;
	private LocalDate startYear;
	private LocalDate endYear;
	
	public Term() {}
	
	public Term(int termNumber, LocalDate startYear, LocalDate endYear) {
		this.termNumber = termNumber;
		this.startYear = startYear;
		this.endYear = endYear;
	}

	public int getId() {
		return id;
	}

	public int getTermNumber() {
		return termNumber;
	}

	public LocalDate getStartYear() {
		return startYear;
	}

	public LocalDate getEndYear() {
		return endYear;
	}

	@Override
	public String toString() {
		return "Term [id=" + id + ", termNumber=" + termNumber + ", startYear=" + startYear + ", endYear=" + endYear
				+ "]";
	}

}
