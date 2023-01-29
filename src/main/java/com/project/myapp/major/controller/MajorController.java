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
	
	@Autowired
	MajorReTotalService majorReTotalServiceImpl;
	
	@PostMapping(value = "majorRecommend")
	public String majorRecommend(MajorTest majorTest, Model model, Criteria cri) {
		
		int total = majorReTotalServiceImpl.majorReTotal(majorTest, cri);

		PageMakerVo pageMake = new PageMakerVo(cri, total);

		model.addAttribute("majorList", majorRecommendServiceImpl.majorRecommend(majorTest, cri));
		model.addAttribute("pageMaker", pageMake);
		
//		if (majorTest.getPriority().equals("employmentdata")) {
//			majorTest.setPriority("취업률");
//		}else if (majorTest.getPriority().equals("salarydata")) {
//			majorTest.setPriority("임금");
//		}else {
//			majorTest.setPriority("직업 만족도");
//		}
//		if (majorTest.getUni().equals("all")) {
//			majorTest.setUni("대학교(4,2년제 전체)");
//		}
		
		model.addAttribute("majorTest", majorTest);
		
		return "major/majorresult";
	}
}
