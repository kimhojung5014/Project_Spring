package com.project.myapp.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.myapp.test.PostJson;
import com.project.myapp.test.model.Test;

@Controller
public class TestController {
	
	@GetMapping(value = "test")
	public String test() {
		return "test/test";
	}
	
	@PostMapping(value = "test")
	public String test(Test test, Model model) {
	       
	    PostJson pj = new PostJson();
	    
	    try {
	    	model.addAttribute("value", pj.api(test));
		} catch (Exception e) {
			e.printStackTrace();
		}
	    
	    
		return "test/testvalue";
		
	}
}
