package kr.co.gameshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.gameshop.dao.BoardDAO;
import kr.co.gameshop.vo.Board;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public List selectAll() {
		return boardDAO.selectAll();
	}

	@Override
	public void delete(int board_id) {
		boardDAO.delete(board_id);
	}

	@Override
	public void insert(Board board) {
		boardDAO.insert(board);
		
	}

	@Override
	public void update(Board board) {
		boardDAO.update(board);
		
	}

}
