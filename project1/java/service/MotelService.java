package service;

import java.util.List;

import dao.MotelDao;
import vo.M_Coupon;
import vo.M_Res;
import vo.M_Room;
import vo.Motel;

public class MotelService {
	
	private MotelDao motelDao;
	
	public MotelService(MotelDao motelDao) {
		this.motelDao = motelDao;
	}
	
	public List<Motel> motelList(int m_region1_idx, int m_region2_idx) {
		return motelDao.motelList(m_region1_idx, m_region2_idx);
	}
	
	public List<M_Room> mRoomList(int m_region1_idx, int m_region2_idx, int motel_idx) {
		return motelDao.mRoomList(m_region1_idx, m_region2_idx, motel_idx);
	}
	
	public List<M_Room> mRoomRes(int m_region1_idx, int m_region2_idx, int motel_idx, int m_room_idx) {
		return motelDao.mRoomRes(m_region1_idx, m_region2_idx, motel_idx, m_room_idx);
	}
	
	public int insertMotelRes(M_Res m_res) {
		return motelDao.insertMotelRes(m_res);
	}
	
	public int insertMotelNoCoupon(M_Res m_res) {
		return motelDao.insertMotelNoCoupon(m_res);
	}
	
	public List<String> checkin(int m_region1_idx, int m_region2_idx, int motel_idx, int m_room_idx) {
		return motelDao.checkin(m_region1_idx, m_region2_idx, motel_idx, m_room_idx);
	}
	
	public List<String> checkout(int m_region1_idx, int m_region2_idx, int motel_idx, int m_room_idx) {
		return motelDao.checkout(m_region1_idx, m_region2_idx, motel_idx, m_room_idx);
	}
	
	public int updateRoomNumber(int m_region1_idx, int m_region2_idx, int motel_idx, int m_room_idx, int room_number) {
		return motelDao.updateRoomNumber(m_region1_idx, m_region2_idx, motel_idx, m_room_idx, room_number);
	}
	
	public List<M_Coupon> motelCoupon() {
		return motelDao.motelCoupon();
	}
	
	public List<M_Coupon> motelCouponIdx(int m_coupon_idx) {
		return motelDao.motelCouponIdx(m_coupon_idx);
	}
	
	public List<M_Res> motelResPhone(String res_phone, String res_number) {
		return motelDao.motelResPhone(res_phone, res_number);
	}
	
	public String motelName(int m_region1_idx, int m_region2_idx, int motel_idx) {
		return motelDao.motelName(m_region1_idx, m_region2_idx, motel_idx);
	}
	
	public List<M_Room> motelRoomInfo(int m_region1_idx, int m_region2_idx, int motel_idx, int m_room_idx) {
		return motelDao.motelRoomInfo(m_region1_idx, m_region2_idx, motel_idx, m_room_idx);
	}

}
