package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import common.ViewPath;
import service.MapService;
import vo.Hotel;
import vo.Motel;

@Controller
public class MapController {
	
	private MapService mapService;
	
	public MapController(MapService mapService) {
		this.mapService = mapService;
	}
	
	@RequestMapping("/map/motelmain")
	public String motelMap(Model model, String short_address) {
		
		List<Motel> list = mapService.motelMap(short_address);
		
		model.addAttribute("list", list);
		
		return ViewPath.MAP + "main.jsp";
	}
	
	@RequestMapping("/map/hotelmain")
	public String hotelMap(Model model, String short_address) {
		
		List<Hotel> list = mapService.hotelMap(short_address);
		
		model.addAttribute("list", list);
		
		return ViewPath.MAP + "main.jsp";
	}
	
	
}
