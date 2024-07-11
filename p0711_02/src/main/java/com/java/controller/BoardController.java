package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@RequestMapping("/board/list")
	public String list() {
		return "board/list";		
	}
	
	@RequestMapping("/board/login")
	public String login() {
		return "board/login";		
	}
	
	@RequestMapping("/board/enter")
	public String enter() {
		return "board/enter";		
	}
}
