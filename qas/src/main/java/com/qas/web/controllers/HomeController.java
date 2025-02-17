package com.qas.web.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@GetMapping("/")
	public String home(Locale locale, Model model) {
		logger.info("홈화면", locale);
		model.addAttribute("serverTime", 
				DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale)
				.format(new Date()) );
		return "main/Home.tiles";
	}
}