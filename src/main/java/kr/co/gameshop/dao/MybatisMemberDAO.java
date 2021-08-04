package kr.co.gameshop.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MybatisMemberDAO implements MemberDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	private SqlSessionTemplate session;
	
	@Override
	public List selectAll() {
		return sqlSessionTemplate.selectList("Member.selectAll");
	}

	@Override
	public void delete(int mem_id) {
		sqlSessionTemplate.delete("Member.delete",mem_id);
		
	}

	@Override
	public void updatePoint(String mem_userid, int mem_point) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_userid", mem_userid);
		map.put("mem_point", mem_point);
		session.update("Member.updatePoint", map);
		
		
	}

}
