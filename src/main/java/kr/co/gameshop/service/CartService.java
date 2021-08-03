package kr.co.gameshop.service;

import java.util.List;

import kr.co.gameshop.vo.Cart;

public interface CartService {
	public void insert(Cart cart);
	public List selectAll();
	public List selectAllJoin(int member_id);
	public void update(Cart cart);
	public void delete(int cart_id);
	public void deleteAll(int member_id);
}
