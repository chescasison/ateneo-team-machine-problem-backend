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
	
	public Faculty() {}
	
	public Faculty(String name) {
		super(name, "admin");
	}

	public int getId() {
		return id;
	}
	
}
