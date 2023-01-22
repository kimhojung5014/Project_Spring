package com.project.myapp.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.board.dao.IBoardRepository;

@Service
public class TestBoardInterface implements TestBoard{
	
	@Autowired
	IBoardRepository b;
	
	@Override
	public void insertTest() {
		b.insertTest();
	}
	@Override
	public void deleteTest() {
		b.deleteTest();
	}
	
}
