package com.project.myapp.job.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.job.dao.IJobRepository;
import com.project.myapp.job.model.JobDetailVo;
import com.project.myapp.page.model.Criteria;

@Service
public class JobRecommendServiceImpl implements JobRecommendService{
	
	@Autowired
	IJobRepository jobRepository;
	
	@Override
	public List<JobDetailVo> jobRecommendList(Criteria cri) {
		return jobRepository.jobRecommendList(cri);
	}
}
