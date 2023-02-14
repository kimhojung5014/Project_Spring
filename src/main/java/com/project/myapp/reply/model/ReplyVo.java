package com.project.myapp.reply.model;

public class ReplyVo {

	private int writeNum,//글 번호 외래키
				commentNum,//댓글 번호 외래키
				parentNum;
	


	private String userId,
				   nickName,
				   content,
				   commentDate,
				   parentNickName;
	
	public String getParentNickName() {
		return parentNickName;
	}

	public void setParentNickName(String parentNickName) {
		this.parentNickName = parentNickName;
	}


	public void setParentNum(int parentNum) {
		this.parentNum = parentNum;
	}
	
	public int getParentNum() {
		return parentNum;
	}

	public int getWriteNum() {
		return writeNum;
	}

	public void setWriteNum(int writeNum) {
		this.writeNum = writeNum;
	}

	public int getCommentNum() {
		return commentNum;
	}

	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}
	
	

}
