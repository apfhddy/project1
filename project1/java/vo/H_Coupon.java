package vo;

public class H_Coupon {
	
	private int h_coupon_idx;
	private int h_region1_idx;
	private int h_region2_idx;
	private int hotel_idx;
	private String name;
	private int sale;
	
	public H_Coupon() {;}

	public int getH_coupon_idx() {
		return h_coupon_idx;
	}

	public void setH_coupon_idx(int h_coupon_idx) {
		this.h_coupon_idx = h_coupon_idx;
	}

	public int getH_region1_idx() {
		return h_region1_idx;
	}

	public void setH_region1_idx(int h_region1_idx) {
		this.h_region1_idx = h_region1_idx;
	}

	public int getH_region2_idx() {
		return h_region2_idx;
	}

	public void setH_region2_idx(int h_region2_idx) {
		this.h_region2_idx = h_region2_idx;
	}

	public int getHotel_idx() {
		return hotel_idx;
	}

	public void setHotel_idx(int hotel_idx) {
		this.hotel_idx = hotel_idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getSale() {
		return sale;
	}

	public void setSale(int sale) {
		this.sale = sale;
	}
	
	

}
