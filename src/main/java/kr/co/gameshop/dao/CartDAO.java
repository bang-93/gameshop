package kr.co.gameshop.dao;

import java.util.List;

/**import ko.co.gameshop.dto.CartDTO;

public interface CartDAO {
    List<CartDTO> cartMoney();
    void insert(CartDTO dto); //장바구니 추가
    List<CartDTO> listCart(String userid); //장바구니 목록
    void delete(int cart_id); //장바구니 개별 삭제
    void deleteAll(String userid); //장바구니 비우기
    void update(int cart_id); 
    int sumMoney(String userid); //장바구니 금액 합계
    int countCart(String userid, int product_id); //장바구니 상품 갯수
    void updateCart(CartDTO dto); //장바구니 수정 
    void modifyCart(CartDTO dto);
}**/

