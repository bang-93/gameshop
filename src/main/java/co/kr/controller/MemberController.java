package co.kr.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.kr.service.MemberService;
import co.kr.vo.Member;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	
	// 회원가입 처리중
	
	// 다른거 하는중
	
	@Autowired
	private MemberService memberservice;
	
	// 로그인&회원가입 화면 호출
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String getRegist() throws Exception {
	
		logger.info("get regist");
		System.out.println("get regist");
	
		return "/gameshop/admin/login/login"; // 로그인 페이지 이동
	}
	
	// 회원가입 요청
	@RequestMapping(value = "/member/join/regist", method = RequestMethod.POST)
	public String MemberJoin(Member member) throws Exception {
		
		boolean flag = false;
	
		logger.info("회원가입요청");
		
		flag=memberservice.regist(member);
		
		if (flag==true) {
			return "/home"; // 성공이면 홈으로이동
		}else {
			return "/gameshop/admin/login/login"; // 다시 로그인 및 회원가입 페이지
		}
	}
	
}
