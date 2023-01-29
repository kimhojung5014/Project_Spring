package com.project.myapp.major.service;

import java.util.List;

import com.project.myapp.major.model.MajorVo;
import com.project.myapp.page.model.Criteria;

public interface MajorListService {
	public List<MajorVo> majorList(Criteria cri);
}
