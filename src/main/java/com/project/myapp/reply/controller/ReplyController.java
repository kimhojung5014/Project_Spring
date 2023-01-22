package com.project.myapp.reply.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.myapp.reply.model.ReplyVo;
import com.project.myapp.reply.service.ReplyDeleteService;
import com.project.myapp.reply.service.ReplyEditService;
import com.project.myapp.reply.service.ReplyInsertService;

@Controller
public class ReplyController {
	
	@Autowired
	ReplyInsertService	replyInsertService;
	
	@PostMapping(value = "replyInsert")
	public String replyInsert(ReplyVo replyVo) {
		
		replyInsertService.replyInsert(replyVo);
		return "redirect:/inToBoard?writeNum="+replyVo.getWriteNum();
	}
	
	@Autowired
	ReplyDeleteService replyDeleteService;
	
	@GetMapping(value = "replyDelete")
	public String replyDelete(int commentNum, int writeNum) {
		replyDeleteService.replyDelete(commentNum);
		return "redirect:/inToBoard?writeNum="+writeNum;
	}
	
	@Autowired
	ReplyEditService replyEditService;
	
	@PostMapping(value = "replyEdit")
	public String replyEdit(int num, String content,int writeNum) {
		replyEditService.replyEdit(num, content);
		return "redirect:/inToBoard?writeNum="+writeNum;
	}
}
