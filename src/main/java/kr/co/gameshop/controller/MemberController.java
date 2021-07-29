package kr.co.gameshop.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.gameshop.service.MemberService;
import kr.co.gameshop.vo.Member;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberservice;
	
	// 로그인&회원가입 화면 호출
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String getRegist() throws Exception {
	
		logger.info("get regist");
		System.out.println("get regist");
	
		return "/gameshop/login/login"; // 로그인 페이지 이동
	}
	
	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/member/useridCheck", method = RequestMethod.POST)
	public int useridCheck(Member member) throws Exception{
		
		int checkResult = memberservice.useridCheck(member);
		
		System.out.println("controller.checkResult: "+checkResult);
		
		return checkResult;
	}
	
	// 회원가입 요청
	@ResponseBody
	@RequestMapping(value = "/member/join/regist", method = RequestMethod.POST)
	public boolean MemberJoin(Member member) throws Exception {
		
		boolean flag = false;
	
		logger.info("회원가입요청");
		System.out.println("회원가입요청");
		
		flag=memberservice.regist(member);
		
		return flag;
		
//		if (flag==true) {
//			return "/home"; // 성공이면 홈으로이동
//		}else {
//			return "/gameshop/login/login"; // 다시 로그인 및 회원가입 페이지
//		}
	}
	
}
