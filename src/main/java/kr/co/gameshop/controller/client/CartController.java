package kr.co.gameshop.controller.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.co.gameshop.service.CartService;

@Controller
public class CartController {

	@Autowired
	private CartService cartService;
	
	//장바구니 목록 가져오기
	
}
