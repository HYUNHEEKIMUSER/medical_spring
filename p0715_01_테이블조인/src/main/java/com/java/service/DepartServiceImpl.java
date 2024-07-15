package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.DepartDao;
import com.java.dao.EmpDao;
import com.java.dto.DepartDto;
import com.java.dto.EmpDto;

@Service
public class DepartServiceImpl implements DepartService {

	@Autowired
	DepartDao departDao;
	
	@Override
	public ArrayList<DepartDto> selectAll() {
		ArrayList<DepartDto> list = departDao.selectAll();
		
		return list;
		
		
	}

}
