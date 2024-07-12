package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.java.dao.BoardDao;
import com.java.dto.BoardDto;

@Service
@Qualifier(value="ver1")
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDao boardDao;
	
	
	
	@Override
	public void Selectcount() {
		System.out.println("boardserviceimpl 버전 1이 실행됩니다.");
	}


	@Override
	public ArrayList<BoardDto> selectList() {
		ArrayList<BoardDto> list = boardDao.selectList();
		System.out.println("service list: "+list.size());
		return list;
	}
	
	
	
	
}
