package com.project.myapp.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.member.dao.IJoinRepository;

@Service
public class ResetPwServiceImpl implements ResetPwService{
	
	@Autowired
	IJoinRepository joinRepository;
	
	@Override
	public void resetPw(String userId, String pw) {
		joinRepository.resetPw(userId, pw);
	}
}
