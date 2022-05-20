package es.berzal.jasypt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import es.berzal.jasypt.service.JasyptService;

@RestController
public class JasyptController {

	@Autowired
	JasyptService service;
	
	@GetMapping("/login")
	public ResponseEntity<String> getSecret() {
		return ResponseEntity.ok(service.login());
	}

}
