package com.project.myapp.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.board.dao.IBoardRepository;
import com.project.myapp.board.model.BoardVo;
import com.project.myapp.page.model.Criteria;

@Service
public class BoardPageListServiceImpl implements BoardPageListService{
	
	@Autowired
	IBoardRepository boardRepository;
	
	@Override
	public List<BoardVo> boardList(Criteria cri) {
		return boardRepository.boardList(cri);
	}
}
