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
		
		// if 아이디 중복체크
		int useridCheck = memberDAO.useridCheck(member);
	
		// if 중복없으면 회원등록  
		if (useridCheck == 0) {
			
			flag=memberDAO.regist(member);
		}		
		
		return flag;
	}	
}
