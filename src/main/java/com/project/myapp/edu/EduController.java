package com.project.myapp.edu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EduController {
	
	@GetMapping(value = "cuinfo")
	public String cununfo() {
		return "edu/cuinfo";
	}
	
	@GetMapping(value = "knou")
	public String knou() {
		return "edu/knou";
	}
	
	@GetMapping(value = "self")
	public String self() {
		return "edu/self";
	}
	@GetMapping(value = "TestDate")
	public String TestDate() {
		return "edu/TestDate";
	}
	@GetMapping(value = "bank")
	public String bank() {
		return "edu/bank";
	}
	@GetMapping(value = "bankrequest")
	public String bankrequest() {
		return "edu/bankrequest";
	}
	@GetMapping(value = "difference")
	public String difference() {
		return "edu/difference";
	}
}
