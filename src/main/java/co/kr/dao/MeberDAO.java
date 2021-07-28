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

	public boolean regist(Member member) throws Exception {
		boolean flag=false;
		
		
		try {
			sqlsession.insert("co.kr.mappers.BoardMapper.memberRegist",member);
			flag=true;
		} catch (Exception e) {
			flag=false;
		}
		return flag;
	}
	
}
