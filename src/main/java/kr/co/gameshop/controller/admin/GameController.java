package kr.co.gameshop.controller.admin;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.gameshop.service.GameService;
import kr.co.gameshop.vo.Game;

@Controller
public class GameController {
	
	private static final Logger logger = LoggerFactory.getLogger(GameController.class);
	
	@Autowired
	private GameService gameService;

	// 게임 조회
	@GetMapping("/game/list")
	public String getList(Model model) {
		
		logger.info("post Game list");
		
		// 3단계
		List gameList = gameService.game_selectAll();
		
		// 4단계
		model.addAttribute("gameList", gameList);
		return "/gameshop/admin/product/game_list";
	}
	
	// 게임 수정	
	@RequestMapping(value = "/game/update", method = RequestMethod.POST)
	public String update(Game game) throws Exception{
		
		logger.info("post Game update");
		
		gameService.update(game);

		logger.info("update complete");
		
		return "redirect:/gameshop/admin/product/game_list";
	}	

	// 게임 삭제
	@RequestMapping(value = "/game/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(int game_id) {
		
		logger.info("post Game delete");
		
		gameService.delete(game_id);
		
		return "";
	}
}
