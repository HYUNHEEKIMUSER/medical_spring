package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

import com.java.dto.BoardDto;
import com.java.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	@Qualifier("ver1")
	BoardService boardService;
	
	@RequestMapping("/board/list")
	public ModelAndView list() {
		//게시판 전체가져오기
		ArrayList<BoardDto> list = boardService.selectList();	
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("board/list");
		
		return mv;
	}

}
