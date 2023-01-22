package com.project.myapp.job.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.job.dao.IJobRepository;
import com.project.myapp.job.model.JobDetailVo;

@Service
public class JobDetaiServiceImpl implements JobDetailService{
	
	@Autowired
	IJobRepository jobRepository;
	
	@Override
	public JobDetailVo Jobdetail(String job) {
		return jobRepository.Jobdetail(job);
	}
}
