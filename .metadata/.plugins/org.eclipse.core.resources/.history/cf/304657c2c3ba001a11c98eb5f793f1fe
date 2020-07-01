package com.test.web.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({ "context", "css", "javascript", "image" })
public class HomeController {
	@Autowired
	HttpSession session;
	@Autowired
	HttpServletRequest request;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@GetMapping("/")
	public String home(HttpSession session, HttpServletRequest request) {
		logger.info("main");
		session.setAttribute("context", request.getContextPath()); //도메인 가져오는 것
		session.setAttribute("javascript", request.getContextPath() + "/resources/js"); //도메인 가져오는 것, js의 모든 파일들을 가져오는 것
		session.setAttribute("css", request.getContextPath() + "/resources/css");
		session.setAttribute("image", request.getContextPath() + "/resources/img");
		return "main/Home.tiles";
	}

	@GetMapping("/location/{dir}/{page}") // 타일즈아님
	public String move(@PathVariable("dir") String dir, @PathVariable("page") String page) {
		return String.format("%s/%s.jsp", dir, page);
	}
}