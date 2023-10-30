package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.Hotel;
import vo.Motel;

public class MapDao {
	
	private SqlSession sqlSession;
	
	public MapDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<Motel> motelMap(String short_address) {
		return sqlSession.selectList("map.motelMap", short_address);
	}
	
	public List<Hotel> hotelMap(String short_address) {
		return sqlSession.selectList("map.hotelMap", short_address);
	}

}
