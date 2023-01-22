package com.project.myapp.job.service;

import java.util.List;

import com.project.myapp.job.model.JobListVo;
import com.project.myapp.page.model.Criteria;

public interface JobListService {
	public List<JobListVo> JobList(Criteria cri);
}
