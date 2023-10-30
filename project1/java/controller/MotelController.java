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
import service.MotelService;
import vo.M_Coupon;
import vo.M_Res;
import vo.M_Room;
import vo.Motel;

@Controller
public class MotelController {
	
	private MotelService motelService;
	
	public MotelController(MotelService motelService) {
		this.motelService = motelService;
	}
	
	
	@RequestMapping("/motel/motellist")
	public String motelList(Model model, int m_region1_idx, int m_region2_idx) {
		
		List<Motel> list = motelService.motelList(m_region1_idx, m_region2_idx);
		
		model.addAttribute("list", list);
		
		return ViewPath.MOTEL + "motellist.jsp";
	}
	
	@RequestMapping("/motel/checkdate")
	public String checkDate(Model model, int m_region1_idx, int m_region2_idx, int motel_idx, String checkin, String checkout, int max_date) {
		String checkin1 = checkin.replaceAll("-", "");
		String checkout1 = checkout.replaceAll("-", "");
		LocalDate l = LocalDate.now();
		DateTimeFormatter f = DateTimeFormatter.ofPattern("yyyyMMdd");
		
		String now = f.format(l);
		int today = Integer.parseInt(now);
		
		int in = Integer.parseInt(checkin1);
		int out = Integer.parseInt(checkout1);
		
		if(out<=in) {
			model.addAttribute("m_region1_idx", m_region1_idx);
			model.addAttribute("m_region2_idx", m_region2_idx);
			
			return ViewPath.MOTEL + "result.jsp";
		}else if((out-in)>max_date) {
			model.addAttribute("m_region1_idx", m_region1_idx);
			model.addAttribute("m_region2_idx", m_region2_idx);
			
			return ViewPath.MOTEL + "maxdateresult.jsp";
		}else if(in < today) {
			model.addAttribute("m_region1_idx", m_region1_idx);
			model.addAttribute("m_region2_idx", m_region2_idx);
			
			return ViewPath.MOTEL + "result.jsp";
		}else {
			
			List<M_Room> list = motelService.mRoomList(m_region1_idx, m_region2_idx, motel_idx);
			List<M_Room> list_backup = list;
			
			for (int i = 0; i < list.size(); i++) {
				List<String> list1 = motelService.checkin(m_region1_idx, m_region2_idx, motel_idx, list.get(i).getM_room_idx());
				List<String> list2 = motelService.checkout(m_region1_idx, m_region2_idx, motel_idx, list.get(i).getM_room_idx());
				int rn = list.get(i).getRoom_number();
				
				for (int j = 0; j < list1.size(); j++) {
					int ci = Integer.parseInt((list1.get(j)).replaceAll("-", ""));
					int co = Integer.parseInt((list2.get(j)).replaceAll("-", ""));
					
					if(ci < out && co > in) {
						
						rn--;
					}
				}

				motelService.updateRoomNumber(m_region1_idx, m_region2_idx, motel_idx, list.get(i).getM_room_idx(), rn);
			}
			
			list = motelService.mRoomList(m_region1_idx, m_region2_idx, motel_idx);
			
			List<M_Coupon> couponList = motelService.motelCoupon();
			
			model.addAttribute("list", list);
			model.addAttribute("couponList", couponList);
			model.addAttribute("checkin", checkin);
			model.addAttribute("checkout", checkout);
			
			for (int i = 0; i < list_backup.size(); i++) {
				motelService.updateRoomNumber(m_region1_idx, m_region2_idx, motel_idx, list_backup.get(i).getM_room_idx(), list_backup.get(i).getRoom_number());
			}
			
			return ViewPath.MOTEL + "mroomlist.jsp";
		}
		
		
	}
	
	
	@RequestMapping("/motel/mroomlist")
	public String mRoomList(Model model, int m_region1_idx, int m_region2_idx, int motel_idx) {
		
		List<M_Room> list = motelService.mRoomList(m_region1_idx, m_region2_idx, motel_idx);
		
		model.addAttribute("list", list);
		
		return ViewPath.MOTEL + "mroomlist.jsp";
	}
	
	@RequestMapping("/res/m_res")
	public String m_res(Model model, int m_region1_idx, int m_region2_idx, int motel_idx, int m_room_idx, 
						String checkin, String checkout, int person_size, String day_price, String m_coupon_idx) {
		
		List<M_Room> list = motelService.mRoomRes(m_region1_idx, m_region2_idx, motel_idx, m_room_idx);
		
		String checkin1 = checkin.replaceAll("-", "");
		String checkout1 = checkout.replaceAll("-", "");
		
		int in = Integer.parseInt(checkin1);
		int out = Integer.parseInt(checkout1);
		
		int total_price = Integer.parseInt(day_price.replaceAll(",", "")) * (out - in);
		int coupon_price = 0;
		int m_coupon_idx1 = Integer.parseInt(m_coupon_idx);
		
		if(m_coupon_idx1 != 0) {
			List<M_Coupon> couponList = motelService.motelCouponIdx(m_coupon_idx1);
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
		model.addAttribute("m_coupon_idx", m_coupon_idx1);
		
		
		
		return "/WEB-INF/views/res/m_res.jsp";
	}
	
	@RequestMapping("/res/resultmotel")
	public String insertMotelRes(Model model, M_Res m_res) {
		
			String msg = "";
			String res_phone = m_res.getRes_phone().replaceAll("-", "");
			String use_phone = m_res.getUse_phone().replaceAll("-", "");
			m_res.setRes_phone(res_phone);
			m_res.setUse_phone(use_phone);
			
			LocalDate d = LocalDate.now();
			DateTimeFormatter d1 = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			
			String date = d.format(d1);
		    
			date = date.replaceAll("-", "");
			int idate = Integer.parseInt(date);
			
			int res_number = idate + ((int) (Math.random() * 10000000)+1);
			m_res.setRes_number(res_number);
			
			int i = 0;
			
			if(m_res.getM_coupon_idx() != 0) {
				i = motelService.insertMotelRes(m_res);
			}else {
				i = motelService.insertMotelNoCoupon(m_res);
			}
			
			
			if(i != 0) {
				msg = "예약 성공!";
				
				model.addAttribute("msg", msg);
				
				return ViewPath.RES + "resultmotel.jsp";
			}else {
				msg = "예약 실패!";
				
				model.addAttribute("msg", msg);
				
				return ViewPath.RES + "resultmotel.jsp";
			}
	}
	
	@RequestMapping("/res/motel")
	public String motelResList(Model model, String res_phone, String res_number) {
		
		String res_phone1 = res_phone.replaceAll("-", "");
		
		List<M_Res> list = motelService.motelResPhone(res_phone1, res_number);
		List<String> motelName = new ArrayList<String>();
		
		for (int i = 0; i < list.size(); i++) {
			String name = motelService.motelName(list.get(i).getM_region1_idx(), list.get(i).getM_region2_idx(), list.get(i).getMotel_idx());
			motelName.add(name);
			list.get(i).setRes_phone(res_phone);
		}
		
		model.addAttribute("list", list);
		model.addAttribute("motelName", motelName);
		
		return ViewPath.RES + "motelresphone.jsp";
	}
	
	@RequestMapping("/res/motelroominfo")
	public String motelRoomInfo(Model model, int m_region1_idx, int m_region2_idx, int motel_idx, int m_room_idx) {
		List<M_Room> list = motelService.motelRoomInfo(m_region1_idx, m_region2_idx, motel_idx, m_room_idx);
		
		model.addAttribute("list", list);
		
		return ViewPath.RES + "motelroominfo.jsp";
		
	}
}























