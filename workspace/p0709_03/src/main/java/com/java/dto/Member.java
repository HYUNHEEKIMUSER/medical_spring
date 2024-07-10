package com.java.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //getter와 setter를 만들어 줌
@NoArgsConstructor // 기본생성자
@AllArgsConstructor // 전체생성자
@Builder // 부분생성자
public class Member {
	private String id;
	private String pw;
	private String name;
	private String phone;
	
//	public Member(String id, String pw) {
//		this.id=id;
//		this.pw=pw;
//	}
//	
//	public Member(String id, String pw, String name) {
//		this.id=id;
//		this.pw=pw;
//		this.name=name;
//	}
//	
//	public Member(String id) {
//		this.id=id;
//	
//	} @Builder 만들기 전에는 이렇게 다 써야 됨
	
}
