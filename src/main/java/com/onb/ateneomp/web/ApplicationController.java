package com.onb.ateneomp.web;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
public class ApplicationController {

	private static final Logger LOGGER = LoggerFactory.getLogger(StudentController.class);
	
	@GetMapping("user/login")
	public String login() {
		SecurityContextHolder.getContext().getAuthentication();
		// LOGGER.info("Logged in!");
		return "Logged in";
	}
	
	@RequestMapping("user/logout")
	public String logout() {
		SecurityContextHolder.getContext().setAuthentication(null);
		// LOGGER.info("Successfully logged out");
		return "successfully logged out";
	}

	@GetMapping("api/user/role")
	public String getRoleOfUser() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String role = authentication.getAuthorities().toString();
		return role;
	}


}
