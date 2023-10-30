package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import common.ViewPath;
import service.RegionService;
import vo.H_Region1;
import vo.H_Region2;
import vo.M_Region1;
import vo.M_Region2;

@Controller
public class RegionController {
	
	private RegionService regionService;
	
	public RegionController(RegionService regionService) {
		this.regionService = regionService;
	}
	
	@RequestMapping("/region/motelregion1")
	public String motelRegion1(Model model) {
		
		List<M_Region1> list = regionService.motelRegion1();
		
		model.addAttribute("list", list);
		
		return ViewPath.REGION + "motelregion1.jsp";
		
	}
	
	@RequestMapping("/region/hotelregion1")
	public String hotelRegion1(Model model) {
		
		List<H_Region1> list = regionService.hotelRegion1();
		
		model.addAttribute("list", list);
		
		return ViewPath.REGION + "hotelregion1.jsp";
		
	}
	
	@RequestMapping("/region/motelregion2")
	public String motelRegion2(Model model, int m_region1_idx) {
		
		List<M_Region2> list = regionService.motelRegion2(m_region1_idx);
		
		model.addAttribute("list", list);
		
		return ViewPath.REGION + "motelregion2.jsp";
	}
	
	@RequestMapping("/region/hotelregion2")
	public String hotelRegion2(Model model, int h_region1_idx) {
		
		List<H_Region2> list = regionService.hotelRegion2(h_region1_idx);
		
		model.addAttribute("list", list);
		
		return ViewPath.REGION + "hotelregion2.jsp";
	}
	
	@RequestMapping("/res/rescheck")
	public String resCheck() {
		return "/WEB-INF/views/res/rescheck.jsp";
	}
	
	@RequestMapping("/res/typecheck")
	public String typeCheck(Model model, String type, String res_phone, String res_number) {
		
		if(type.equals("motel")) {
			model.addAttribute("res_phone", res_phone);
			model.addAttribute("res_number", res_number);
			return "redirect:/res/motel";
		}else {
			model.addAttribute("res_phone", res_phone);
			model.addAttribute("res_number", res_number);
			return "redirect:/res/hotel";
		}
	}
}
























