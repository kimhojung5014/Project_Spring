package com.project.myapp.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.board.dao.IBoardRepository;
import com.project.myapp.page.model.Criteria;

@Service
public class BoardTotalServiceImpl implements BoardTotalService{
	
	@Autowired
	IBoardRepository boardRepository;
	
	@Override
	public int boardTotal(Criteria cri) {
		return boardRepository.boardTotal(cri);
	}
}
