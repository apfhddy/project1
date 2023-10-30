package controller;

import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import common.ViewPath;
import service.HotelService;
import vo.H_Coupon;
import vo.H_Res;
import vo.H_Room;
import vo.Hotel;


@Controller
public class HotelController {
	
	private HotelService hotelService;
	
	public HotelController(HotelService hotelService) {
		this.hotelService = hotelService;
	}
	
	@RequestMapping("/hotel/hotellist")
	public String hotelList(Model model, int h_region1_idx, int h_region2_idx) {
		
		List<Hotel> list = hotelService.hotelList(h_region1_idx, h_region2_idx);
		
		model.addAttribute("list", list);
		
		return ViewPath.HOTEL + "hotellist.jsp";
	}
	
	@RequestMapping("/hotel/checkdate")
	public String checkDate(Model model, int h_region1_idx, int h_region2_idx, int hotel_idx, String checkin, String checkout, int max_date) {
		
		String checkin1 = checkin.replaceAll("-", "");
		String checkout1 = checkout.replaceAll("-", "");
		
		LocalDate l = LocalDate.now();
		DateTimeFormatter f = DateTimeFormatter.ofPattern("yyyyMMdd");
		
		String now = f.format(l);
		int today = Integer.parseInt(now);
		
		int in = Integer.parseInt(checkin1);
		int out = Integer.parseInt(checkout1);
		
		if(out<=in) {
			model.addAttribute("h_region1_idx", h_region1_idx);
			model.addAttribute("h_region2_idx", h_region2_idx);
			
			return ViewPath.HOTEL + "result.jsp";
		}else if((out-in)>max_date) {
			model.addAttribute("m_region1_idx", h_region1_idx);
			model.addAttribute("m_region2_idx", h_region2_idx);
			
			return ViewPath.MOTEL + "maxdateresult.jsp";
		}else if(in < today) {
			model.addAttribute("h_region1_idx", h_region1_idx);
			model.addAttribute("h_region2_idx", h_region2_idx);
			
			return ViewPath.HOTEL + "result.jsp";
		}else {
			
			List<H_Room> list = hotelService.hRoomList(h_region1_idx, h_region2_idx, hotel_idx);
			List<H_Room> list_backup = list;
			
			for (int i = 0; i < list.size(); i++) {
				List<String> list1 = hotelService.checkin(h_region1_idx, h_region2_idx, hotel_idx, list.get(i).getH_room_idx());
				List<String> list2 = hotelService.checkout(h_region1_idx, h_region2_idx, hotel_idx, list.get(i).getH_room_idx());
				int rn = list.get(i).getRoom_number();
				
				for (int j = 0; j < list1.size(); j++) {
					int ci = Integer.parseInt((list1.get(j)).replaceAll("-", ""));
					int co = Integer.parseInt((list2.get(j)).replaceAll("-", ""));
					
					if(ci < out && co > in) {
						
						rn--;
					}
				}

				hotelService.updateRoomNumber(h_region1_idx, h_region2_idx, hotel_idx, list.get(i).getH_room_idx(), rn);
			}
			
			list = hotelService.hRoomList(h_region1_idx, h_region2_idx, hotel_idx);
			
			List<H_Coupon> couponList = hotelService.hotelCoupon();
			
			model.addAttribute("list", list);
			model.addAttribute("couponList", couponList);
			model.addAttribute("checkin", checkin);
			model.addAttribute("checkout", checkout);
			
			for (int i = 0; i < list_backup.size(); i++) {
				hotelService.updateRoomNumber(h_region1_idx, h_region2_idx, hotel_idx, list_backup.get(i).getH_room_idx(), list_backup.get(i).getRoom_number());
			}
			
			return ViewPath.HOTEL + "hroomlist.jsp";
		}
	}
	
	
	@RequestMapping("/hotel/hroomlist")
	public String hRoomList(Model model, int h_region1_idx, int h_region2_idx, int hotel_idx) {
		
		List<H_Room> list = hotelService.hRoomList(h_region1_idx, h_region2_idx, hotel_idx);
		
		model.addAttribute("list", list);
		
		return ViewPath.HOTEL + "hroomlist.jsp";
	}
	
