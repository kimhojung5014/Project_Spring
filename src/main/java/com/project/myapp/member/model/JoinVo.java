package com.project.myapp.member.model;

import lombok.Data;

@Data
public class JoinVo {
	
	private int numId;


	private String userId,
				   pw,
				   nickName,
				   userName,
				   eMail,
				   telNumber;
	
	public JoinVo() {}
	
	public JoinVo(String userId, String pw, String nickName, String userName, String eMail, String telNumber) {

		this.userId = userId;
		this.pw = pw;
		this.nickName = nickName;
		this.userName = userName;
		this.eMail = eMail;
		this.telNumber = telNumber;
		
	}
	
	public JoinVo(int numId ,String userId, String pw, String nickName, String userName, String eMail, String telNumber) {
		this.numId = numId;
		this.userId = userId;
		this.pw = pw;
		this.nickName = nickName;
		this.userName = userName;
		this.eMail = eMail;
		this.telNumber = telNumber;
		
	}
	

	
}
