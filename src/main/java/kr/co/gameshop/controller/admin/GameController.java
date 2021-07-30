package kr.co.gameshop.controller.admin;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.gameshop.service.GameService;

@Controller
public class GameController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private GameService gameService;

	// 게임 조회
	@GetMapping("/game/list")
	public String getList(Model model) {
		
		logger.info("post Game list");
		
		// 3단계
		List gameList = gameService.selectAll();
		
		// 4단계
		model.addAttribute("gameList", gameList);
		return "/gameshop/admin/product/game_list";
	}

	// 게임삭제

}
