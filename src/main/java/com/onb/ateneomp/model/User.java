package com.onb.ateneomp.model;

import javax.persistence.MappedSuperclass;

import org.springframework.util.StringUtils;

@MappedSuperclass
public class User {
	
	private String name;
	private String role;
	
	protected User() {}
	
	protected User(String name, String role) {
		
		if (!StringUtils.hasText(name) || !StringUtils.hasText(role)) {
			throw new IllegalArgumentException();
		}
		
		this.name = name;
		this.role = role;
	}

	public String getName() {
		return name;
	}

	public String getRole() {
		return role;
	}

	@Override
	public String toString() {
		return "User [ name=" + name + ", role=" + role + "]";
	}
	
	@Override
	public boolean equals(Object object) {
		String name = ((User) object).getName();
		String role = ((User) object).getRole();
		if (this.name.equals(name) && this.role.equals(role)) {
			return true;
		}
		else {
			return false;
		}
	}
	
    @Override
    public int hashCode() {
        int result = 17;
        result =  31 * result + name.hashCode();
        result = 31 * result + role.hashCode();
        return result;
    }
}
