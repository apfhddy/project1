package controller;

import org.springframework.stereotype.Controller;

import service.AdminService;

@Controller
public class AdminController {
	
	private AdminService adminService;
	
	public AdminController(AdminService adminService) {
		this.adminService = adminService;
	}
	
	
}
