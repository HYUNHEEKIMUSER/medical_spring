package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class FrontController {
	
	@RequestMapping(value="/index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	
	@RequestMapping("/board/member")
	public String board() {
		return "board/member";
	}
	
	
	@RequestMapping("/board/doMember")
	public String doMember(HttpServletRequest request, Model model) {
		System.out.println("id: "+request.getParameter("bid"));
		System.out.println("pw: "+request.getParameter("bpw"));
		System.out.println("name: "+request.getParameter("bname"));
		System.out.println("phone: "+request.getParameter("bphone"));
		System.out.println("gender: "+request.getParameter("bgender"));
		
		model.addAttribute("id",request.getParameter("bid"));
		model.addAttribute("pw",request.getParameter("bpw"));
		model.addAttribute("name",request.getParameter("bname"));
		model.addAttribute("phone",request.getParameter("bphone"));
		model.addAttribute("gender",request.getParameter("bgender"));
		
		return "board/doMember";
	}
	
	
	@RequestMapping("/board/memUpdate")
	public String memUpdate(HttpServletRequest request) {
		
//		String[] hobby = request.getParameterValues("hobby");
//		String hobbys ="";
//		for(int i=0; i<hobby.length(); i++) {
//			if(i==0) hobbys +=""+hobby[i];
//			else hobbys +=","+hobby[i];S
//				
//		}
//		System.out.println("hobby: "+hobbys);
		ModelAndView mv = new ModelAndView();
		mv.addObject("bid",request.getParameter("bid"));
		mv.addObject("bpw",request.getParameter("bpw"));
		mv.addObject("bname",request.getParameter("bname"));
		mv.addObject("bphone",request.getParameter("bphone"));		
		mv.addObject("bgender",request.getParameter("bgender"));
		
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
}
