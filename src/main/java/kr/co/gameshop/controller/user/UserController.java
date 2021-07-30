package kr.co.gameshop.controller.user;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.gameshop.service.UserService;
import kr.co.gameshop.vo.Member;

@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
	
	// 로그인&회원가입 화면 호출
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String getRegist() throws Exception {

		logger.info("get regist");
	
		return "/gameshop/login/login"; // 로그인 페이지 이동
	}
	
	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/user/useridCheck", method = RequestMethod.POST)
	public int useridCheck(Member member) throws Exception{
		
		int checkResult = userService.useridCheck(member);
		
		System.out.println("controller.checkResult: "+checkResult);
		
		return checkResult;
	}
	
	// 회원가입 요청
	@ResponseBody
	@RequestMapping(value = "/user/join/regist", method = RequestMethod.POST)
	public boolean MemberJoin(Member member) throws Exception {
		
		boolean flag = false;
	
		logger.info("회원가입요청");
		System.out.println("회원가입요청");
		
		flag=userService.regist(member);
		
		return flag;
		
	}
	
	// 로그인 요청
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Member member, HttpServletRequest request, RedirectAttributes attributes) throws Exception{
		
		logger.info("post login");
		
		HttpSession session = request.getSession();
		Member login = userService.login(member);
		
		if(login==null) {
			session.setAttribute("member", null);
			attributes.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("member", login);
		}
		
		return "/home";
	}
	
}
