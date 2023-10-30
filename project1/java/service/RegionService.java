package service;

import java.util.List;

import dao.RegionDao;
import vo.H_Region1;
import vo.H_Region2;
import vo.M_Region1;
import vo.M_Region2;

public class RegionService {
	
	private RegionDao regionDao;
	
	public RegionService(RegionDao regionDao) {
		this.regionDao = regionDao;
	}
	
	public List<M_Region1> motelRegion1() {
		return regionDao.motelRegion1();
	}
	
	public List<H_Region1> hotelRegion1() {
		return regionDao.hotelRegion1();
	}
	
	public List<M_Region2> motelRegion2(int m_region1_idx) {
		return regionDao.motelRegion2(m_region1_idx);
	}
	
	public List<H_Region2> hotelRegion2(int h_region1_idx) {
		return regionDao.hotelRegion2(h_region1_idx);
	}

}
