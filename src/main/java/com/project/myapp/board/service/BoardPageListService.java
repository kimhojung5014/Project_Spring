package com.project.myapp.board.service;

import java.util.List;

import com.project.myapp.board.model.BoardVo;
import com.project.myapp.page.model.Criteria;

public interface BoardPageListService {
	public List<BoardVo> boardList(Criteria cri);
}
