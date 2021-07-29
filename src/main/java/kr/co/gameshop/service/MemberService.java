package kr.co.gameshop.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gameshop.dao.MeberDAO;
import kr.co.gameshop.vo.Member;

@Service
public class MemberService {
	
	@Autowired
	MeberDAO memberDAO;
	
	//회원등록
	public boolean regist(Member member) throws Exception {
		boolean flag =false;
	
		// 회원등록  	
			flag=memberDAO.regist(member);
		
		return flag;
	}	
	
	// 아이디 중복확인
	public int useridCheck(Member member) throws Exception{
		
		int checkResult = memberDAO.useridCheck(member);
		
		return checkResult;
	}
}
