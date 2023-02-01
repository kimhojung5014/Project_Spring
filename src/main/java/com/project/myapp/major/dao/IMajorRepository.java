package com.project.myapp.major.dao;

import java.util.List;


import com.project.myapp.major.model.MajorTest;
import com.project.myapp.major.model.MajorVo;
import com.project.myapp.page.model.Criteria;

public interface IMajorRepository {
	
	public List<MajorVo> majorList(Criteria cri);
	
	public MajorVo majorDetail(String major);
	
	public int majorTotal(Criteria cri);
	
	public int majorReTotal(MajorTest majorTest, Criteria cri);
	
	public List<MajorVo> majorRecommend(MajorTest majorTest);
}
