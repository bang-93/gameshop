package kr.co.gameshop.controller.client;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

	
	@Controller
	public class ClientController {
	
		private static final Logger logger = LoggerFactory.getLogger(ClientController.class);
		
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public String home(Locale locale, Model model) {
			logger.info("client locale {}", locale);
			
			model.addAttribute("msg", "test");
			return "home";
		}
		
		//클라이언트 메인 요청
		@GetMapping("/main")
		public String getMain() {
			
			//3
			
			//4
			
			return "gameshop/client/index";
		}
}
