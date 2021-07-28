package co.kr.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.vo.Member;

import co.kr.dao.MeberDAO;

@Service
public class MemberService {
	
	@Autowired
	MeberDAO memberDAO;
	
	//회원등록
	public boolean regist(Member member) throws Exception {
		
		boolean flag =false;
		
		flag=memberDAO.regist(member);
	
		return flag;
	}
}
