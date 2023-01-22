package com.project.myapp.reply.dao;
import java.util.List;

import com.project.myapp.page.model.Criteria;
import com.project.myapp.reply.model.ReplyVo;

public interface IReplyRepository {
	public List<ReplyVo> replyList(int writeNum, Criteria cri);
	
	public void replyInsert(ReplyVo replyVo);
	
	public void replyDelete(int commentNum);
	
	public void replyEdit(int num, String content);
	
	public int replyTotal();
	
}
