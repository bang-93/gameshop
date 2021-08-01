package kr.co.gameshop.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.gameshop.vo.Game;

@Repository
public class GameDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	// 게임 조회
	public List selectAll() {
		return sqlSessionTemplate.selectList("Game.selectAll");
	}
	
// 게임 클릭 조회
//	public Game read(int game_id) {
//		return sqlSessionTemplate.selectOne("Game.read", game_id);
//	}
	
	// 게임 등록
	public void insert(Game game) {
		sqlSessionTemplate.insert("Game.insert", game);
	}
	
	// 게임 수정
	public void update(Game game) {
		sqlSessionTemplate.update("Game.update", game);
	}	
	
	// 게임 삭제
	public void delete(int game_id) {
		sqlSessionTemplate.delete("Game.delete", game_id);
	}
	
	
}
