package com.project.myapp.board.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.project.myapp.board.model.BoardVo;
import com.project.myapp.page.model.Criteria;

@Repository
public class BoardRepository implements IBoardRepository{
	
	@Autowired
	JdbcTemplate jdbc;
	
	private class  BoardMapper implements RowMapper<BoardVo>{
		@Override
		public BoardVo mapRow(ResultSet rs, int rowNum) throws SQLException {
			
			BoardVo boardVo = new BoardVo();
			boardVo.setCategory(rs.getString("category"));
			boardVo.setTitle(rs.getString("title"));
			boardVo.setWriter(rs.getString("writer"));
			boardVo.setWritingTime(rs.getString("writingTime"));
			boardVo.setUserId(rs.getString("userId"));
			boardVo.setWriteNum(rs.getInt("writeNum"));
			boardVo.setViews(rs.getInt("views"));
//			boardVo.setContent(rs.getString("content")); // 내용은 필요 없으니까
			return boardVo;
		}
	}
	@Override
	public void insertTest() {
		String sql = "INSERT INTO BOARD (CATEGORY,TITLE,WRITER, USERID, CONTENT,VIEWS, WRITENUM, WRITINGTIME)"
				 + "VALUES('직업정보', 'test', 'test','gytrt0130' ,'test' , 0, LISTSE.nextval,TO_CHAR (SYSDATE,'\"\"YYYY\"년 \"MM\"월 \"DD\"일 \"hh24\"시 \"mi\"분 \"ss\"초\"'))";		
		jdbc.update(sql);
	}

	@Override
	public void deleteTest() {
		String sql = "DELETE BOARD ";
		jdbc.update(sql);
	}
	


	@Override
	public void boardInsert(BoardVo boardVo) {
		String sql = "INSERT INTO BOARD (CATEGORY,TITLE,WRITER, USERID, CONTENT,VIEWS, WRITENUM, WRITINGTIME)"
				   + "VALUES(?, ?, ?, ?, ?, 0, LISTSE.nextval,TO_CHAR (SYSDATE,'\"\"YYYY\"년 \"MM\"월 \"DD\"일 \"hh24\"시 \"mi\"분 \"ss\"초\"'))";
		jdbc.update(sql,boardVo.getCategory()
					   ,boardVo.getTitle()
					   ,boardVo.getWriter()
					   ,boardVo.getUserId()
					   ,boardVo.getContent()
					);
	}

	@Override
	public BoardVo getBoard(int writeNum) {
		String sql = "SELECT * FROM BOARD WHERE writenum = ?";
		return jdbc.queryForObject(sql,
				new RowMapper<BoardVo>() {
					@Override
					public BoardVo mapRow(ResultSet rs, int rowNum) throws SQLException {
						BoardVo boardVo = new BoardVo();
						boardVo.setCategory(rs.getString("category"));
						boardVo.setTitle(rs.getString("title"));
						boardVo.setWriter(rs.getString("writer"));
						boardVo.setWritingTime(rs.getString("writingTime"));
						boardVo.setUserId(rs.getString("userId"));
						boardVo.setWriteNum(rs.getInt("writeNum"));
						boardVo.setViews(rs.getInt("views"));
						boardVo.setContent(rs.getString("content"));
						return boardVo;
					}
				}
				,writeNum);
	}

	@Override
	public void boardViews(int writeNum) {
		String sql =  "UPDATE board SET views = views+1 where writeNum = ?";
		jdbc.update(sql,writeNum);
		
	}

	@Override
	public void boardDelete(int writeNum) {
		String sql = "DELETE BOARD WHERE WRITENUM = ?";
		jdbc.update(sql, writeNum);
	}

	@Override
	public void boardEdit(BoardVo boardVo) {
		String sql = "UPDATE BOARD SET CATEGORY = ?, TITLE = ?, CONTENT = ? WHERE WRITENUM = ?";
		
		jdbc.update(sql, boardVo.getCategory(),
						 boardVo.getTitle(),
						 boardVo.getContent(),
						 boardVo.getWriteNum());
		
	}
	//한 페이지에 속하는 글 10개씩 불러오는 메소드
	@Override
	public List<BoardVo> boardList(Criteria cri) {
		
		StringBuilder sql = new StringBuilder();
					sql.append("select category,title,writer,writingtime,views,writenum,userId  "+
				 			   "from(select rownum rn,category,title,writer,writingtime,views,writenum,userId "+
				 			   "from board ");
					if(cri.getCategory() != null || cri.getChooseSearch() != null || cri.getSearch() != null) {
						sql.append("where");
					}
					if (cri.getCategory() != null) {
						sql.append(" category like '"+cri.getCategory()+"' ");
					}
					
					if (cri.getChooseSearch() != null && cri.getSearch() != null) {
						sql.append(" " +cri.getChooseSearch()+" "+" LIKE '%"+cri.getSearch()+"%' ");
					}
					
					sql.append("ORDER BY writenum DESC) "+
						       "where rn between ? and ?");
		return jdbc.query(sql.toString(), new BoardMapper(), 
						 ((cri.getPageNum()-1) * cri.getAmount())+1,// page가 1일 경우 (1-1) * 10 = 0이고 + 1 하면 1 항상 1,11,21같이 시작해야 해서 +1
						 cri.getPageNum() * cri.getAmount()); //페이지 * 10 해주면 된다.
	}
	
	//총 게시글 개수 불러오는 메소드
	@Override
	public int boardTotal(Criteria cri) {
		
		StringBuilder sql = new StringBuilder("SELECT count(*) from board ");
		
		if (cri.getCategory() != null || cri.getChooseSearch() != null || cri.getSearch() != null) {
			sql.append("where ");
		}
		
		if (cri.getCategory() != null) {
			sql.append(" category like '"+cri.getCategory()+"' ");
		}
		
		if (cri.getChooseSearch() != null && cri.getSearch() != null) {
			sql.append(" " +cri.getChooseSearch()+" "+" LIKE '%"+cri.getSearch()+"%' ");
		}
		
		return jdbc.queryForObject(sql.toString(), Integer.class);
	}

}
