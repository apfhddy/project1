package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import vo.H_Coupon;
import vo.H_Res;
import vo.H_Room;
import vo.Hotel;
import vo.M_Room;


public class HotelDao {
	
	private SqlSession sqlSession;
	
	public HotelDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<Hotel> hotelList(int h_region1_idx, int h_region2_idx) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("h_region1_idx", h_region1_idx);
		map.put("h_region2_idx", h_region2_idx);
		
		return sqlSession.selectList("hotel.hotelList", map);
	}
	
	public List<H_Room> hRoomList(int h_region1_idx, int h_region2_idx, int hotel_idx) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("h_region1_idx", h_region1_idx);
		map.put("h_region2_idx", h_region2_idx);
		map.put("hotel_idx", hotel_idx);
		
		return sqlSession.selectList("hotel.hRoomList", map);
	}
	
	public List<H_Room> hRoomRes(int h_region1_idx, int h_region2_idx, int hotel_idx, int h_room_idx) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("h_region1_idx", h_region1_idx);
		map.put("h_region2_idx", h_region2_idx);
		map.put("hotel_idx", hotel_idx);
		map.put("h_room_idx", h_room_idx);
		
		return sqlSession.selectList("hotel.hRoomRes", map);
	}
	
	public int insertHotelRes(H_Res h_res) {
		return sqlSession.insert("hotel.insertHotelRes", h_res);
	}
	
	public int insertHotelNoCoupon(H_Res h_res) {
		return sqlSession.insert("hotel.insertHotelNoCoupon", h_res);
	}
	
	
	public List<String> checkin(int h_region1_idx, int h_region2_idx, int hotel_idx, int h_room_idx) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("h_region1_idx", h_region1_idx);
		map.put("h_region2_idx", h_region2_idx);
		map.put("hotel_idx", hotel_idx);
		map.put("h_room_idx", h_room_idx);
		
		return sqlSession.selectList("hotel.checkin", map);
	}
	
	public List<String> checkout(int h_region1_idx, int h_region2_idx, int hotel_idx, int h_room_idx) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("h_region1_idx", h_region1_idx);
		map.put("h_region2_idx", h_region2_idx);
		map.put("hotel_idx", hotel_idx);
		map.put("h_room_idx", h_room_idx);
		
		return sqlSession.selectList("hotel.checkout", map);
	}
	
	public int updateRoomNumber(int h_region1_idx, int h_region2_idx, int hotel_idx, int h_room_idx, int room_number) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("h_region1_idx", h_region1_idx);
		map.put("h_region2_idx", h_region2_idx);
		map.put("hotel_idx", hotel_idx);
		map.put("h_room_idx", h_room_idx);
		map.put("room_number", room_number);
		
		return sqlSession.update("hotel.updateRoomNumber", map);
	}
	
	public List<H_Coupon> hotelCoupon() {
		return sqlSession.selectList("hotel.hotelCoupon");
	}
	
	public List<H_Coupon> hotelCouponIdx(int h_coupon_idx) {
		return sqlSession.selectList("hotel.hotelCouponIdx", h_coupon_idx);
	}
	
	public List<H_Res> hotelResPhone(String res_phone, String res_number) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("res_phone", res_phone);
		map.put("res_number", res_number);
		
		return sqlSession.selectList("hotel.hotelResPhone", map);
	}
	
	public String hotelName(int h_region1_idx, int h_region2_idx, int hotel_idx) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("h_region1_idx", h_region1_idx);
		map.put("h_region2_idx", h_region2_idx);
		map.put("hotel_idx", hotel_idx);
		
		return sqlSession.selectOne("hotel.hotelName", map);
	}
	
	public List<H_Room> hotelRoomInfo(int h_region1_idx, int h_region2_idx, int hotel_idx, int h_room_idx) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("h_region1_idx", h_region1_idx);
		map.put("h_region2_idx", h_region2_idx);
		map.put("hotel_idx", hotel_idx);
		map.put("h_room_idx", h_room_idx);
		
		return sqlSession.selectList("hotel.hotelRoomInfo", map);
	}

}
