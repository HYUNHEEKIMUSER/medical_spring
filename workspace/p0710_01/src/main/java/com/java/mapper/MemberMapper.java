package com.java.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.java.dto.MemberDto;


//dao랑 같음
@Mapper //IOC 주입
public interface MemberMapper {
	
	//로그인 체크
	MemberDto selectLogin(String id, String pw);
	
}
