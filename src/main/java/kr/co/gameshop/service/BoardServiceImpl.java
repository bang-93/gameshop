package kr.co.gameshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gameshop.dao.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public List selctAll() {
		return boardDAO.selctAll();
	}

	@Override
	public void delete(int board_id) {
		boardDAO.delete(board_id);
	}

}
