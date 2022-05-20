package es.berzal.jasypt.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class JasyptService {
	
	@Value("${login.user}")
	private String user;
	
	@Value("${login.pass}")
	private String pass;	
	
	public String login() {		
		return user +" : "+ pass;	
	}
}