	@RequestMapping("/res/h_res")
	public String h_res(Model model, int h_region1_idx, int h_region2_idx, int hotel_idx, int h_room_idx, 
			String checkin, String checkout, int person_size, String day_price, String h_coupon_idx) {
		
		List<H_Room> list = hotelService.hRoomRes(h_region1_idx, h_region2_idx, hotel_idx, h_room_idx);
		
		String checkin1 = checkin.replaceAll("-", "");
		String checkout1 = checkout.replaceAll("-", "");
		
		int in = Integer.parseInt(checkin1);
		int out = Integer.parseInt(checkout1);
		
		int total_price = Integer.parseInt(day_price.replaceAll(",", "")) * (out - in);
		int coupon_price = 0;
		int h_coupon_idx1 = Integer.parseInt(h_coupon_idx);

		if(h_coupon_idx1 != 0) {
			
			List<H_Coupon> couponList = hotelService.hotelCouponIdx(h_coupon_idx1);
			if(couponList.get(0).getName().contains("%")) {
				coupon_price = total_price - (total_price / 100 * couponList.get(0).getSale());
			}else {
				coupon_price = total_price - couponList.get(0).getSale();
			}
			
		}else {
			coupon_price = total_price;
		}
		
		DecimalFormat f = new DecimalFormat("###,###"); 
		String total = f.format(total_price);
		String coupon = f.format(coupon_price);
		
		model.addAttribute("list", list);
		model.addAttribute("checkin", checkin);
		model.addAttribute("checkout", checkout);
		model.addAttribute("total_price", total);
		model.addAttribute("coupon_price", coupon);
		model.addAttribute("person_size", person_size);
		model.addAttribute("h_coupon_idx", h_coupon_idx1);
		
		return "/WEB-INF/views/res/h_res.jsp";
	}
	
	@RequestMapping("/res/resulthotel")
	public String insertHotelRes(Model model, H_Res h_res) {
		
			String msg = "";
			String res_phone = h_res.getRes_phone().replaceAll("-", "");
			String use_phone = h_res.getUse_phone().replaceAll("-", "");
			h_res.setRes_phone(res_phone);
			h_res.setUse_phone(use_phone);
			
			LocalDate d = LocalDate.now();
			DateTimeFormatter d1 = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			
			String date = d.format(d1);
		    
			date = date.replaceAll("-", "");
			int idate = Integer.parseInt(date);
			
			int res_number = idate + ((int) (Math.random() * 10000000)+1);
			h_res.setRes_number(res_number);
			
			
			int i = 0;
			
			if(h_res.getH_coupon_idx() != 0) {
				i = hotelService.insertHotelRes(h_res);
			}else {
				i = hotelService.insertHotelNoCoupon(h_res); 
			}
			
			
			if(i != 0) {
				msg = "예약 성공!";
				
				model.addAttribute("msg", msg);
				
				return ViewPath.RES + "resulthotel.jsp";
			}else {
				msg = "예약 실패!";
				
				model.addAttribute("msg", msg);
				
				return ViewPath.RES + "resulthotel.jsp";
			}
	}
	

	@RequestMapping("/res/hotel")
	public String hotelResList(Model model, String res_phone, String res_number) {
		
		String res_phone1 = res_phone.replaceAll("-", "");
		
		List<H_Res> list = hotelService.hotelResPhone(res_phone1, res_number);
		List<String> hotelName = new ArrayList<String>();
		
		for (int i = 0; i < list.size(); i++) {
			String name = hotelService.hotelName(list.get(i).getH_region1_idx(), list.get(i).getH_region2_idx(), list.get(i).getHotel_idx());
			hotelName.add(name);
			list.get(i).setRes_phone(res_phone);
		}
		
		model.addAttribute("list", list);
		model.addAttribute("hotelName", hotelName);
		
		return ViewPath.RES + "hotelresphone.jsp";
	}
	
	@RequestMapping("/res/hotelroominfo")
	public String hotelRoomInfo(Model model, int h_region1_idx, int h_region2_idx, int hotel_idx, int h_room_idx) {
		List<H_Room> list = hotelService.hotelRoomInfo(h_region1_idx, h_region2_idx, hotel_idx, h_room_idx);
		
		model.addAttribute("list", list);
		
		return ViewPath.RES + "hotelroominfo.jsp";
		
	}

}
