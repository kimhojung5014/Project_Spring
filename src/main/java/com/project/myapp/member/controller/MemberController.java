package com.project.myapp.member.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.myapp.member.model.JoinVo;
import com.project.myapp.member.service.EditService;
import com.project.myapp.member.service.IdCheckService;
import com.project.myapp.member.service.InsertJoinService;
import com.project.myapp.member.service.LoginService;
import com.project.myapp.member.service.NickNameCheckService;
import com.project.myapp.member.service.ResetPwService;
import com.project.myapp.member.service.SearchIdService;
import com.project.myapp.member.service.SearchPwService;


@Controller
public class MemberController {
	
	//로그인
	@Autowired
	LoginService loginService;
	
	//회원가입
	@Autowired
	InsertJoinService joinService; 
	
	//아이디 체크
	@Autowired
	IdCheckService idCheckService;
	
	//닉네임 체크
	@Autowired
	NickNameCheckService nickNameCheckService;
	
	//마이페이지
	@Autowired
	EditService editService;
	
	//아이디 검색
	@Autowired
	SearchIdService searchidService;
	
	//비밀번호 검색
	@Autowired
	SearchPwService searchPwService;
	
	//비밀번호 리셋
	@Autowired
	ResetPwService resetPwService;

	
	@GetMapping(value = "/")
	public String home() {
		return "index";
	}
	
	//회원가입
	@GetMapping(value = "join")
	public String join() {
		return "member/join";
	}
	
	@PostMapping(value = "join")
	public String join(JoinVo joinVo, Model model) {
		
		joinService.insertJoin(joinVo);
		
		return "redirect:/login";
	}
	
	//로그인
	@GetMapping(value = "login")
	public String login() {
		return "member/login";
	}
	
	@PostMapping(value = "login")
	public String login(String userId, String pw, HttpSession session) {
		
		JoinVo joinvo =  loginService.login(userId, pw);
		if (joinvo != null) {
			session.setAttribute("userData", joinvo);
			return "redirect:/";
		}else {
			return "member/loginfalse";
		}
	}
	
	//아이디 중복체크
	@GetMapping(value = "idCheck")
	public String idCheck(String userId, Model model, HttpSession session) {
		
		if (idCheckService.idCheck(userId)) {
			session.setAttribute("userId", userId);
			model.addAttribute("idCheck", "OK");
		}
		return "member/idCheck";
	}
	//닉네임 중복체크
	@GetMapping(value = "nickNameCheck")
	public String nickNameCheck(String nickName,String page, Model model, HttpSession session) {
		
		if (nickNameCheckService.nickNameCheck(nickName)) {
			session.setAttribute("nickName", nickName);
			model.addAttribute("nickCheck", "OK");
			//page <- 회원가입, 마이페이지 구별하는 변수
			model.addAttribute("page",page);
		}
		return "member/nickCheck";
	}
	//아이디 찾기 페이지만 이동
	@GetMapping(value = "findId")
	public String findId() {
		return "member/findid";
	}
	@PostMapping(value = "searchId")
	public String searchId(String userName, String data, Model model) {
		data = data.replace(",", "");
		System.out.println("컨트롤러 받는 이름 "+userName);
		System.out.println("컨트롤러 받는 정보 "+data);
		
		String id = searchidService.searchId(userName, data);
		System.out.println("컨트롤러"+id);
			model.addAttribute("id", id);
			
			return "member/searchId";
	}
	
	//비밀번호 찾기 <- 요건 비밀번호 변경으로 바꾸기
	
	@GetMapping(value = "findPw")
	public String findPw() {
		return "member/findpw";
	}
	
	//findpw에서 입력받은 정보로 pw 검색 pw재설정 창으로 이동
	@PostMapping(value = "searchPw")
	public String searchPw(String userId, String data, Model model) {
		data = data.replace(",", "");
		System.out.println("컨트롤러 받는 이름 "+userId);
		System.out.println("컨트롤러 받는 정보 "+data);
		
		String pw = searchPwService.searchPw(userId, data);
		
		if (pw != null) {
			model.addAttribute("userId",userId);
			model.addAttribute("pw", pw);
		}
		return "member/searchPw";
	}

	//비밀번호 재설정
	@PostMapping(value = "resetPw")
	public String resetPw(String userId,String pw, Model model) {
		System.out.println("새로 입력받은 번호: "+pw);
		resetPwService.resetPw(userId, pw);
		
		//메세지 출력화면에 어떤 페이지 메세지 출력할 지 보내주는 변수
		model.addAttribute("page", "resetPw");
		
		return "member/Msg";
	}
	
	//로그아웃 시 세션 정보 지우고 메인으로 전환
	@GetMapping(value = "logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping(value = "mypage")
	public String mypage() {
		return "member/mypage";
	}
	
	@PostMapping(value = "edit")
	public String edit(JoinVo joinVo) {
		
		editService.edit(joinVo);
		
		return "member/Msg";
	}
}
