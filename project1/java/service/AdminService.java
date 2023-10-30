package service;

import dao.AdminDao;

public class AdminService {
	
	private AdminDao adminDao;
	
	public AdminService(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	
	
}
