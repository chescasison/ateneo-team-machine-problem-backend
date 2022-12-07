package com.onb.ateneomp.application;

public class ConflictScheduleException extends EnrollmentException {
	
	private final String MESSAGE = "Cannot add section because of schedule conflict.";
	
	@Override
	public String getMessage() {
		return MESSAGE;
	}
}
