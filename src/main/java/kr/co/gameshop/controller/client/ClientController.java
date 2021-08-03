package kr.co.gameshop.controller.client;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.gameshop.service.GameService;

	
	@Controller
	public class ClientController {
	
		private static final Logger logger = LoggerFactory.getLogger(ClientController.class);
		
		@Autowired
		private GameService gameService;
		
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public String home(Locale locale, Model model) {
			logger.info("client locale {}", locale);
			
			model.addAttribute("msg", "test");
			return "home";
		}
		
		//클라이언트 메인 요청
		@GetMapping("/main")
		public String getMain(Model model) {
			//게임장르 담아야한다
			
			//3
			List gameList = gameService.game_selectAll();
			
			//4 forwarding
			model.addAttribute("gameList", gameList);
			
			return "gameshop/client/index";
		}
		
		//쇼핑 페이지 요청
		@GetMapping("/shop/list")
		public String getList(Model model) {
			
			//3
			List gameList = gameService.game_selectAll();
			
			//4 forwarding
			model.addAttribute("gameList", gameList);
			
			return "gameshop/client/shop/main";
		}
}
