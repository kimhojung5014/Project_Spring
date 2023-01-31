package com.project.myapp.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.myapp.test.model.PostJson;
import com.project.myapp.test.model.TestVo;
import com.project.myapp.test.service.PostJsonService;

@Controller
public class JobValuesTestController {
	
	@GetMapping(value = "test")
	public String test() {
		return "test/test";
	}
	
	@Autowired
	PostJsonService postJsonServiceImpl;
	
	@PostMapping(value = "test")
	public String testVo(TestVo testVo, Model model) {
	    
		model.addAttribute("value", postJsonServiceImpl.postJson(testVo));
		
		return "test/testvalue";
		
	}
}
