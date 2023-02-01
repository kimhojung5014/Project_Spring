package com.project.myapp.major.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.myapp.major.model.MajorTest;
import com.project.myapp.major.service.MajorDetailService;
import com.project.myapp.major.service.MajorListService;
import com.project.myapp.major.service.MajorReTotalService;
import com.project.myapp.major.service.MajorRecommendService;
import com.project.myapp.major.service.MajorTotalService;
import com.project.myapp.page.model.Criteria;
import com.project.myapp.page.model.PageMakerVo;

@Controller
public class MajorController {
	
	@Autowired
	MajorListService majorlistServiceImpl;
	
	@Autowired
	MajorTotalService majorTotalServiceImpl;
	
	@GetMapping(value = "major")
	public String major(Model model,Criteria cri) {
		
		int total = majorTotalServiceImpl.majorTotal(cri);
		
		PageMakerVo pageMake = new PageMakerVo(cri, total);
		
		model.addAttribute("majorList", majorlistServiceImpl.majorList(cri));
		model.addAttribute("pageMaker", pageMake);
		
		return "major/major";
	}
	
	@Autowired
	MajorDetailService majorDetailServiceImpl;
	
	@GetMapping(value = "majorDetail")
	public String majorDetail(String major, Model model) {
		try {
			model.addAttribute("majorDto", majorDetailServiceImpl.majorDetail(major));
		} catch (Exception e) {
			return "job/errorjob";
		}
		
		return "major/majordetail";
	}
	
	@Autowired
	MajorRecommendService majorRecommendServiceImpl;
	
	@PostMapping(value = "majorRecommend")
	public String majorRecommend(MajorTest majorTest, Model model) {
		
		model.addAttribute("majorList", majorRecommendServiceImpl.majorRecommend(majorTest));
		
		model.addAttribute("majorTest", majorTest);
		
		return "major/majorresult";
	}
}
