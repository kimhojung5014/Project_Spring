package com.project.myapp.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.member.dao.IJoinRepository;
@Service
public class SearchIdServiceImpl implements SearchIdService{
	
	@Autowired
	IJoinRepository joinRepository;
	
	@Override
	public String searchId(String userName, String data) {
		return joinRepository.searchId(userName, data);
	}
}
