<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/setting/setting.jsp" %>
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
               		border: 1px solid; 
               		border-color: #E8E8E8; 
               		box-shadow: 1px 1px 1px gray;
               	}
               	.d2{
               	 margin-left: 3%;
               	 margin-right: 2%;
               	}
               	textarea::placeholder {
					font-size: 16px;
					padding-top: 1%;
					padding-left: 1%;
				}
				.text{
					background:  #b4b4b4;
				}
				.text1{
					visibility: hidden; 
				}
				.bta1{
					background-color: #ff3478;
					cursor: pointer;
				}
				.bta2{
					background-color: #CDCDCD;
				}
				   	.no{
               		display: none;
               	}
				
</style>		
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<header class="header">
       	<div class="inner">
         	<div class="hd-in">
               	<div class="hd-left">
                	<a style="text-decoration: none"  href = "${pageContext.request.contextPath }/users/mydata/1">〈</a> 
               	</div>
          		<div class="hd-right">
                     		회원탈퇴
                </div>
           	</div>
      	</div>
	</header>
	   	<div id = "checka">
            <div align="center" style="font-size: 18px;"> 
            	회원탈퇴를 하시려면 안내 및 동의가 필요합니다.<br><font color="red">
정말로 회원탈퇴를 진행하시겠습니까?</font>
            </div>
            <div>
           		<input type = "password" class="input1" placeholder="비밀 번호" onkeyup="inputPw(this,event)"><br><a id = "text" style="margin-left: 30%;"></a>        
            </div>
            <div style=" display : flex; border-top: 1px solid; border-color: #E8E8E8; bottom: 0%; position: absolute; padding-right: 99%; padding-top: 90px;">
				<input  id = "bt" name = "next" onclick="nexta()" type = "button" value = "확인" class="bt2" disabled="disabled" style="border-radius: 6px; border-width: 0px;">
			</div>
       	</div>
	
	<div id = "out" class="no">
		<div class="d1">
			<div style="margin-top: 3%;" class="d2">
				<div style="margin-bottom: 2%;">1. 현재 사용중인 계정 정보는 복구 불가능합니다.</div>
				<div style="font-size: 14px; margin-bottom: 4%;">탈퇴 시 현재 사용하고 계신 계정 정보는 재생이 불가능한 방법으로 파기되며 본인과 타인 모두 복구가 불가능합니<br>다. 현재 사용중인 아이디의 경우 탈퇴 후 24시간 이후부터 동일 아이디로 재가입이 가능합니다.</div>
				<div style="margin-bottom: 1.5%;">2. 회원 탈퇴 시, 회원님의 모든 혜택이 소멸되며 어떠한 경우에도 복구할 수 없습니다.</div>
				<div style=" background-color: #E8E8E8;  border-radius: 6px; margin-bottom: 7%;">
					<div style="margin-left: 3%; padding-top: 2%;"><img src="//yaimg.yanolja.com/joy/sunny/static/images/my/ic-my-point-18.svg"> 적립 포인트</div>
					<div align="right" style="margin-right: 5%; padding-bottom: 2%;"><b>0 P</b></div>
				</div>
				<div style="margin-bottom: 2%;">3. 게시판형 서비스에 등록된 게시물은 삭제되지 않고 유지됩니다.</div>
				<div style="font-size: 14px; margin-bottom: 6%;">이용후기와 같은 게시판형 서비스에 등록한 게시물은 삭제되지 않고 유지됩니다. 탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없으므로, 게시글을 임의로 삭제할 수 없습니다. <font color="red">삭제를 원하는 게시물이 있을 경우, 반드시 삭제 후 탈퇴 하시기 바라며, 필요한 데이터는 미리 백업을 해주시기 바랍니다.</font></div>
				<div style="margin-bottom: 2%;">4. 탈퇴사유</div>
				<form>
					<div>
						<div><input type ="radio" name = "type" value="1">&nbsp;&nbsp;재가입 (ID 변경)</div>
						<div><input type ="radio" name = "type" value="2">&nbsp;&nbsp;나에게 필요한 정보가 부족하거나 재미가 없어서, 혹은 불필요한 정보가 많아서</div>
						<div><input type ="radio" name = "type" value="3">&nbsp;&nbsp;개인정보 유출 방지 등 보안 상의 문제</div>
						<div><input type ="radio" name = "type" value="4">&nbsp;&nbsp;기타</div>
						<div style="margin-top: 1.5%; margin-left: 5%;  "><textarea name = "text" disabled="disabled" class="text" cols="70" rows="5" placeholder="탈퇴사유 직접입력" style="font-size: 17px;"></textarea></div>
						<div id = "t" class="text1" style="margin-bottom: 2%; margin-left: 1.5%;"><font color="red">탈퇴사유를 입력해주세요</font></div>
					</div>
					<div style="margin-left: 3%; margin-right: 3%; margin-bottom: 4%; border: 1px solid; border-color: #E8E8E8"></div>
					<div style="font-size: 14px; margin-bottom: 2%;"><input name = "ck" type = "checkbox" onclick="check()"> 상기 내용을 확인하였으며 동의합니다.</div>
				</form>
				<input id = "sub" class = "bta2" type = "button" value = "회원탈퇴하기" style="width: 100%; border-radius: 6px; padding-top: 2%; padding-bottom: 2%; font-size: 23px; color: white; margin-bottom: 3%; font-weight: bold; border: 0px" onclick="last()" disabled="disabled">
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">

	const radio = Array.from($('input[type = radio]'));
	const f = document.querySelector('form'); 
	const sub = document.querySelector('#sub');
	const t = document.querySelector('#t');
 	const checka = document.querySelector('#checka');
 	const out = document.querySelector('#out');
	let type = null;
	
	
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
			checka.className="no";
			out.className = "";
		}else{
			a.innerHTML = "<font size = '2' color = 'red'>이메일(ID또는 이메일)과 비밀번호를 확인 후 다시 로그인해주세요. (5회이상 오류시 로그인 차단)<font>";
		}
	}
	
	
	
	
	
	
	
	
	
	const radioEven = (e) => {
		type = e.target.value;
		if(type == "4"){
			f.text.disabled = false;
			f.text.className = "";
		}else{
			t.className = "text1";
			f.text.disabled = true;
			f.text.className = "text";
		}
		check();
	}
	
	function check() {
		if(f.ck.checked && type != null){
			sub.className = "bta1";
			sub.disabled = false;
		}else{
			sub.className = "bta2";
			sub.disabled = true;			
		}
	}
	
	function last() {
			if(type == "4" && f.text.value == ""){
				t.className = "";
				return;
			}
			f.submit();
	}
	
	
	
	radio.forEach(r => {
		r.onclick = radioEven;
	})
	
</script>
</html>