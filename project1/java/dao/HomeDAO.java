package dao;

import org.apache.ibatis.session.SqlSession;

public class HomeDAO {
	
	private SqlSession sqlSession;
	
	public HomeDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

}
