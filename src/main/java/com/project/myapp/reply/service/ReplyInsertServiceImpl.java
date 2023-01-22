package com.project.myapp.reply.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.reply.dao.IReplyRepository;
import com.project.myapp.reply.model.ReplyVo;
@Service
public class ReplyInsertServiceImpl implements ReplyInsertService{
	
	@Autowired
	IReplyRepository replyRepository;
	
	@Override
	public void replyInsert(ReplyVo replyVo) {
		replyRepository.replyInsert(replyVo);
	}
	
	
}
