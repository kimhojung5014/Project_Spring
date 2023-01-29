package com.project.myapp.major.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.major.dao.IMajorRepository;
import com.project.myapp.page.model.Criteria;

@Service
public class MajorTotalServiceImpl implements MajorTotalService{
	
	@Autowired
	IMajorRepository majorRepository;
	
	@Override
	public int majorTotal(Criteria cri) {
		return majorRepository.majorTotal(cri);
	}
}
