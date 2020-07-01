package com.qas.web.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/users")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("/join/form")
	public String joinForm() {
		logger.info("회원가입");
		return "Join";
	}
	
	@GetMapping("/main")
	public String main() {
		logger.info("메인");
		return "DeshBoard";
	}

}
