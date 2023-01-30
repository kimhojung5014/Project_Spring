package com.project.myapp.board.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.myapp.board.model.BoardVo;
import com.project.myapp.board.service.BoardDeleteService;
import com.project.myapp.board.service.BoardEditService;
import com.project.myapp.board.service.BoardInsertService;
import com.project.myapp.board.service.BoardPageListService;
import com.project.myapp.board.service.BoardTotalService;
import com.project.myapp.board.service.GetBoardService;
import com.project.myapp.page.model.Criteria;
import com.project.myapp.page.model.PageMakerVo;
import com.project.myapp.reply.service.ReplyListService;
import com.project.myapp.reply.service.ReplyTotalService;


@Controller
public class BoardController {
	
	//테스트용 글 삽입 삭제
//	@Autowired
//	TestBoard test;
//	
//	@GetMapping(value = "testinsert")
//	public String testInsert() {
//		for (int i = 0; i < 10; i++) {
//			test.insertTest();
//		}
//		
//		return "redirect:/list";
//	}
//	@GetMapping(value = "testdelete")
//	public String testDelete() {
//		test.deleteTest();
//		return "redirect:/list";
//	}
//	
	
	
	//페이지에 맞는 글만 가져오는 메소드
	@Autowired
	BoardPageListService boardPageListService;
	
	//총 게시글 개수 불러오는 메소드
	@Autowired
	BoardTotalService boardTotalService; 
	
	@GetMapping(value = "list")
	public String boardList(Criteria cri,Model model){
		
		int total = boardTotalService.boardTotal(cri);
		
		PageMakerVo pageMake = new PageMakerVo(cri, total);
		
		model.addAttribute("boardList", boardPageListService.boardList(cri));

		model.addAttribute("pageMaker", pageMake);
		
		return "board/board";
	}
	
	
	
	//게시판 내부 들어가기
	@Autowired
	GetBoardService getBoardService;  // 게시글 정보 불러오는 서비스
	
	@Autowired
	ReplyListService replyListService; // 게시글에 달린 댓글 불러오는 서비스
	
	@Autowired
	ReplyTotalService replyTotalService;
	
	@GetMapping(value = "inToBoard")
	public String inToBoard(int writeNum,Criteria cri, Model model) {
		
		//댓글 총 개수 불러오기
		int total = replyTotalService.replyTotal(writeNum);
		PageMakerVo pageMake = new PageMakerVo(cri, total);
		
		//게시글 내용, 조회 수 업 
		model.addAttribute("boardVo", getBoardService.getBoard(writeNum));
		//댓글 불러오기
		model.addAttribute("replyList", replyListService.replyList(writeNum,cri));
		//페이지 계산
		model.addAttribute("pageMaker", pageMake);
		
		return "board/inToBoard";
	}
	
	@GetMapping(value = "boardwrite")
	public String boardwrite() {
		return "board/boardwrite";
	}
	
	//게시글 작성
	@Autowired
	BoardInsertService boardInsertService;
	
	@PostMapping(value = "boardInsert")
	public String boardWrite(BoardVo boardVo) {
		boardInsertService.boardInsert(boardVo);
		
		return "redirect:/list";
	}
	
	
	//게시글 삭제
	@Autowired
	BoardDeleteService boardDeleteService; 
	
	@GetMapping(value = "boardDelete")
	public String boardDelete(int writeNum) {
		boardDeleteService.boardDelete(writeNum);
		return "redirect:/list";
	}
	
	//게시글 수정
	@GetMapping(value = "boardEdit")
	public String boardEdit(BoardVo boardVo, Model model) {
		model.addAttribute("boardVo", boardVo);
		return "board/boardEdit";
	}
	
	@Autowired
	BoardEditService boardEditService; 
	
	@PostMapping(value = "boardEdit")
	public String boardEditInsert(BoardVo boardVo, Model model) {
		boardEditService.boardEdit(boardVo);
		return "redirect:/inToBoard?writeNum="+boardVo.getWriteNum();
	}
	

}
