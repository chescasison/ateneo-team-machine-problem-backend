package com.onb.ateneomp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Room {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "roomIdGenerator")
	private int id;

	public Room() {}
	
}
