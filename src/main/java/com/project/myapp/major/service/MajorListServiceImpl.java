package com.project.myapp.major.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.myapp.major.dao.IMajorRepository;
import com.project.myapp.major.model.MajorVo;
import com.project.myapp.page.model.Criteria;

@Service
public class MajorListServiceImpl implements MajorListService{
	
	@Autowired
	IMajorRepository majorRepository;
	
	@Override
	public List<MajorVo> majorList(Criteria cri) {
		return majorRepository.majorList(cri);
	}
}
