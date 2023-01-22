package com.project.myapp.member.service;

import com.project.myapp.member.model.JoinVo;

public interface LoginService {

	public JoinVo login(String id, String pw);
}
