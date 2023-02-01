package com.project.myapp.major.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.major.dao.IMajorRepository;
import com.project.myapp.major.model.MajorTest;
import com.project.myapp.major.model.MajorVo;
import com.project.myapp.page.model.Criteria;

@Service
public class MajorRecommendServiceImpl implements MajorRecommendService{
	
	@Autowired
	IMajorRepository majorRepository;
	
	@Override
	public List<MajorVo> majorRecommend(MajorTest majorTest) {
		return majorRepository.majorRecommend(majorTest);
	}
}
