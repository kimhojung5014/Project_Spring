package com.project.myapp.reply.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.reply.dao.IReplyRepository;

@Service
public class ReplyEditServiceImpl implements ReplyEditService{
	
	@Autowired
	IReplyRepository replyRepository;
	
	@Override
	public void replyEdit(int num, String content) {
		replyRepository.replyEdit(num, content);
	}
}
