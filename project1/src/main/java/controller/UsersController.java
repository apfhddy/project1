package controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import path.YaPath;
import service.UsersService;
import vo.UsersVO;

@Controller
public class UsersController implements YaPath{
	
    //private JavaMailSenderImpl mailSender;
	private UsersService usersService;
	
	//email.MailSendService ms = new MailSendService();
	

	
	public UsersController(UsersService usersService) {
		this.usersService = usersService;
	}

	
	

	
	@RequestMapping("/users/join")
	public String join() {
		return USERS_JOIN+"checkEmail.jsp";
	}

	
	@RequestMapping("/users/checkEmail")
	@ResponseBody
	public Map<String,Object> checkEmail(String email) {//map타입이 아니다
		return usersService.checkEmail(email);
	}
	
	@RequestMapping("/users/checkPhone")
	@ResponseBody
	public int checkPhone(String phone) {
		return usersService.checkPhone(phone);
	}
	
	
//	@RequestMapping("/users/sendEmail/{num}")
//	@ResponseBody
//	public int sendEmail(@PathVariable("num") int num ,String email) {
//		return ms.joinEmail(email,num);
//	}
	
	
	@RequestMapping("/users/joinData")
	public String joinForm(UsersVO dto) {
		System.err.println(dto.getEmail()+dto.getPhone());
		usersService.insertUsers(dto);
		return "/";
	}
	@RequestMapping("/users/joinForm")
	public String joinForm() {
		return USERS_JOIN+"joinForm.jsp";
	}
	

	@RequestMapping("/users/login")
	public String login() {
		return USERS_LOGIN+"login.jsp";
	}
	
	
	@RequestMapping("/users/checkLogin")
	@ResponseBody
	public Map<String, Object> checkLogin(String email,String pw) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("email", email);
		map.put("pw", pw);
		return usersService.checkLogin(map);
	}
	
	@RequestMapping("/users/loginForm/{idx}"/*,{ckid}"*/)
	public String loginForm(
			@PathVariable("idx") int idx/* ,@PathVariable("ckid")int ckid */,HttpServletRequest request,HttpServletResponse response) {
		
		Cookie[] cks = request.getCookies();
		Cookie ck = null;
		
		UsersVO dto = usersService.selectUser(idx);
		
		HttpSession session = request.getSession(true);
		session.setAttribute("login", dto);
		
//		boolean check = false;
//		
//		for(Cookie c : cks) {
//			if(c.getName().equals("ckid")) {
//				check = true;
//				ck = c;
//			}
//		}
//		
//		if(ckid != 0) {
//			
//			if(check) {
//				System.out.println("쿠키유지");
//				ck.setMaxAge(600);
//				ck.setPath("/");
//				response.addCookie(ck);
//			}else {
//				System.out.println("쿠키생성");
//				ck = new Cookie("ckid",dto.getEmail());
//				ck.setMaxAge(600);
//				ck.setPath("/");
//				response.addCookie(ck);
//			}
//			
//		}else {
//			if(check) {
//				System.out.println("쿠키지움");
//				ck.setMaxAge(0);
//				ck.setPath("/");
//				response.addCookie(ck);
//			}	
//		}
		
		
		
		
		return "/";
	}
	
	@RequestMapping("/users/logout")
	public String logOut(HttpServletRequest req) {
		HttpSession session = req.getSession();
		
		session.invalidate();
		
		
		return "/";
	}
	
	@RequestMapping("/users/mypage")
	public String mypage() {
		return USERS_MYPAGE+"mypage.jsp";
	}
	
	
	
	@RequestMapping("/users/pind")
	public String pindPassword() {
		return USERS_LOGIN+"pind.jsp";
	}
	
	
	@RequestMapping("/users/checkPw/{num}")
	public String checkPw(@PathVariable("num") int num,Model model) {

		
		model.addAttribute("num",num);
		return USERS_LOGIN+"checkPw.jsp";
	}
	
	@RequestMapping("/users/mydata/{num}")
	public String myData(@PathVariable("num") int num) {
		if(num == 1)
			return USERS_MYPAGE+"myData.jsp";
		else
			return USERS_LOGIN+"lastCheck.jsp";
		
	}

	
	
	
	@RequestMapping("test")
	public String test() {
		return "/WEB-INF/views/test.jsp";
	}
	
	
	
	@RequestMapping("/users/updateAgree_type")
	@ResponseBody
	public void updateAgree(String agree,int idx,HttpServletRequest req) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("agree", agree);
		map.put("idx", idx);
		if(usersService.updateAgree_type(map) != 0) {
			HttpSession session = req.getSession();
			UsersVO dto = (UsersVO)session.getAttribute("login");
			dto.setAgree_type_idx(agree);
		}
	}
	

	
	
}
