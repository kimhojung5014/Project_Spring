package com.project.myapp.reply.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.project.myapp.page.model.Criteria;
import com.project.myapp.reply.model.ReplyVo;

@Repository
public class ReplyRepository implements IReplyRepository{
	
	@Autowired
	JdbcTemplate jdbc;
	
	private class ReyplyMapper implements RowMapper<ReplyVo>{
		@Override
		public ReplyVo mapRow(ResultSet rs, int rowNum) throws SQLException {
			
			ReplyVo replyVo = new ReplyVo();
			
//			replyVo.setWriteNum(rs.getInt("writeNum"));
			replyVo.setUserId(rs.getString("USERID"));
			replyVo.setParentNum(rs.getInt("PARENTNUM"));
			replyVo.setNickName(rs.getString("nickname"));
			replyVo.setContent(rs.getString("content"));
			replyVo.setCommentDate(rs.getString("commentdate"));
			replyVo.setCommentNum(rs.getInt("commentNum"));
			
			return replyVo;
		}
		
	}
//	기존 댓글 불러오는 메소드
//	@Override
//	public List<ReplyVo> replyList(int writeNum) {
//		String sql = "select LPAD(' ', level,'-') || nickname as nickname," + 
//					 "content," + 
//					 "commentdate,"+
//			         "commentnum,userid,parentnum "+
//					 "from reply where writenum = ? "+
//					 "start with parentnum = 0 "+
//					 "connect by prior commentnum = parentnum";
//		return jdbc.query(sql, new ReyplyMapper(),writeNum);
//	}
	
	//페이징 처리용
	@Override
	public List<ReplyVo> replyList(int writeNum, Criteria cri) {
		String sql = "select nickname, content, commentnum,commentdate, userid,parentnum  from(select ROWNUM rn,LPAD(' ', level,'-') || nickname as nickname,content,commentnum,userid,parentnum,commentdate  from reply where writenum = ? start with parentnum = 0  connect by prior commentnum = parentnum) where rn BETWEEN ? and ?";
		return jdbc.query(sql, new ReyplyMapper(),
						 writeNum,
						((cri.getPageNum()-1) * cri.getAmount())+1,// page가 1일 경우 (1-1) * 10 = 0이고 + 1 하면 1 항상 1,11,21같이 시작해야 해서 +1
						  cri.getPageNum() * cri.getAmount()); //페이지 * 10 해주면 된다.
	}

	@Override
	public void replyInsert(ReplyVo replyVo) {
		String sql = "INSERT INTO REPLY(writeNum,commentnum,parentNum,userId, nickname,content,commentDate)" + 
				"values(?,commentNum.nextval,?,?,?,?,TO_CHAR(SYSDATE,'YYYY\"년\" MM\"월 \"DD\"일 \"hh24\"시 \"mi\"분 \"ss\"초\"'))";		
		jdbc.update(sql,replyVo.getWriteNum(),
						replyVo.getParentNum(),
						replyVo.getUserId(),
						replyVo.getNickName(),
						replyVo.getContent()
					);
	}

	@Override
	public void replyDelete(int commentNum) {
		String sql = "DELETE reply WHERE COMMENTNUM = ?";
		jdbc.update(sql,commentNum);
		
	}

	@Override
	public void replyEdit(int num, String content) {
		String sql = "UPDATE REPLY SET content = ? WHERE commentnum = ?";
		jdbc.update(sql, content, num);
	}
	
	@Override
	public int replyTotal() {
		String sql = "SELECT COUNT(*) FROM REPLY";
		return jdbc.queryForObject(sql, Integer.class);
	}
	
	
	
}
