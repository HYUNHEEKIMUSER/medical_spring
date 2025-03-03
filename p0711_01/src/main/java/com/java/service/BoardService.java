package com.java.service;

import java.util.ArrayList;

import com.java.dto.BoardDto;

public interface BoardService {
	//게시판 리스트 가져오기
	ArrayList<BoardDto> selectList();
	//게시글 한개 가져오기
	BoardDto selectOne(BoardDto bdto);
	//게시글 저장하기
	void insertBoard(BoardDto bdto);
	//게시글 삭제
	void deleteBoard(BoardDto bdto);
	//게시글 수정
	BoardDto updateBoard(BoardDto bdto);
	//수정페이지 저장
	void doUpdateBoard(BoardDto bdto);
	//답글게시판 저장
	void insertReply(BoardDto bdto);

}