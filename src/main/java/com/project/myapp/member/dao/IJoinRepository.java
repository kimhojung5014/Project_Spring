package com.project.myapp.member.dao;

import com.project.myapp.member.model.JoinVo;

public interface IJoinRepository {

	public void insertJoin(JoinVo joinVo);
	
	public boolean idCheck(String id);
	
	public boolean nickNameCheck(String nick);
	
	public JoinVo login(String id, String pw);
	
	public void edit(JoinVo joinVo);
	
	public String searchId(String userName, String data);
	
	public String searchPw(String userId, String data);
	
	public void resetPw(String userId, String pw);
}
