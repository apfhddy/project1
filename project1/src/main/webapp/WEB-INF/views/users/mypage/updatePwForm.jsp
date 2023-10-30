<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/setting/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
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
               	}
               	.in{
               		margin-left: 2%;
               		margin-top: 2%;
               		margin-bottom: 3%;
               		border-left: 0px;
               		border-top: 0px;
               		border-right: 0px;
               		width: 95%;
               		height: 35px;
               		font-size: 17px;
               	}
               	.bt1{
               		 background-color: #ff3478;
               		 cursor: pointer;
               	}
               	.bt1:active{
                	background-color: #A00038;
                }
               	.bt2{
               		background-color: #CDCDCD;
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
                  	<a style="text-decoration: none"  href = "${pageContext.request.contextPath }/">〈</a> 
             	</div>
           		<div class="hd-right">
              		비밀번호 변경
            	</div>
         	</div>
     	</div>
  	</header>
  	<div class="d1">
  		<form>
  			<div><input name = "pw" type = "password" class="in" placeholder="새비밀번호 입력" onkeyup="checkPw(this.form)"></div>
  			<div><input name = "pk" type = "password" class="in" placeholder="새비밀번호 확인" onkeyup="checkPw(this.form)"></div>
  			<div style="margin-left: 2%; font-size: 13px; color: gray; margin-top: 2%; margin-bottom: 6%;">*비밀번호는 안전하게 암호화되어 저장됩니다.<br>*비밀번호 설정 시 총 5자 이상의 영문+숫자+특수문자로 구성되어야 합니다.</div>
  			<div><input name = "bt" onclick="update()" disabled="disabled" class="bt2" style="margin-bottom:10%; color: white; font-weight: bold; border:0px; margin-left: 2%; width: 96%; height: 45px;" type = "button" value = "확인"></div>
  		</form>
  	</div>
</body>
<script type="text/javascript">
		let pw = null;
		let pk = null
		
		function checkPw(f) {
			pw = f.pw.value;
			pk = f.pk.value;
			if(pw != "" && pk != ""){
				f.bt.className = "bt1";
				f.bt.disabled = false;
			}else{
				f.bt.className = "bt2";
				f.bt.disabled = true;				
			}
		}
		function update() {
				if(pw.length >= 5){
					if(pw == pk){
						$.ajax({
							url:"${pageContext.request.contextPath}/users/updatePw/11",
							type:"POST",
							data:{users_idx:${idx},pw:pw},
							success: function sc(s) {
								if(s == 1){
									alert("업데이트 성공");
									document.location.href='${pageContext.request.contextPath}/users/login'
								}else{
									alert('업데이트 실패');
								}
							}
						})
					}else{
						alert('비밀번호가 일치하지 않습니다');
					}
				}else{
					alert('비밀번호는 5자 이상이여야 합니다');
				}	
			}
		

</script>
</html>