package kr.co.gameshop.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GameDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List selectAll() {
		return sqlSessionTemplate.selectList("Game.selectAll");
	}
	
	public void delete(int game_id) {
		sqlSessionTemplate.delete("Game.delete", game_id);
	}
	
}
