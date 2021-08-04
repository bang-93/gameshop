package kr.co.gameshop.dao;

import java.util.List;

public interface MemberDAO {
	public List selectAll();
	public void delete(int mem_id);
	public void updatePoint(String mem_userid, int mem_point) throws Exception;
}
