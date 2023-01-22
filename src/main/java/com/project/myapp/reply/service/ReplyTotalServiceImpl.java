package com.project.myapp.reply.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.reply.dao.IReplyRepository;

@Service
public class ReplyTotalServiceImpl implements ReplyTotalService{
	
	@Autowired
	IReplyRepository replyRepository;
	
	@Override
	public int replyTotal() {
		return replyRepository.replyTotal();
	}
}
