package com.project.myapp.member.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.project.myapp.member.model.JoinVo;

@Repository
public class JoinRepository implements IJoinRepository{
	
	@Autowired
	JdbcTemplate jdbc;
	
	private class JoinMapper implements RowMapper<JoinVo>{

		@Override
		public JoinVo mapRow(ResultSet rs, int rowNum) throws SQLException {
			JoinVo joinVo = new JoinVo();
			joinVo.setNumId(rs.getInt("numId"));
			joinVo.setUserId(rs.getString("userId"));
			joinVo.setPw(rs.getString("pw"));
			joinVo.setNickName(rs.getString("nickName"));
			joinVo.seteMail(rs.getString("eMail"));
			joinVo.setUserName(rs.getString("userName"));
			joinVo.setTelNumber(rs.getString("telNumber"));
			return joinVo;
		}
	}
	
	public void insertJoin(JoinVo joinVo) {
		
		String sql = "INSERT into join(numId,userId,pw,nickName,userName,eMail,telNumber)"
				+ " values(ADDR_SEQ.nextval,?,?,?,?,?,?)";
		jdbc.update(sql, joinVo.getUserId(),
						 joinVo.getPw(),
						 joinVo.getNickName(),
						 joinVo.getUserName(),
						 joinVo.geteMail(),
						 joinVo.getTelNumber());
	}
	
	public boolean idCheck(String id) {
		
		String sql = "SELECT USERID FROM JOIN WHERE USERID = ?";
		
		
		try {
			jdbc.queryForObject(sql, String.class,id);
			return false;
		} catch (Exception e) {
			return true;
		}
	}
	
	public boolean nickNameCheck(String nick) {

		String sql = "SELECT NICKNAME FROM JOIN WHERE NICKNAME = ?";
		
		try {
			jdbc.queryForObject(sql, String.class,nick);
			return false;
		} catch (Exception e) {
			return true;
		}

	}
	
	public JoinVo login(String id, String pw) {
		
		String sql = "select * from join where userId=? and pw=?";
		try {
			return jdbc.queryForObject(sql, new JoinMapper(),id,pw);
			//출력 행이 없을 시 null 리턴
		} catch (Exception e) {
			return null;
		}
	}
	
	public void edit(JoinVo joinVo) {
		
		String sql = "UPDATE JOIN SET userId = ?, pw = ?, nickName = ?, userName = ?, eMail = ?, telNumber = ? where numid = ?";
		
		jdbc.update(sql, 
				joinVo.getUserId(),
				joinVo.getPw(),
				joinVo.getNickName(),
				joinVo.getUserName(),
				joinVo.geteMail(),
				joinVo.getTelNumber(),
				joinVo.getNumId());
	}
	
	public String searchId(String userName, String data) {
		
		String sqlMail = "SELECT USERID from join WHERE USERNAME = ? AND EMAIL = ?";
		String sqlTel = "SELECT USERID from join WHERE USERNAME = ? AND TELNUMBER = ?";
		System.out.println("dao 이름 "+userName);
		System.out.println("dao 정보 "+data);
		if (data.indexOf("@") != -1) {
			System.out.println("이메일 sql");
			try {
				return jdbc.queryForObject(sqlMail, String.class,userName, data);
			} catch (Exception e) {
				return null;
			}
		}else {
			System.out.println("전화 sql");
			try {
				return jdbc.queryForObject(sqlTel, String.class,userName, data);
			} catch (Exception e) {
				return null;
			}
		}
	}
	
	public String searchPw(String userId, String data) {
		
		String sqlMail = "SELECT PW from join WHERE USERID = ? AND EMAIL = ?";
		String sqlTel = "SELECT PW from join WHERE USERID = ? AND TELNUMBER = ?";
		
		if (data.indexOf("@") != -1) {
			System.out.println("이메일 sql");
			try {
				return jdbc.queryForObject(sqlMail,String.class, userId, data);
			} catch (Exception e) {
				return null;
			}
		}else {
			System.out.println("전화 sql");
			try {
				return jdbc.queryForObject(sqlTel, String.class,userId, data);
			} catch (Exception e) {
				return null;
			}
		}
	}

	@Override
	public void resetPw(String userId, String pw) {
		
		String sql = "UPDATE JOIN SET PW = ? WHERE userid = ?";
		
		jdbc.update(sql,pw,userId);
		
	}
}
