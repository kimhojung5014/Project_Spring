package com.project.myapp.board.model;

public class BoardVo {
	
	private String category,
				   title,
				   writer,
				   userId,
				   writingTime,
				   content;
	private int writeNum, views;
	
	public BoardVo() {}
	
	public BoardVo(String category, String title, int writeNum, String content) {
		
		this.category = category;
		this.title = title;
		this.writeNum = writeNum;
		this.content = content;
	}
	
	public BoardVo(String category, String title, String writer,String userId, String writingTime, int writeNum, int views, String content) {
		
		this.category = category;
		this.title = title;
		this.writer = writer;
		this.userId = userId;
		this.writingTime = writingTime;
		this.writeNum = writeNum;
		this.views = views;
		this.content = content;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}



	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getWritingTime() {
		return writingTime;
	}

	public void setWritingTime(String writingTime) {
		this.writingTime = writingTime;
	}

	public int getWriteNum() {
		return writeNum;
	}

	public void setWriteNum(int writeNum) {
		this.writeNum = writeNum;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}
}
