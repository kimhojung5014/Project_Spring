package com.project.myapp.reply.service;

import java.util.List;

import com.project.myapp.page.model.Criteria;
import com.project.myapp.reply.model.ReplyVo;

public interface ReplyListService {
	public List<ReplyVo> replyList(int writeNum, Criteria cri);
}
