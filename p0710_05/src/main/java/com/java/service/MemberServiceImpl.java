package com.java.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.MemberDto;
import com.java.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper memberMapper;

	@Override
	public MemberDto selectLogin(MemberDto mdto) {
		System.out.println("jsp serviceimpl id: "+mdto.getId());
		System.out.println("jsp serviceimpl pw: "+mdto.getPw());
		
		MemberDto memberDto = memberMapper.selectLogin(mdto);
		System.out.println("db serviceimpl id: "+memberDto.getId());
		System.out.println("db serviceimpl pw: "+memberDto.getPw());
		System.out.println("db serviceimpl name: "+memberDto.getName());
		
		//db와 접근
		return memberDto;
	}

}
