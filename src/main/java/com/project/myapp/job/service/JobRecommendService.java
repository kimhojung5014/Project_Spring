package com.project.myapp.job.service;

import java.util.List;

import com.project.myapp.job.model.JobDetailVo;
import com.project.myapp.page.model.Criteria;

public interface JobRecommendService {
	public List<JobDetailVo> jobRecommendList(Criteria cri);
}
