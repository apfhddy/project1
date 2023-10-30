package vo;

public class Motel {
	
	private int motel_idx;
	private int m_region1_idx;
	private int m_region2_idx;
	private String image;
	private String name;
	private String short_address;
	private String event;
	private int max_date;
	private String latitude;
	private String longitude;
	
	public Motel() {;}

	public int getMotel_idx() {
		return motel_idx;
	}

	public void setMotel_idx(int motel_idx) {
		this.motel_idx = motel_idx;
	}

	public int getM_region1_idx() {
		return m_region1_idx;
	}

	public void setM_region1_idx(int m_region1_idx) {
		this.m_region1_idx = m_region1_idx;
	}

	public int getM_region2_idx() {
		return m_region2_idx;
	}

	public void setM_region2_idx(int m_region2_idx) {
		this.m_region2_idx = m_region2_idx;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getShort_address() {
		return short_address;
	}

	public void setShort_address(String short_address) {
		this.short_address = short_address;
	}

	public String getEvent() {
		return event;
	}

	public void setEvent(String event) {
		this.event = event;
	}

	public int getMax_date() {
		return max_date;
	}

	public void setMax_date(int max_date) {
		this.max_date = max_date;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	
	

}
