package com.project.myapp.major.service;

import java.util.List;

import com.project.myapp.major.model.MajorTest;
import com.project.myapp.major.model.MajorVo;
import com.project.myapp.page.model.Criteria;

public interface MajorRecommendService {
	public List<MajorVo> majorRecommend(MajorTest majorTest, Criteria cri);
}
