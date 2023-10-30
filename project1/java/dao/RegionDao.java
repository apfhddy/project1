package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.H_Region1;
import vo.H_Region2;
import vo.M_Region1;
import vo.M_Region2;

public class RegionDao {
	
	private SqlSession sqlSession;
	
	public RegionDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<M_Region1> motelRegion1() {
		return sqlSession.selectList("region.motelRegion1");
	}
	
	public List<H_Region1> hotelRegion1() {
		return sqlSession.selectList("region.hotelRegion1");
	}
	
	public List<M_Region2> motelRegion2(int m_region1_idx) {
		return sqlSession.selectList("region.motelRegion2", m_region1_idx);
	}
	
	public List<H_Region2> hotelRegion2(int h_region1_idx) {
		return sqlSession.selectList("region.hotelRegion2", h_region1_idx);
	}

}
