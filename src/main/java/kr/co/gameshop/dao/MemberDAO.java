package kr.co.gameshop.dao;

import java.util.List;

public interface MemberDAO {
	public List selectAll();
	public void delete(int mem_id);
}
