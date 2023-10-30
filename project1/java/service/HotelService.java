package service;

import java.util.List;

import dao.HotelDao;
import vo.H_Coupon;
import vo.H_Res;
import vo.H_Room;
import vo.Hotel;
import vo.M_Room;


public class HotelService {
	
	private HotelDao hotelDao;
	
	public HotelService(HotelDao hotelDao) {
		this.hotelDao = hotelDao;
	}
	
	public List<Hotel> hotelList(int h_region1_idx, int h_region2_idx) {
		return hotelDao.hotelList(h_region1_idx, h_region2_idx);
	}
	
	public List<H_Room> hRoomList(int h_region1_idx, int h_region2_idx, int hotel_idx) {
		return hotelDao.hRoomList(h_region1_idx, h_region2_idx, hotel_idx);
	}
	
	public List<H_Room> hRoomRes(int h_region1_idx, int h_region2_idx, int hotel_idx, int h_room_idx) {
		return hotelDao.hRoomRes(h_region1_idx, h_region2_idx, hotel_idx, h_room_idx);
	}
	
	public int insertHotelRes(H_Res h_res) {
		return hotelDao.insertHotelRes(h_res);
	}
	
	public int insertHotelNoCoupon(H_Res h_res) {
		return hotelDao.insertHotelNoCoupon(h_res);
	}
	
	public List<String> checkin(int h_region1_idx, int h_region2_idx, int hotel_idx, int h_room_idx) {
		return hotelDao.checkin(h_region1_idx, h_region2_idx, hotel_idx, h_room_idx);
	}
	
	public List<String> checkout(int h_region1_idx, int h_region2_idx, int hotel_idx, int h_room_idx) {
		return hotelDao.checkout(h_region1_idx, h_region2_idx, hotel_idx, h_room_idx);
	}
	
	public int updateRoomNumber(int h_region1_idx, int h_region2_idx, int hotel_idx, int h_room_idx, int room_number) {
		return hotelDao.updateRoomNumber(h_region1_idx, h_region2_idx, hotel_idx, h_room_idx, room_number);
	}
	
	public List<H_Coupon> hotelCoupon() {
		return hotelDao.hotelCoupon();
	}
	
	public List<H_Coupon> hotelCouponIdx(int h_coupon_idx) {
		return hotelDao.hotelCouponIdx(h_coupon_idx);
	}
	
	public List<H_Res> hotelResPhone(String res_phone, String res_number) {
		return hotelDao.hotelResPhone(res_phone, res_number);
	}
	
	public String hotelName(int h_region1_idx, int h_region2_idx, int hotel_idx) {
		return hotelDao.hotelName(h_region1_idx, h_region2_idx, hotel_idx);
	}
	
	public List<H_Room> hotelRoomInfo(int h_region1_idx, int h_region2_idx, int hotel_idx, int h_room_idx) {
		return hotelDao.hotelRoomInfo(h_region1_idx, h_region2_idx, hotel_idx, h_room_idx);
	}

}
