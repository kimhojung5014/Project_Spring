package com.project.myapp.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.test.model.PostJson;
import com.project.myapp.test.model.TestVo;

@Service
public class PostJsonServiceImpl implements PostJsonService{

	@Autowired
	PostJson postJson;
	
	@Override
	public String postJson(TestVo testVo) {
		return postJson.postJson(testVo);
	}
}
