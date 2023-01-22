package com.project.myapp.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.member.dao.IJoinRepository;
@Service
public class NickNameCheckServiceImpl implements NickNameCheckService{
	
	@Autowired
	IJoinRepository joinRepository;
	
	@Override
	public boolean nickNameCheck(String nick) {
		return joinRepository.nickNameCheck(nick);
	}
}
