package com.onb.ateneomp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.util.StringUtils;

@Entity
public class Section {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sectionIdGenerator")
	private int id;
	
	private String sectionCode;
	private int numberOfSeats;

	protected Section() {}

	protected Section(String sectionCode, int numberOfSeats) {
		
		if (!StringUtils.hasText(sectionCode)) {
			throw new IllegalArgumentException();
		}
		
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
	
	@Override
	public boolean equals(Object object) {
		if (this.id == ((Section)object).getId()) {
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
