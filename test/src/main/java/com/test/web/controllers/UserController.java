package com.test.web.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.test.web.domains.User;
import com.test.web.enums.Messenger;
import com.test.web.services.UserService;

@RestController
@RequestMapping("/users")
public class UserController {
	@Autowired UserService userService;
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@PostMapping("/joinProcess")
	public Messenger joinProcess(@RequestBody User user) {
		logger.info(user.toString());
		return Messenger.SUCCESS;
	}

	@PostMapping("/loginProcess")
	public Messenger loginProcess(@RequestBody User user) {
		logger.info(user.toString());
		return Messenger.SUCCESS;
	}
}