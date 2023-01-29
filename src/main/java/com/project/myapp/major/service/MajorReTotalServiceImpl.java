package com.project.myapp.major.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.major.dao.IMajorRepository;
import com.project.myapp.major.model.MajorTest;
import com.project.myapp.page.model.Criteria;

@Service
public class MajorReTotalServiceImpl implements MajorReTotalService{
	
	@Autowired
	IMajorRepository majorRepository;
	
	@Override
	public int majorReTotal(MajorTest majorTest, Criteria cri) {
		return majorRepository.majorReTotal(majorTest, cri);
	}
}
