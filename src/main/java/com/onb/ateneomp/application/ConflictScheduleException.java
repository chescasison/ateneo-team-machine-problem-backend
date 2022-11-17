package com.onb.ateneomp.application;

public class ConflictScheduleException extends RuntimeException {
	
	public ConflictScheduleException() {
		super("Cannot add section because of schedule conflict.");
	}

}
