package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.java.dao.DepartDao;
import com.java.dto.EDDto;
import com.java.dto.EmpDepDto;
import com.java.dto.EmpDto;
import com.java.service.DepartService;
import com.java.service.EDService;
import com.java.service.EmpDepService;
import com.java.service.EmpService;

@Controller
public class FrontController {
	
	@Autowired
	EmpService empService;
	@Autowired
	DepartService departService;
	@Autowired 
	EmpDepService demDepService;
	@Autowired
	EDService edService;
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/emp_list")
	public ModelAndView emp_list() {
		
		//사원테이블 가져오기
		ArrayList<EmpDto> list  = empService.selectAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("emp_list");
		
		return mv;
	}
	
	
	@RequestMapping("/depart_list")
	public <DepartDto> ModelAndView depart_list() {
		
		ArrayList<DepartDto> list = (ArrayList<DepartDto>) departService.selectAll();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("depart_list");
		
		return mv;
	}
	
	//사원+부서 조인
	@RequestMapping("/empDep_list")
	public ModelAndView empDep_list() {
		
		//사원테이블 가져오기
		ArrayList<EmpDepDto> list  = demDepService.selectAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("empDep_list");
		
		return mv;
	}
	
	//사원+부서 조인2
	@RequestMapping("/ed_list")
	public ModelAndView ed_list() {
		
		//사원테이블 가져오기
		ArrayList<EDDto> list  = edService.selectAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("ed_list");
		
		return mv;
	}
	
	
	
	
}
