package com.onb.ateneomp.model;

import java.util.Set;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Degree {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "degreeIdGenerator")
	private int id;
	
	private String name;
	
	@ElementCollection
	@ManyToMany(fetch = FetchType.LAZY)
	private Set<Course> courses;
	
	public Degree() {}
	
	public Degree(int id, String name, Set<Course> courses) {
		super();
		this.id = id;
		this.name = name;
		this.courses = courses;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public Set<Course> getCourses() {
		return courses;
	}

	@Override
	public String toString() {
		return "Degree [id=" + id + ", name=" + name + ", courses=" + courses.toString() + "]";
	}
	
}
