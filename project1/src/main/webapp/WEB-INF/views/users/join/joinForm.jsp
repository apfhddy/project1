<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/setting/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
			  	font,a,html,body,div,span,object,iframe,h1,h2,h3,h4,h5,h6,p,
                blockquote,pre,abbr,address,cite,code,del,dfn,em,img,
                ins,kbd,q,samp,small,strong,sub,sup,var,b,i,dl,dt,dd,ol,ul,li,
                fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,
                article,aside,canvas,details,figcaption,figure,footer,header,hgroup,
                menu,nav,section,summary,time,mark,audio,video,fieldset {margin:0; padding:0; }
				
			/* 	 .main-input {
                    position :relative;
                } */
                .bt{
             	  	cursor: pointer;  /*버튼 클릭 효과를 주는 */
                	border-color: blue;
                	background-color: white;
                	color: blue;
                	border-collapse: 1px;	
          			
                }
                
                #bt:active{
                	background-color: #AFAFAF;
                }
                
                .bt1{
                	cursor: pointer;
                	bottom: 0; 
                	position: absolute;
                	margin-left: 34%;
                	margin-bottom: 1%; 
                	width: 34%; 
                	height: 50px; 
                	font-size: 20px; 
                	color: white; 
                	background-color: #DE2E5F;
                }
                .bt2{
                	bottom: 0; 
                	position: absolute;
                	margin-left: 34%;
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
                    margin-top : 1%;
                    border-radius: 6px;
                    font-size: 17px;
                }
                  .input2 {
                    width : 33%;
                    height : 40px;
                    border-top : none;
                    border-left : none;
                    border-right : none;
                    border-bottom : 3px solid #F1F1F1;
                    margin-left : 30%;
                    margin-top : 1%;
                    border-radius: 6px;
                    font-size: 17px;
                    
                }
                 .num {
                    width : 10%;
                    height : 40px;
                    border-top : none;
                    border-left : none;
                    border-right : none;
                    border-bottom : 3px solid #F1F1F1;
                    margin-left : 54.9%;
                    margin-top : 1%;
                    border-radius: 6px;
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
                            <a style="text-decoration: none"  href = "${pageContext.request.contextPath }/users/login">〈</a> 
                        </div>
                        <div class="hd-right">
                     		회원가입
                        </div>
                    </div>
                </div>
            </header>
            <div class="main">
                <div class="main-input1">
                    <form action="${pageContext.request.contextPath }/users/joinData" method ="POST" class="inputform"><br>
                        <input class="input1" name = "email" onkeyup="checkEmail(this)" type="text" placeholder="이메일"/><br>
                    		<a id = "text1" style="margin-left: 30%;"></a>
          				 		<br><br> <font color="orange" size = "3" style="margin: 30%;  font-size: 13px">⛔ 회원 가입시 ID는 반드시 본인 소유의 연락 가능한 이메일 주소를 사용하여야 합니다.</font>
           							<input name = "bt" id = "bt" onclick="sendEmail()" type = "button" disabled="disabled" style="border-width: 1px; border-radius: 6px; margin: 30.5%; margin-top: 1%; margin-bottom: 0%; width: 39%; height: 30;" value = "인증번호 전송">
           								<br><br> <font  style="font-size: 12px; margin-left: 31.5%;">인증번호 발송에는 시간이 소요되며 하루 최대 5회까지 전송할 수 있습니다.</font><br>
									<font  style="font-size: 12px; margin-left: 31.5%;">인증번호는 입력한 이메일 주소로 발송됩니다. 수신하지 못했다면 스팸함 또는 해당 이메일 서비스의 설정을 확인해주세요.</font>
         	  					<div style=" display : flex; border-top: 1px solid; border-color: #E8E8E8; bottom: 0%; position: absolute; padding-right: 99%; padding-top: 90px;">
							<input  name = "next" onclick="nexta()" type = "button" value = "다음" class="bt2" disabled="disabled" style="border-radius: 6px; border-width: 0px;">
						</div>
                    </form>
                </div>
           </div>
</body>
<script type="text/javascript">
	const a = document.querySelector('#text1');
	let a2 = null;
	let a3 = null;
	let a4 = null;
	const f = document.querySelector('form');
	let inputNum = null;
	let dv = document.createElement('div');
	let num = 0;	
	
	let pw = null;
	let email = null;
	let phone = null;
	
	function checkEmail(text) {
		email = text.value;
		const email_patterun = /^[a-z0-9]{1,15}@[a-z]{1,6}[.]com$/;
		let str = "";
		if(email_patterun.test(email)){
			f.bt.disabled = false;
			f.bt.className="bt";
		}else{
			f.bt.disabled = true;
			f.bt.className="";
			str = "<font size = '3' color = 'red'>id이 형식이 올바르지 않습니다<font>";
		}
		
		a.innerHTML = str;
	}
	
	function sendEmail() {
		$.ajax({
			url:"${pageContext.request.contextPath}/users/checkEmail",
			type:"POST",
			data:{email:email},
			success: function sc(s) {
				if(s.USERS_IDX == null){
					//num = 999;
					a.innerHTML = "<font size = '3' color = 'green'>사용가능한 id입니다<font>";
					dv.innerHTML = '<input id = "numForm" type = "text" class="num" placeholder="인증번호"><input onclick="checkNum(this)" type = "button" value = "인증확인" style="margin-left: 1%; padding: 7px; border-radius: 6px; border-width: 1px; border-color: green; cursor: pointer;"><br><a id = "text2" style="margin-left: 54.9%"></a>';
					f.appendChild(dv);
					inputNum = document.querySelector('#numForm');
					a2 = document.querySelector('#text2');
					$.ajax({
						url:"${pageContext.request.contextPath}/users/sendEmail/1",
						type:"POST",
						data:{email:email},
						success:  function setNum(n) {
							num = n;
						}
					})
				}else{
					a.innerHTML = "<font size = '3' color = 'red'>사용할수 없는 회원 정보입니다<font>";
				}
			}
		})
	}
	
	function checkNum(b) {
		if(inputNum.value == num || inputNum.value == "0"){
			a2.innerHTML = "<font size = '3' color = 'green'>인증번호가 일치합니다<font>";
			f.email.readOnly = true;
			f.bt.disabled = true;
			b.disabled = true;
			f.bt.className = "";
			dv = document.createElement('div');
			dv.innerHTML = '<input name = "phone" type = "text" class="input2" placeholder="휴대폰 번호"><input name = "pbt" onclick="checkPhone(this.form)" type = "button" value = "휴대폰인증" style="margin-left: 1%; padding: 7px; border-radius: 6px; border-width: 1px; border-color: green; cursor: pointer;"><br><a id = "text3" style="margin-left: 30%"></a>';
			f.appendChild(dv);
			a3 = document.querySelector('#text3');
		}else{
			a2.innerHTML = "<font size = '3' color = 'red'>인증번호가 일치하지 않습니다<font>";
		}
	}

	
	
	
	function checkPhone(f) {
		phone = f.phone.value;
		if(phone != ""){
			if(phone.length == 11){
				const phone_pattern = /^010[0-9]{8}$/
				if(phone_pattern.test(phone)){					
					$.ajax({
						url:"${pageContext.request.contextPath}/users/checkPhone",
						type:"POST",
						data:{phone:phone},
						success: function sc(s) {
							if(s == 0){
								dv = document.createElement('div');
								a3.innerHTML = "<font size = '3' color = 'green'>사용가능한 번호입니다<font>";
								dv.innerHTML = '<input name = "pw"  type = "password" class="input2" placeholder="패스워드 입력"><input onkeyup="checkPw()" type = "password" class="input2" placeholder="패스워드 확인"><br><a id = "text4" style="margin-left: 30%"></a>';
								f.appendChild(dv);
								a4 = document.querySelector('#text4');
								pw = Array.from($('input[type = password]'));
								f.pbt.disabled = true;
							}else{
								a3.innerHTML = "<font size = '3' color = 'red'>사용할수 없는 번호입니다<font>";
							}
						}
					})
				}else{
					a3.innerHTML = "<font size = '3' color = 'red'>휴대폰형식이 올바르지 않습니다<font>";
				}
			}else{
				a3.innerHTML = "<font size = '3' color = 'red'>휴대폰번호는 -(하이픈)을 제외한 11자리여야 합니다<font>";
			}
		}else{
			a3.innerHTML = "<font size = '3' color = 'red'>번호를 입력해주세요<font>";
		}
	}
	
	function checkPw() {
		const pw1 = pw[0].value;
		const pw2 = pw[1].value;
		
		if(pw1 != "" && pw2 != ""){
			if(pw1.length >= 5){
				if(pw1 == pw2){
					a4.innerHTML = "<font size = '3' color = 'green'>사용가능한 패스워드<font>";
					f.next.disabled = false;
					f.next.className = "bt1";
				}else{
					a4.innerHTML = "<font size = '3' color = 'red'>패스워드가 일치하지 않습니다<font>";
					f.next.disabled = true;
				}
			}else{
				a4.innerHTML = "<font size = '3' color = 'red'>패스워드는 5자리 이상이여야 합니다<font>";
				f.next.disabled = true;
			}
		}else{
			a4.innerHTML = "<font size = '3' color = 'red'>패스워드를 입력해주세요<font>";
			f.next.disabled = true;
		}
	
	}
	
	function nexta() {
		f.submit();
	}
	
	
</script>
</html>