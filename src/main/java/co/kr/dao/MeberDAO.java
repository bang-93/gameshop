package co.kr.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.kr.vo.Member;

@Repository
@Mapper
public class MeberDAO {
	
	@Autowired
	SqlSession sqlsession;
	
	// 회원가입 요청
	public boolean regist(Member member) throws Exception {
		boolean flag=false;		
		
		try {
			sqlsession.insert("co.kr.mappers.memberMapper.memberRegist",member);
			flag=true;
		} catch (Exception e) {
			flag=false;
		}
		return flag;
	}
	
	// 아이디 중복 체크
	public int useridCheck(Member member) { 
		
		int useridCheck = 0;
		
		useridCheck = sqlsession.selectOne("co.kr.mappers.memberMapper.useridCheck", member);
		System.out.println("useridCheck: "+useridCheck);
		
		
		return useridCheck;
	}
	
}
