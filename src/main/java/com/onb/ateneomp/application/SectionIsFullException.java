package com.onb.ateneomp.application;

public class SectionIsFullException extends RuntimeException{
	public SectionIsFullException() {
		super("Section is already full.");
	}
}
