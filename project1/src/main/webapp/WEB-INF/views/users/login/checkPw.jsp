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
                            <a style="text-decoration: none"  href = "${pageContext.request.contextPath }/users/mypage">〈</a> 
                        </div>
                        <div class="hd-right">
                     		<c:choose>
                     			<c:when test = "${num == 1 }">내 정보 관리</c:when>
                     			<c:otherwise>회원탈퇴</c:otherwise>
                     		</c:choose>
                        </div>
                    </div>
                </div>
            </header>
       	<div>
            <div align="center" style="font-size: 18px;"> 
            <c:choose>
            	<c:when test="${num == 1 }">회원님의 소중한 개인정보를 안전하게 보호하기 위해<br>비밀번호를 한번 더 입력해주세요.<br></c:when>
            	<c:otherwise>회원탈퇴를 하시려면 안내 및 동의가 필요합니다.<br><font color="red">
정말로 회원탈퇴를 진행하시겠습니까?</font></c:otherwise>
            </c:choose>
            </div>
            <div>
           		<input type = "password" class="input1" placeholder="비밀 번호" onkeyup="inputPw(this,event)"><br><a id = "text" style="margin-left: 30%;"></a>        
            </div>
            <div style=" display : flex; border-top: 1px solid; border-color: #E8E8E8; bottom: 0%; position: absolute; padding-right: 99%; padding-top: 90px;">
				<input  id = "bt" name = "next" onclick="nexta()" type = "button" value = "확인" class="bt2" disabled="disabled" style="border-radius: 6px; border-width: 0px;">
			</div>
       	</div>
</body>
<script type="text/javascript">
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
			}else{
				a.innerHTML = "<font size = '2' color = 'red'>이메일(ID또는 이메일)과 비밀번호를 확인 후 다시 로그인해주세요. (5회이상 오류시 로그인 차단)<font>";
			}
		}

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
</script>
</html>