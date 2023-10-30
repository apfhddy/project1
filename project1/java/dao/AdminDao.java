package dao;

import org.apache.ibatis.session.SqlSession;

public class AdminDao {
	
	private SqlSession sqlSession;
	
	public AdminDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
}
