package kr.co.gameshop.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.gameshop.vo.CartVO;

@Repository
public class CartDAO {
	@Inject
	SqlSession sqlSession;
	
	//장바구니 추가
	@Override
	public void insert(CartVO vo) {
		sqlSession.insert("cart.insertCart",vo);
	}
	//장바구니 목록
	@Override
	public List<CartVO> listCart(String userId){
		return sqlSession.selectList("cart.listCart", userId);
	}
	//장바구니 삭제
	@Override
	public void delete(int cartId) {
		sqlSession.delete("cart.deleteCart", cartId);
	}
	//장바구니 수정
	@Override
	public void modifyCart(CartVO vo) {
		sqlSession.update("cart.modifyCart",vo);
	}
	//장바구니 금액 합계
	@Override
	public int sumMoney(String userId) {
		sqlSession.selectOne("cart.sumMoney", userId);
		return sqlSession.selectOne("cart.sumMoney", userId);
	}
	//장바구니 동일한 상품 레코드 확인
	@Override
	public int countCart(int productId, String userId) {
		Map<String, Object> map = new HasMap<String, Object>();
		map.put("productId", productId);
		map.put("userId", userId);
		return sqlSession.selectOne("cart.countCart", map);
	}
	//장바구니 수량 변경
	@Override
	public void updateCart(CartVO,vo) {
		sqlSession.update("cart.sumCart",vo);
	}

}
