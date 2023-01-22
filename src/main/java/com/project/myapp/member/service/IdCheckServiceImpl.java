package com.project.myapp.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.member.dao.IJoinRepository;
@Service
public class IdCheckServiceImpl implements IdCheckService{
	
	@Autowired
	IJoinRepository joinRepository;
	
	@Override
	public boolean idCheck(String id) {
		
		return joinRepository.idCheck(id);
	}
}
