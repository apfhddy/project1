package vo;

import java.sql.Date;

public class M_Res {
	
	private int m_res_idx;
	private int m_region1_idx;
	private int m_region2_idx;
	private int motel_idx;
	private int m_room_idx;
	private String checkin;
	private String checkout;
	private String vehicle;
	private String res_name;
	private String res_phone;
	private String use_name;
	private String use_phone;
	private int person_size;
	private String total_price;
	private String credit;
	private Date regdate;
	private int m_coupon_idx;
	private int res_number;
	
	public M_Res() {;}

	public int getM_res_idx() {
		return m_res_idx;
	}

	public void setM_res_idx(int m_res_idx) {
		this.m_res_idx = m_res_idx;
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

	public int getM_room_idx() {
		return m_room_idx;
	}

	public void setM_room_idx(int m_room_idx) {
		this.m_room_idx = m_room_idx;
	}

	public String getCheckin() {
		return checkin;
	}

	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}

	public String getCheckout() {
		return checkout;
	}

	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}

	public String getVehicle() {
		return vehicle;
	}

	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}

	public String getRes_name() {
		return res_name;
	}

	public void setRes_name(String res_name) {
		this.res_name = res_name;
	}

	public String getRes_phone() {
		return res_phone;
	}

	public void setRes_phone(String res_phone) {
		this.res_phone = res_phone;
	}

	public String getUse_name() {
		return use_name;
	}

	public void setUse_name(String use_name) {
		this.use_name = use_name;
	}

	public String getUse_phone() {
		return use_phone;
	}

	public void setUse_phone(String use_phone) {
		this.use_phone = use_phone;
	}

	public int getPerson_size() {
		return person_size;
	}

	public void setPerson_size(int person_size) {
		this.person_size = person_size;
	}

	public String getTotal_price() {
		return total_price;
	}

	public void setTotal_price(String total_price) {
		this.total_price = total_price;
	}

	public String getCredit() {
		return credit;
	}

	public void setCredit(String credit) {
		this.credit = credit;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getM_coupon_idx() {
		return m_coupon_idx;
	}

	public void setM_coupon_idx(int m_coupon_idx) {
		this.m_coupon_idx = m_coupon_idx;
	}

	public int getRes_number() {
		return res_number;
	}

	public void setRes_number(int res_number) {
		this.res_number = res_number;
	}
	
	

}
