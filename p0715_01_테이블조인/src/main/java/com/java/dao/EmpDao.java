package com.java.dao;

import java.sql.Timestamp;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.EmpDto;

@Mapper
public interface EmpDao {
	//사원리스트
	ArrayList<EmpDto> selectAll();
	
	
	
}
