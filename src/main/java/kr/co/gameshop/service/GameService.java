package kr.co.gameshop.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.gameshop.dao.GameDAO;
import kr.co.gameshop.vo.Game;

@Service
public class GameService {
	
	@Inject
	GameDAO gameDAO;
	
	// 게임 조회
	public List game_selectAll() {
		return gameDAO.selectAll();
	}
	
// 게임 클릭 조회
//	public Game read(int game_id) {
//		return gameDAO.read(game_id);
//	}
	
	// 게임 등록
	public void insert(Game game) {
		gameDAO.insert(game);
	}
	
	// 게임 수정
	public void update(Game game) {
		gameDAO.update(game);
	}

	// 게임 삭제
	public void delete(int game_id) {
		gameDAO.delete(game_id);
	}
	
}
