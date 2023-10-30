package vo;

public class M_Coupon {
	
	private int m_coupon_idx;
	private int m_region1_idx;
	private int m_region2_idx;
	private int motel_idx;
	private String name;
	private int sale;
	
	public M_Coupon() {;}

	public int getM_coupon_idx() {
		return m_coupon_idx;
	}

	public void setM_coupon_idx(int m_coupon_idx) {
		this.m_coupon_idx = m_coupon_idx;
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

	public int getMotel_idx() {
		return motel_idx;
	}

	public void setMotel_idx(int motel_idx) {
		this.motel_idx = motel_idx;
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
