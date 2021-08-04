package kr.co.gameshop.service;

import java.util.List;

import kr.co.gameshop.vo.Board;

public interface BoardService {
	public List selectAll();
	public void delete(int board_id);
	public boolean insert(Board board);
	public void update(Board board);
}
