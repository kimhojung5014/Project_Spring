package com.project.myapp.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.member.dao.IJoinRepository;
import com.project.myapp.member.model.JoinVo;
@Service
public class EditServiceImpl implements EditService{
	
	@Autowired
	IJoinRepository joinRepository;
	
	@Override
	public void edit(JoinVo JoinVo) {
		joinRepository.edit(JoinVo);
	}
}
