<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/setting/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
		 		.bt1{
                	cursor: pointer;
                	margin-bottom: 1%; 
                	width: 34%; 
                	height: 50px; 
                	font-size: 20px; 
                	color: white; 
                	background-color: #DE2E5F;
                }
                .bt1:active{
                	background-color: #A00038;
                }
                .bt2{
                	margin-bottom: 1%; 
                	width: 34%; 
                	height: 50px; 
                	font-size: 20px; 
                	color: white; 
                	background-color: #CDCDCD;
                }
		 		
		 		.input1 {
                    width : 40%;
                    height : 50px;
                    border-top : none;
                    border-left : none;
                    border-right : none;
                    border-bottom : 2px solid #F1F1F1;
                    margin-left : 30%;
                    margin-top : 4%;
                    font-size: 17px;
                    
                }
				.inner {
                    position : relative;
                    width : 100%;
                    height : 50px;
                }
                .hd-in {
                   	display : flex; 
                    justify-content: space-between;
                    margin-top :1%;
                    border-bottom : 1px solid;
                    border-color : #E8E8E8;
                    height : 40px;
                }
                .hd-left {
                    font-weight: bolder;
                    font-size : 20px;
                    margin-left : 12%;
                    
                }
                .hd-right {
                    font-weight : bold;
                    font-size : 20px;
                    margin-right : 48.5%;
                }
</style>
<meta charset="UTF-8">
 <link rel="shortcut icon" href="//yaimg.yanolja.com/joy/sunny/static/images/favicon/favicon_16x16.png">
            <title>야놀자 로그인 | 글로벌 여가플랫폼 | 야놀자 공식 사이트</title>
</head>
<body>
	 <header class="header">
                <div class="inner">
                    <div class="hd-in">
                        <div class="hd-left">
                            <a style="text-decoration: none"  href = "${pageContext.request.contextPath }/users/login">✕</a> 
                        </div>
                        <div class="hd-right">
                     		비밀번호 찾기
                        </div>
                    </div>
                        <div align="center" style="margin-top: 10px; font-size: 14px;">회원가입 시 등록한 아이디를 입력해 주세요.<br>
입력하신 아이디로 비밀번호 변경 가능한 링크를 보내드립니다.</div>
                </div>
                <div>
                	<input type ="text" class="input1" placeholder="이메일" onkeyup="inputEmail(this)">
                </div>
                <div style="margin-left: 30%; margin-top: 1%;">
                	<font style = "font-size: 15px;">ⓘ아이디가 이메일 형식이 아닌 경우, 고객센터를 통해서 비밀번호 변경이 가능합니다.</font>
                </div>
                <div style="    margin-top: 2%; margin-left: 30%;">
					<input  name = "next" onclick="nexta()" type = "button" value = "링크 전송하기" class="bt2" disabled="disabled" style="border-radius: 6px; border-width: 0px; width: 57%;">
				</div>
            </header>
</body>
<script type="text/javascript">
	let email = null;
	const next = document.querySelector('input[name = next]')
	
	function inputEmail(text) {
		email = text.value;
		if(email != ""){
			const email_patterun = /^[a-z0-9]{1,15}@[a-z]{1,6}[.]com$/;
			if(email_patterun.test(email)){
				next.disabled = false;
				next.className = "bt1";
			}
		}
		
	}
	
	function nexta() {
		$.ajax({
			url:"${pageContext.request.contextPath}/users/checkEmail",
			type:"post",
			data:{email:email},
			success: function sc(s) {
				if(s.USERS_IDX != null){
					 $.ajax({
						url:"${pageContext.request.contextPath}/users/sendEmail/0",
						type:"POST",
						data:{email:email},
					}) 					
				}else{
					alert('없는 계정입니다');
				}
			}
			
		})
	}
	

</script>
</html>