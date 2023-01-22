package com.project.myapp.job.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.job.dao.IJobRepository;
import com.project.myapp.job.model.JobListVo;
import com.project.myapp.page.model.Criteria;

@Service
public class JobListServiceImpl implements JobListService{
	
	@Autowired
	IJobRepository jobRepository;
	
	@Override
	public List<JobListVo> JobList(Criteria cri) {
		return jobRepository.JobList(cri);
	}
}
