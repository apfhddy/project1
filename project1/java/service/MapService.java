package service;

import java.util.List;

import dao.MapDao;
import vo.Hotel;
import vo.Motel;

public class MapService {
	
	private MapDao mapDao;
	
	public MapService(MapDao mapDao) {
		this.mapDao = mapDao;
	}
	
	public List<Motel> motelMap(String short_address) {
		return mapDao.motelMap(short_address);
	}
	
	public List<Hotel> hotelMap(String short_address) {
		return mapDao.hotelMap(short_address);
	}

}
