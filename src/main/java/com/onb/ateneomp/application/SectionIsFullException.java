package com.onb.ateneomp.application;

public class SectionIsFullException extends EnrollmentException{
	private final String MESSAGE = "Section is already full.";
	
	@Override
	public String getMessage() {
		return MESSAGE;
	}
}
