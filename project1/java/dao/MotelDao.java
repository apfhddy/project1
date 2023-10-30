package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import vo.M_Coupon;
import vo.M_Res;
import vo.M_Room;
import vo.Motel;

public class MotelDao {
	
	private SqlSession sqlSession;
	
	public MotelDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<Motel> motelList(int m_region1_idx, int m_region2_idx) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("m_region1_idx", m_region1_idx);
		map.put("m_region2_idx", m_region2_idx);
		
		return sqlSession.selectList("motel.motelList", map);
	}
	
	public List<M_Room> mRoomList(int m_region1_idx, int m_region2_idx, int motel_idx) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("m_region1_idx", m_region1_idx);
		map.put("m_region2_idx", m_region2_idx);
		map.put("motel_idx", motel_idx);
		
		return sqlSession.selectList("motel.mRoomList", map);
	}
	
	public List<M_Room> mRoomRes(int m_region1_idx, int m_region2_idx, int motel_idx, int m_room_idx) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("m_region1_idx", m_region1_idx);
		map.put("m_region2_idx", m_region2_idx);
		map.put("motel_idx", motel_idx);
		map.put("m_room_idx", m_room_idx);
		
		return sqlSession.selectList("motel.mRoomRes", map);
	}
	
	public int insertMotelRes(M_Res m_res) {
		return sqlSession.insert("motel.insertMotelRes", m_res);
	}
	
	public int insertMotelNoCoupon(M_Res m_res) {
		return sqlSession.insert("motel.insertMotelNoCoupon", m_res);
	}

	
	public List<String> checkin(int m_region1_idx, int m_region2_idx, int motel_idx, int m_room_idx) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("m_region1_idx", m_region1_idx);
		map.put("m_region2_idx", m_region2_idx);
		map.put("motel_idx", motel_idx);
		map.put("m_room_idx", m_room_idx);
		
		return sqlSession.selectList("motel.checkin", map);
	}
	
	public List<String> checkout(int m_region1_idx, int m_region2_idx, int motel_idx, int m_room_idx) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("m_region1_idx", m_region1_idx);
		map.put("m_region2_idx", m_region2_idx);
		map.put("motel_idx", motel_idx);
		map.put("m_room_idx", m_room_idx);
		
		return sqlSession.selectList("motel.checkout", map);
	}
	
	public int updateRoomNumber(int m_region1_idx, int m_region2_idx, int motel_idx, int m_room_idx, int room_number) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("m_region1_idx", m_region1_idx);
		map.put("m_region2_idx", m_region2_idx);
		map.put("motel_idx", motel_idx);
		map.put("m_room_idx", m_room_idx);
		map.put("room_number", room_number);
		
		return sqlSession.update("motel.updateRoomNumber", map);
	}
	
	public List<M_Coupon> motelCoupon() {
		return sqlSession.selectList("motel.motelCoupon");
	}
	
	public List<M_Coupon> motelCouponIdx(int m_coupon_idx) {
		return sqlSession.selectList("motel.motelCouponIdx", m_coupon_idx);
	}
	
	public List<M_Res> motelResPhone(String res_phone, String res_number) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("res_phone", res_phone);
		map.put("res_number", res_number);
		
		return sqlSession.selectList("motel.motelResPhone", map);
	}
	
	public String motelName(int m_region1_idx, int m_region2_idx, int motel_idx) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("m_region1_idx", m_region1_idx);
		map.put("m_region2_idx", m_region2_idx);
		map.put("motel_idx", motel_idx);
		
		return sqlSession.selectOne("motel.motelName", map);
	}
	
	public List<M_Room> motelRoomInfo(int m_region1_idx, int m_region2_idx, int motel_idx, int m_room_idx) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("m_region1_idx", m_region1_idx);
		map.put("m_region2_idx", m_region2_idx);
		map.put("motel_idx", motel_idx);
		map.put("m_room_idx", m_room_idx);
		
		return sqlSession.selectList("motel.motelRoomInfo", map);
	}
}



















