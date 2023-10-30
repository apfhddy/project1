package service;

import java.util.Map;

import dao.UsersDAO;
import vo.UsersVO;

public class UsersService {

	private UsersDAO usersDao;

	public UsersService(UsersDAO usersDao) {
		System.out.println("서비스 실행");
		this.usersDao = usersDao;
	}

	public Map<String,Object> checkEmail(String email) {
		return usersDao.checkEmail(email);
	}

	public int checkPhone(String phone) {
		return usersDao.checkPhone(phone);
	}

	public int insertUsers(UsersVO dto) {
		return usersDao.insertUsers(dto);
	}

	public Map<String, Object> checkLogin(Map<String, Object> map) {
		return usersDao.checkLogin(map);
	}

	public UsersVO selectUser(int idx) {
		return usersDao.selecUser(idx);
	}

	public int updateAgree_type(Map<String, Object> map) {
		return usersDao.updateAgree_type(map);
	}
	
	public int updateStatus(int idx) {
		return usersDao.updateStatus(idx);
	}
	
}
