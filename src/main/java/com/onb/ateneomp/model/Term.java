package com.onb.ateneomp.model;

import java.time.LocalDate;
import java.util.Objects;

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
	
	protected Term() {}
	
	protected Term(int termNumber, LocalDate startYear, LocalDate endYear) {
		
		this.termNumber = termNumber;
		
		Objects.requireNonNull(startYear, "startYear must not be null");
		this.startYear = startYear;
		
		Objects.requireNonNull(endYear, "endYear must not be null");
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
	
	@Override
	public boolean equals(Object object) {
		if (this.id == ((Term)object).getId()) {
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
