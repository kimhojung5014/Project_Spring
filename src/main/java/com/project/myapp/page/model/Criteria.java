package com.project.myapp.page.model;



public class Criteria {
	
    /* 현재 페이지 */
    private int pageNum;
    
    /* 한 페이지 당 보여질 게시물 갯수 */
    private int amount;
    
    /*검색, 카테고리 기능 시 페이지 넘김 시 값 저장*/
    private String category,
    			   chooseSearch,
    			   search;
    
    
    /*직업 추천 결과 페이지 변수 저장*/
    private String ability, profrssion, priority;
    
    /* 기본 생성자 -> 기봅 세팅 : pageNum = 1, amount = 10 */
    public Criteria() {
        this(1,10,null,null,null,null,null,null);
    }


	/* 생성자 => 원하는 pageNum, 원하는 amount */


	public int getPageNum() {
		return pageNum;
	}

	public String getability() {
		return ability;
	}


	public void setability(String ability) {
		this.ability = ability;
	}


	public String getProfrssion() {
		return profrssion;
	}


	public void setProfrssion(String profrssion) {
		this.profrssion = profrssion;
	}


	public String getPriority() {
		return priority;
	}


	public void setPriority(String priority) {
		this.priority = priority;
	}


	public Criteria(int pageNum, int amount, String category, String chooseSearch, String search, String ability,
			String profrssion, String priority) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.category = category;
		this.chooseSearch = chooseSearch;
		this.search = search;
		this.ability = ability;
		this.profrssion = profrssion;
		this.priority = priority;
	}


	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
	
    
    public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getChooseSearch() {
		return chooseSearch;
	}

	public void setChooseSearch(String chooseSearch) {
		this.chooseSearch = chooseSearch;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
    
}
