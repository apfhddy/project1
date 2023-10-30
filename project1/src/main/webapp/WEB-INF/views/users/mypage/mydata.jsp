<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/setting/setting.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
				#bt:active{
                	background-color: #A00038;
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
                    margin-top : 3%;
                    font-size: 17px;
                }
                .input2{
                	border-left: 0px; 
                	border-top: 0px; 
                	border-right: 0px;
                	border-bottom: 1px solid; 
                	border-color: gray; 
                	width: 500px; 
                	height: 30px;
                }
                .inner {
                    position : relative;
                    width : 100%;
                    height : 41px;
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
                
               	.d1{
               		margin-left: 30%; 
               		margin-right: 30%;
               	}
               	.d2{
               		border: 1px solid; 
               		border-color: #E8E8E8; 
               		box-shadow: 1px 1px 1px gray;
               	}
               	.f{
               		margin-left: 3%;
               	}
               	input[type = "checkbox"]{
               		background-color: red;
               	}
               	.no{
               		display: none;
               	}
               	.ch{
               		font-size: 12px; 
               		margin-right: 2%; 
               		color: blue; 
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
                            <a style="text-decoration: none"  href = "${pageContext.request.contextPath }/users/mypage">〈</a> 
                        </div>
                        <div class="hd-right">
                     		내정보관리
                        </div>
                    </div>
                </div>
            </header>
             <div id = "check">
	            <div align="center" style="font-size: 18px;"> 
	            	회원님의 소중한 개인정보를 안전하게 보호하기 위해<br>비밀번호를 한번 더 입력해주세요.<br>
	            </div>
	            <div>
	           		<input type = "password" class="input1" placeholder="비밀 번호" onkeyup="inputPw(this,event)"><br><a id = "text" style="margin-left: 30%;"></a>        
	            </div>
	            <div style=" display : flex; border-top: 1px solid; border-color: #E8E8E8; bottom: 0%; position: absolute; padding-right: 99%; padding-top: 90px;">
					<input  id = "bt" name = "next" onclick="nexta()" type = "button" value = "확인" class="bt2" disabled="disabled" style="border-radius: 6px; border-width: 0px;">
				</div>
       		</div>
            <div id = "data" class="no">
				<div align="center" class="d1">
				 	<div class="d2">
				 		<div style="margin-top: 3.5%; margin-bottom: 3%;">
				 			<img src="https://yaimg.yanolja.com/joy/sunny/static/images/my/img-my-profile-50.svg" style="width: 14%;">
				 		</div>
				 		<div onclick="console.log('hi')" style="cursor: pointer; margin-bottom: 2.5%;">
				 			<b>${login.nickname }</b><br><font color="gray">${login.email }</font>
				 		</div>
				 	</div>
				 	<div align="left" class="d2" style="margin-top: 1.5%; margin-bottom: 1.5%;">
				 		<div  style="margin-top: 2%; margin-left: 3%; margin-bottom: 3%;">
				 			<b>개인정보</b>
				 		</div>
				 		<div style="margin-left: 3%; margin-right: 3%; margin-bottom: 2%; border: 1px solid; border-color: #E8E8E8"></div>
					 	<div class="f" style="margin-bottom: 4%;">
					 		아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${login.email }
					 	</div >
					 	<div class="f" style="margin-bottom: 4%;">
					 		이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${login.email }
					 	</div>
					 	<div class="f" style="margin-bottom: 4%;">
					 		<div style="float: left;">비밀번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
					 		<div id = "pwSell">
					 			<div style="float: left;"><c:forEach var="i" begin="1" end="${fn:length(login.pw)}" step="1">●</c:forEach></div>
					 			<div align="right" class="ch"><a style="cursor: pointer;" onclick="updatePwform()">수정하기</a></div>
					 		</div>
					 		<div id = "updatePwForm" class="no">
					 			<form>
						 			<div><input name = "now" type = "password" class="input2" placeholder="현재 비밀번호입력" onkeyup="updatePwCheck(this.form)"></div>
						 			<div style="margin-left: 13.5%; font-size: 14px; visibility: hidden; color: red;">비밀번호가 일치하지 않습니다</div>                               <!-- 역ㅣ -->
						 			<div><input name = "tonow" type = "password" class="input2" placeholder="새 비밀번호 5 자리이상" onkeyup="updatePwCheck(this.form)" style="margin-left: 13.5%;"></div>
						 			<div style="margin-left: 13.5%; font-size: 14px; visibility: hidden; color: red;" >비밀번호가 일치하지 않습니다</div>                               <!-- 역ㅣ -->
						 			<div><input name = "cktonow" type = "password" class="input2" placeholder="새 비밀번호 확인" onkeyup="updatePwCheck(this.form)" style="margin-left: 13.5%;"></div>
						 			<div style="margin-left: 13.5%; font-size: 14px; visibility: hidden; color: red">비밀번호가 일치하지 않습니다</div>
						 			<div style="margin-left: 13.5%;"><input name = "pbt" onclick="updatePw()" disabled="disabled" type = "button" value = "저장"><a style="margin-left: 1%; cursor: pointer; color: gray; font-size: 13px;" onclick="pwCansle()">취소</a></div>
					 			</form>
					 		</div>
					 	</div>
					 	<div class="f" style="margin-bottom: 2%;">
					 		<div style="float: left;">휴대폰번호&nbsp;&nbsp;&nbsp;</div>
					 		<div id = "phoneSell">
					 			<div style="float: left;">${login.phone }</div>
					 			<div align="right" class="ch"><a style="cursor: pointer;" onclick="updatePhoneform()">수정하기</a></div>
					 		</div>
					 		<div id = "updatePhoneForm" class = "no">
					 			<form>
					 				<input name = "toPhone" type = "text" class="input2" placeholder="휴대폰번호 입력" onkeyup="updatePhoneCheck(this.form)"><input name = "checkPh" disabled="disabled" style="margin-left: 2%; padding-top: 0.5%; padding-bottom: 0.5%;" type = "BUTTON" value = "휴대폰 인증" onclick="checkPhone(this.form)">
					 				<div style="margin-left: 13.5%; font-size: 14px; visibility: hidden; color: red;">비밀번호가 일치하지 않습니다</div>
					 				<div style="margin-left: 13.5%;"><input name = "phbt" onclick="updatePhone()" disabled="disabled" type = "button" value = "저장"><a style="margin-left: 1%; cursor: pointer; color: gray; font-size: 13px;" onclick="phoneCansle()">취소</a></div>
					 			</form>
					 		</div>
					 	</div>
				 	</div>
				 	<div align="left" class="d2" style="margin-bottom: 1.5%;">
				 		<div style="margin-top: 2%; margin-left: 3%; margin-bottom: 3%;">
				 			<b>광고성 정보 수신동의</b>
				 		</div>
				 		<div style="margin-left: 3%; margin-right: 3%; margin-bottom: 2%; border: 1px solid; border-color: #E8E8E8"></div>
				 		<div style=" margin-left: 3%; margin-bottom: 3%;">
				 			<input type = "checkbox">E-mail&nbsp;&nbsp;&nbsp;<input type = "checkbox">문자
				 		</div>
				 	</div>
				 	<div align="left" class="d2" style=" cursor: pointer;" onclick="document.location.href = '${pageContext.request.contextPath}/users/joinOut'">
				 		<div style="margin-top: 2%; margin-left: 3%; margin-bottom: 3%; cursor: pointer;" >
				 			<div style="float: left;"><b>회원탈퇴</b></div>
				 			<div align="right" style="margin-right: 2%;">〉</div>
				 		</div>
				 	</div>
				</div>
			</div>
</body>
<script type="text/javascript">
	 	const check = document.querySelector('#check');
	 	const data = document.querySelector('#data');
	 	
		const pwSell = document.querySelector('#pwSell');
		const updatePwForm = document.querySelector('#updatePwForm');
		const phoneSell = document.querySelector('#phoneSell');
		const updatePhoneForm = document.querySelector('#updatePhoneForm');
		let now = null;
		let tonow = null;
		
		let tophone = null;
		
	 	
	 	if(${ck} == 1){
	 		check.className="no";
			data.className = "";
	 	}

		let pw = null;
		const next = document.querySelector('input[name = next]')
		const a  = document.querySelector('#text')
		function inputPw(text,e) {
			pw = text.value;
			checkEnter = e.keyCode == 13;
			if(pw != ""){
				next.disabled = false;
				next.className = "bt1";
				if(checkEnter)nexta();
			}else{
				next.disabled = true;
				next.className = "bt2";				
			}
		}
		
		function nexta() {
			if(pw == "${login.pw}"){
				check.className="no";
				data.className = "";
			}else{
				a.innerHTML = "<font size = '2' color = 'red'>이메일(ID또는 이메일)과 비밀번호를 확인 후 다시 로그인해주세요. (5회이상 오류시 로그인 차단)<font>";
			}
		}
	
		let type = '${login.agree_type_idx}';
		type = type.split(',');

		let checkb = $('input[type = checkbox]')
		checkb[0].checked = type[0] == 1;
		checkb[1].checked = type[1] == 1;
		
		const checkEven = (even) => {
			let agree =  checkb[0].checked ? "1," : "0,";
			agree +=  checkb[1].checked ? "1" : "0";
		  $.ajax({
			 url:"${pageContext.request.contextPath}/users/updateAgree_type",
			 type:'post',
			 data:{agree:agree,idx:${login.users_idx}}
		 }) 
		}
		
		
		checkb[0].onclick = checkEven;
		checkb[1].onclick = checkEven;
		
		
		function updatePwform() {
			phoneCansle();
			pwSell.className = "no";
			updatePwForm.className = "";
		}
		
		function pwCansle() {
			pwSell.className = "";
			updatePwForm.className = "no";
		}
		
		function updatePhoneform() {
			pwCansle();
			phoneSell.className = "no";
			updatePhoneForm.className = "";
		}
		
		
		function phoneCansle() {
			phoneSell.className = "";
			updatePhoneForm.className = "no";
		}
		
		
		
		
		function updatePwCheck(f) {
			now = f.now.value;
			tonow = f.tonow.value;
			cktonow = f.cktonow.value;
			
			if(now != "" && tonow != "" && cktonow != ""){
				if(tonow == cktonow){
					f.pbt.disabled = false;
				}else{
					f.pbt.disabled = true;					
				}
			}else{
					f.pbt.disabled = true;				
			}
			
		}
		
		function updatePw() {
			let pwdock = null;
			let pwstr = null
			if(now == "${login.pw}"){
				$.ajax({
					url:"${pageContext.request.contextPath}/users/updatePw/0",
					type:"post",
					data:{users_idx:${login.users_idx},pw:tonow},
					success: function sc(s) {
						if(s == 1){
							str = "비밀번호를 변경했습니다";
							pwdock = true;
						}else{
							str = "비밀번호를 변경에 실패했습니다";
						}
						alert(str);
						if(pwdock){
							document.location.href = '${pageContext.request.contextPath}/users/mydata/1'
						}
					}
				})
			}else{
				alert("비밀번호를 다시 확인해주세요")
			}
		}
		
		
		function updatePhoneCheck(f) {
			tophone = f.toPhone.value;
			const phone_pattern = /^010[0-9]{8}$/;
			if(phone_pattern.test(tophone)){
				f.checkPh.disabled = false;
			}else{
				f.checkPh.disabled = true;
			}
		}
		
		function checkPhone(f) {
			$.ajax({
				url:"${pageContext.request.contextPath}/users/checkPhone",
				type:"POST",
				data:{phone:tophone},
				success: function sc(s) {
					if(s == 0){
						f.toPhone.readOnly = true;
						f.phbt.disabled = false;
						alert('사용가능한 번호입니다')
					}else{
						f.phbt.disabled = true;						
						alert('사용할수없는 번호입니다')
					}
					
				}
			})
		}
		
		function updatePhone() {
			$.ajax({
				url:"${pageContext.request.contextPath}/users/updatePhone",
				type:"POST",
				data:{users_idx:${login.users_idx},phone:tophone},
				success: function sc(s) {
					if(s == 1){
						alert('전화번호를 변경했습니다');
						document.location.href='${pageContext.request.contextPath}/users/mydata/1';
					}else{
						alert('전화번호변경에 실패했습니다');						
					}
				}
			})
		}
			
</script>
</html>