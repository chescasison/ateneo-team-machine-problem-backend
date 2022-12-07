package com.onb.ateneomp.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfiguration extends WebSecurityConfigurerAdapter {
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				.mvcMatchers("api/admin/**").hasRole("admin")
				.mvcMatchers("api/student/**").hasRole("student")
				.mvcMatchers("/**").authenticated()
				.and()
			      .formLogin()
			      .loginPage("/user/login")
				.and()
					.logout()
					.logoutSuccessUrl("/user/logout")
				.and()
					.httpBasic().and()
					.csrf().disable();
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		auth.inMemoryAuthentication()
			.withUser("faculty123")
				.password(passwordEncoder.encode("admin_password")).roles("admin", "student")
			.and()
			.withUser("student123")
				.password(passwordEncoder.encode("student_password")).roles("student");
	}
}
