package com.project.myapp.job.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.myapp.job.model.JobDetailVo;
import com.project.myapp.job.service.JobDetailService;
import com.project.myapp.job.service.JobListService;
import com.project.myapp.job.service.JobRecommendService;
import com.project.myapp.job.service.JobRecommendTotalService;
import com.project.myapp.job.service.JobTotalService;
import com.project.myapp.page.model.Criteria;
import com.project.myapp.page.model.PageMakerVo;

@Controller
public class JobController {
	
	@Autowired
	JobListService jobListService;
	
	@Autowired
	JobTotalService jobTotalService;
	
	@GetMapping(value = "jobList")
	public String jobList(Criteria cri, Model model) {
		
		int total = jobTotalService.JobTotal(cri);
		
		PageMakerVo pageMake = new PageMakerVo(cri, total);
		
		model.addAttribute("jobList", jobListService.JobList(cri));
		
		model.addAttribute("pageMaker", pageMake);
		
		return "job/job";
	}
	
	@Autowired
	JobDetailService jobDetailService;
	
	@GetMapping(value = "jobDetail")
	public String joiDetail(String job, Model model) {
		
		model.addAttribute("jobData", jobDetailService.Jobdetail(job));
		
		return "job/jobdetail";
	}
	
	@Autowired
	JobRecommendService	jobRecommendService;
	
	@Autowired
	JobRecommendTotalService jobRecommendTotalService;
	
	@PostMapping(value = "jobRecommend")
	public String jobRecommend(Criteria cri ,Model model) {
		
		int total = jobRecommendTotalService.JobRecommendTotal(cri);
		
		PageMakerVo pageMake = new PageMakerVo(cri, total);
		
		model.addAttribute("pageMaker", pageMake);
		
		model.addAttribute("jobList", jobRecommendService.jobRecommendList(cri));
		
		
		return "job/jobresult";
	}
	
}
