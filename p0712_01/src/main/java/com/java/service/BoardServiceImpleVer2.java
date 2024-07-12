package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Qualifier;

import com.java.dto.BoardDto;

@Qualifier(value="ver2")
public class BoardServiceImpleVer2 implements BoardService {

	@Override
	public void Selectcount() {
		System.out.println("boardserviceimpl 버전 2가 실행됩니다.");
		
	}
	//버전 2 새로운 버전의 서비스를 1개 더 만듦

	@Override
	public ArrayList<BoardDto> selectList() {
		// TODO Auto-generated method stub
		return null;
	}
}
