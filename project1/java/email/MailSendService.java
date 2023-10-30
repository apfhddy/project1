package email;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

public class MailSendService {
	
    private JavaMailSenderImpl mailSender;
	
	
	
	public MailSendService() {}
    
    public MailSendService(JavaMailSenderImpl gmlfkrd) {
    	this.mailSender = gmlfkrd;
    	System.out.println(mailSender == null);
    }
    
    
    
    
    public JavaMailSenderImpl getMailSender() {
		return mailSender;
	}

	public void setMailSender(JavaMailSenderImpl mailSender) {
		this.mailSender = mailSender;
	}

    
	
	
	
    private int getKey() {
        return (int)(Math.random()*899999)+100000;  
    }

    
	public int joinEmail(String email,int num) {
		int a = getKey();
		String setFrom = ".com"; // email-config에 설정한 자신의 이메일 주소를 입력 
		String toMail = email;
		String title = num == 1 ?"회원 가입 인증 이메일 입니다.":"비밀번호 찾기 이메일 입니다"; // 이메일 제목 
		String content = num != 1?
				"<div style='margin-left: 20%; margin-top: 12%;'><font size='4'>회원님의 <b>(프젝)야놀자 계정</b>("+email+")에 대한 비밀번호 변경 요청을 접수했습니다.<br>아래 링크는 24시간 후 만료되며 한 번만 사용할 수 있습니다.</font></div>" + 	//html 형식으로 작성 ! 
                "<div style=' margin-top: 5%; margin-left: 35%;'><a href='http://localhost:8080/pro/users/updatePwForm?e="+email+"&n="+a+"' style='text-decoration: none; background-color: #ff3478; padding-left: 25px; padding-top: 15px; padding-bottom: 15px; padding-right: 25px; border-radius: 6px;'><font color='white'>비밀번호 변경</font></a></div>" + 
			    "<div style='margin-top: 5%; margin-left: 20%'>" + 
			    "<font style='font-size: 15px'>비밀번호 변경 요청을 하지 않았음에도 본 메일이 수신된 경우 고객센터로 연락 바랍니다. 보다 나은 서비스 제공을 위해 <br>언제나 최선을 다하겠습니다. 감사합니다.</font></div>" + 
			    "<div><hr style='margin-left: 20%; margin-right: 37%'></div>"+
			    "<div style='margin-left: 20%'><font size = '2'>본 메일은 발신전용으로 회신되지 않습니다. 문의사항은 고객센터를 이용해주세요.</font></div>" : 
			    "<div style='margin-left: 20%; margin-top: 8%; margin-bottom: 1%;'><h1>이메일 인증</h1></div>"+
			    "<div style='margin-left: 20%;'><font>안녕하세요. (주)야놀자입니다.<br>고객님께서 요청하신 아래 인증번호를 진행 중인 화면에 입력하여 이메일 인증을 완료해주세요</font></div>"+
			    "<div style='margin-top: 2%; margin-left: 20%; margin-bottom: 1%;'><font style='font-size: 13px;'><b>인증번호</b></font><br></div>"+
			    "<div align='center' style='margin-left: 20%; margin-right: 35%; padding-top: 1%; padding-bottom:1%; border: 1px solid; border-radius: 4px;'><font size = '5'><b>"+a+"</b></font></div>"; //이메일 내용 삽입
		mailSend(setFrom, toMail, title, content);
		return a;
	}
	
	//이메일 전송 메소드
	public void mailSend(String setFrom, String toMail, String title, String content) { 
		MimeMessage message = mailSender.createMimeMessage();//mailSender의 객체를 새로 만든
		// true 매개값을 전달하면 multipart 형식의 메세지 전달이 가능.문자 인코딩 설정도 가능하다.
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message,true,"utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			// ** true 전달 > html 형식으로 전송 , 작성하지 않으면 단순 텍스트로 전달.
			helper.setText(content,true);
			try{mailSender.send(message);}catch(MailException e) {return;}
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
    
    
}