package com.project.myapp.member.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.member.dao.IJoinRepository;
@Service
public class SearchPwServiceImpl implements SearchPwService{

	@Autowired
	IJoinRepository joinRepository;
	
	@Override
	public String searchPw(String userId, String data) {
		return joinRepository.searchPw(userId, data);
	}
}
