package com.onb.ateneomp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Faculty extends User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "facultyIdGenerator")
	private int id;
	
	protected Faculty() {}
	
	protected Faculty(String name) {
		super(name, "admin");
	}

	public int getId() {
		return id;
	}
	
	@Override
	public boolean equals(Object object) {
		if (this.id == ((Faculty)object).getId()) {
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
