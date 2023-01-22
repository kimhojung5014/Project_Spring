package com.project.myapp.job.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.job.dao.IJobRepository;
import com.project.myapp.page.model.Criteria;

@Service
public class JobRecommendTotalServiceImpl implements JobRecommendTotalService{
	
	@Autowired
	IJobRepository jobRepository;
	
	@Override
	public int JobRecommendTotal(Criteria cri) {
		
		return jobRepository.JobRecommendTotal(cri);
	}
}
