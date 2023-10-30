package service;

import dao.HomeDAO;

public class HomeService {
	
	private HomeDAO homeDAO;
	
	public HomeService(HomeDAO homeDAO) {
		this.homeDAO = homeDAO;
	}

}
