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
	
	public List game_selectAll() {
		return gameDAO.game_selectAll();
	}

	public void delete(int game_id) {
		gameDAO.delete(game_id);
	}
	
}
