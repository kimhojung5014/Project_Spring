package com.project.myapp.page.model;



public class Criteria {
	
    /* 현재 페이지 */
    private int pageNum;
    
    /* 한 페이지 당 보여질 게시물 갯수 */
    private int amount;
    
    private String category,
    			   chooseSearch,
    			   search;
    
    /* 기본 생성자 -> 기봅 세팅 : pageNum = 1, amount = 10 */
    public Criteria() {
        this(1,10,null,null,null);
    }


	/* 생성자 => 원하는 pageNum, 원하는 amount */
    public Criteria(int pageNum, int amount, String category, String chooseSearch, String search) {
        this.pageNum = pageNum;
        this.amount = amount;
        this.category = category;
        this.chooseSearch = chooseSearch;
        this.search = search;
        System.out.println("시작 페이지: "+pageNum);
        System.out.println("출력할 개수: "+amount);
    }

	public int getPageNum() {
		return pageNum;
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
