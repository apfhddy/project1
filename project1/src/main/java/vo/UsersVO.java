package vo;

public class UsersVO {
	private int users_idx;
	private String email;
	private String pw;
	private String phone;
	private String nickname;
	private String image;
	private String agree_type_idx;
	private int users_check;
	private int status;
	
	
	
	public UsersVO(){};
	
	public UsersVO(int users_idx,String email,String pw,String phone,String nickname,String image,String agree_type_idx,int users_check,int status) {
		this.users_idx = users_idx;
		this.email = email;
		this.pw = pw;
		this.phone = phone;
		this.nickname = nickname;
		this.image = image;
		this.agree_type_idx = agree_type_idx;
		this.users_check = users_check;
		this.status = status;
	}
	
	
	public int getUsers_idx() {
		return users_idx;
	}
	public void setUsers_idx(int users_idx) {
		this.users_idx = users_idx;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getAgree_type_idx() {
		return agree_type_idx;
	}
	public void setAgree_type_idx(String agree_type_idx) {
		this.agree_type_idx = agree_type_idx;
	}
	public int getUsers_check() {
		return users_check;
	}
	public void setUsers_check(int users_check) {
		this.users_check = users_check;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
	public String getImage() {
		return image;
	}
	
	public void setImage(String image) {
		this.image = image;
	}
	
	
	
	
}
