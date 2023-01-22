package com.project.myapp.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.board.dao.IBoardRepository;
import com.project.myapp.board.model.BoardVo;

@Service
public class BoardInsertServiceImpl implements BoardInsertService{
	
	@Autowired
	IBoardRepository boardRepository; 
	
	@Override
	public void boardInsert(BoardVo boardVo) {
		boardRepository.boardInsert(boardVo);
	}
}
