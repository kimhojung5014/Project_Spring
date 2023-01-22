package com.project.myapp.board.dao;

import java.util.List;

import com.project.myapp.board.model.BoardVo;
import com.project.myapp.page.model.Criteria;

public interface IBoardRepository {
	
	//테스트용 글 삽입, 삭제
	public void insertTest();
	public void deleteTest();
	//
	

	
	//페이지 처리 전용 메소드 
	public List<BoardVo>boardList(Criteria cri);
	
	//총 게시글 개수 불러오는 메소드
	public int boardTotal(Criteria cri);
	
	public void boardInsert(BoardVo boardVo);
	
	public BoardVo getBoard(int writeNum);
	
	public void boardViews(int writeNum);
	
	public void boardDelete(int writeNum);
	
	public void boardEdit(BoardVo boardVo);
}
