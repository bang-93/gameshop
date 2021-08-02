package kr.co.gameshop.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MybatisBoardDAO implements BoardDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List selctAll() {
		return sqlSessionTemplate.selectList("Board.selectAll");
	}

	@Override
	public void delete(int board_id) {
		sqlSessionTemplate.delete("Board.delete",board_id);
		
	}

}
