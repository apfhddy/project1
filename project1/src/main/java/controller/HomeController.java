package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import common.ViewPath;
import service.HomeService;

@Controller
public class HomeController {
	
	private HomeService homeService;
	
	public HomeController(HomeService homeService) {
		this.homeService = homeService;
	}
	
	@RequestMapping("/")
	public String home() {
		return ViewPath.PRO + "index.jsp";
	}

}
