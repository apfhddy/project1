<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/setting/setting.jsp" %>
<!DOCTYPE html>
    <html lang="kr">
        <head>
            <meta charset="utf-8">
            <link rel="shortcut icon" href="//yaimg.yanolja.com/joy/sunny/static/images/favicon/favicon_16x16.png">
            <title>야놀자 로그인 | 글로벌 여가플랫폼 | 야놀자 공식 사이트</title>

            <style>
                html,body,div,span,object,iframe,h1,h2,h3,h4,h5,h6,p,
                blockquote,pre,abbr,address,cite,code,del,dfn,em,img,
                ins,kbd,q,samp,small,strong,sub,sup,var,b,i,dl,dt,dd,ol,ul,li,
                fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,
                article,aside,canvas,details,figcaption,figure,footer,header,hgroup,
                menu,nav,section,summary,time,mark,audio,video,fieldset {margin:0; padding:0; }


                ol,ul{list-style:none}
                li { list-style-type:none; }
                table{border-collapse:collapse;border-spacing:0;}
                img{max-width:100%;height:auto;}
                mark{background:none}
                select{max-width:100%;}
                caption, legend {display:none;}
                hr{display:none;}
                h1,h2,h3,h4,h5,h6 { font-size:100%; }
                address,strong{font-style:normal; font-weight:normal;}
                table {border-collapse:collapse; }
                input, select{outline: none;font-family:inherit}

                input::placeholder {
                    color : #D7D7D7;
                }
                ::-ms-value {
                    color : white;
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
                .main-input {
                    position :relative;
                }
                .inputform {
                    display :block;
                    justify-content: center;
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
                .input2 {
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
                .login1 {
                    width : 40%;
                    height : 50px;
                    margin-left : 30%;
                    margin-top : 5%;
                    border-radius: 5px;
                    border : none;
                    background-color: #ff3478;
                    cursor: pointer;
                }
                .login1:active{
                
                    background-color: #A00038;
                }
                .login2 {
                    width : 40%;
                    height : 50px;
                    margin-left : 30%;
                    margin-top : 5%;
                    border-radius: 5px;
                    border : none;
                    background-color: #CDCDCD;
                    
                }
                .main-sub {
                    position : relative;
                }
                .msub {
                    margin-top : 1%;
                    display : flex;
                    justify-content: center;
                }
                .sub1 {
                    
                    margin-right : 2%;
                    padding-right: 2%;
                    border-right : 2px solid;
                    border-color : #D2D2D2;
                    font-weight: 400;
                    font-size : 12px;
                }
                .sub2 {
                    font-weight : 400;
                    font-size : 12px;
                }
                .msub a {
                    text-decoration: none;
                }
                .sub1 a:visited, .sub2 a:visited {
                    color : black;
                }
                .sub1 a:hover, .sub2 a:hover {
                    background-color : gainsboro;
                }

            </style>
        </head>
        <body>
            <header class="header">
                <div class="inner">
                    <div class="hd-in">
                        <div class="hd-left">
                            <a style="text-decoration: none"  href = "${pageContext.request.contextPath }/">〈</a> 
                        </div>
                        <div class="hd-right">
                     		<div onclick="adminJoin()">로그인</div>
                        </div>
                    </div>
                </div>
            </header>
            <div class="main">
                <div class="main-input1">
                    <form action="form_ok.php" method ="POST" class="inputform">
                        <input class="input1" name = "id" onkeyup="dataForm(this.form,event)" type="text" placeholder="이메일"/><a id = "text"></a>
                        <input class="input2" name = "pw" onkeyup="dataForm(this.form,event)" type="password" placeholder="비밀번호"/>
                        <input class="login2" name = "bt" onclick="checkUser()" disabled="disabled" type="button" value="로그인" style="color : white; font-weight : bold; font-size : 14px;"/>
                    </form>
                </div>
                <div class="main-sub">
                    <div class="msub">
                        <div class="sub1">
                            <a href="${pageContext.request.contextPath }/users/pind">비밀번호 찾기></a>
                        </div>
                        <div class="sub2">
                            <a onclick="join()" style="cursor: pointer;">이메일로 회원가입></a>
                        </div>
                    </div>
                </div>
            </div>
        </body>
        <script type="text/javascript">
        
        let email = null;
        let pw = null;
        const a = document.querySelector('#text');
        
		let admin = 0;
        
        
        function dataForm(f,e) {
			email = f.id.value;
			pw = f.pw.value;
			const checkEnter =  e.keyCode  == 13;
			if(email != "" && pw != ""){
				f.bt.disabled = false;
				f.bt.className = "login1";
				if(checkEnter){
					checkUser();
				}
			}else{
				f.bt.disabled = true;
				f.bt.className = "login2";
			}
        	
        	
		}
        

        function checkUser() {
        /* 	let c = "${cookie.failLog.value}";
        	if(c != ""){
        		if(+c >= 5){
        			alert('비밀번호를 수정해주세요');
        			return;
        		}
        	} */
			$.ajax({
				url:"${pageContext.request.contextPath}/users/checkLogin",
				type:"POST",
				data:{email:email,pw:pw},
				success: function sc(s) {
					//c = s.c;
					if(s.USERS_IDX != null){
						document.location.href = '${pageContext.request.contextPath}/users/loginForm/'+s.USERS_IDX;
					}else{
						a.innerHTML = "<font color = 'red' size = '2' disabled='disabled'>입력한 회원 정보를 다시 확인해주세요</font>"
					}
				}
			})
		}
        
        
        
        function join() {
			if(admin == 3){
				document.location.href = '${pageContext.request.contextPath }/admin/joinForm';
			}else{
				document.location.href = '${pageContext.request.contextPath }/users/joinForm';
			}
		}	
        
        function adminJoin() {
			admin++;
		}
        
        </script>
    </html>