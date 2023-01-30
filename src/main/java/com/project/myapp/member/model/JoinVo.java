package com.project.myapp.member.model;



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

	public int getNumId() {
		return numId;
	}

	public void setNumId(int numId) {
		this.numId = numId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	public String getTelNumber() {
		return telNumber;
	}

	public void setTelNumber(String telNumber) {
		this.telNumber = telNumber;
	}
	

	
}
