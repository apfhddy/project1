package dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import vo.UsersVO;

public class UsersDAO {
	
	private SqlSession usersSqlSession;
	
	public UsersDAO(SqlSession usersSqlSession) {
		System.out.println("dao 실행");
		this.usersSqlSession = usersSqlSession;
	}
	
	public Map<String,Object> checkEmail(String email) {
		return usersSqlSession.selectOne("users.checkEmail", email);
	}
	
	public int checkPhone(String phone) {
		return usersSqlSession.selectOne("users.checkPhone",phone) == null ? 0 : 1;
	}
	
	public int insertUsers(UsersVO dto) {
		return usersSqlSession.insert("users.insertUsers", dto);
	}
	
	public Map<String,Object> checkLogin(Map<String,Object> map) {
		return usersSqlSession.selectOne("users.checkLogin", map);
	}
	
	public UsersVO selecUser(int idx) {
		return usersSqlSession.selectOne("selectUser", idx);
	}
	
	public int updateAgree_type(Map<String,Object> map) {
		return usersSqlSession.update("users.updateAgreetype",map);
	}
	
	public int updateStatus(int idx) {
		return usersSqlSession.update("users.updateStatus",idx);
	}
	
}
