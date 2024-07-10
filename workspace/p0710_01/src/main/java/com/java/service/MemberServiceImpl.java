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
	public int loginCheck(String id, String pw, int pno) {
		System.out.println("service id: "+id);
		System.out.println("service pw: "+pw);
		System.out.println("service pno: "+pno);
		
		//mybatis 연결
		MemberDto mdto = memberMapper.selectLogin(id,pw);
		System.out.println("service name: "+mdto.getName());
		
		int check=1;
		
		return check;
		
	}//o

}//c
