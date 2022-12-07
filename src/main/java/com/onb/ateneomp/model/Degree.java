package com.onb.ateneomp.model;

import java.util.Objects;
import java.util.Set;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import org.springframework.util.StringUtils;

@Entity
public class Degree {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "degreeIdGenerator")
	private int id;
	
	private String name;
	
	@ElementCollection
	@ManyToMany(fetch = FetchType.LAZY)
	private Set<Course> courses;
	
	protected Degree() {}
	
	protected Degree(int id, String name, Set<Course> courses) {
		this.id = id;

		if (!StringUtils.hasText(name)) {
			throw new IllegalArgumentException();
		}
		this.name = name;
		
		Objects.requireNonNull(courses, "Courses must not be null");
		this.courses = courses;
		
	}

	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	@Override
	public String toString() {
		return "Degree [id=" + id + ", name=" + name + ", courses=" + courses.toString() + "]";
	}
	
	@Override
	public boolean equals(Object object) {
		if (this.id == ((Degree)object).getId()) {
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
