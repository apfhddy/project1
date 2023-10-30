<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
    <html lang="kr">
        <head>
            <meta charset="utf-8">
            <link rel="shortcut icon" href="//yaimg.yanolja.com/joy/sunny/static/images/favicon/favicon_16x16.png">
            <title>My 야놀자 | 글로벌 여가 플랫폼 | 야놀자 공식 사이트</title>

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

                .header {
                    width : 100%;
                    height : 70px;
                }
                .inner {
                    position : relative;
                    height : 100%;
                }
                .hd-in {
                    position : relative;
                    display: flex;
                    justify-content : space-around;
                    height : 100%;
                    border-bottom : 1px solid;
                    border-color : #EBEBEB;
                }
                .hd-left {
                    margin-left : 10%;
                    font-size : 30px;
                    font-weight: bolder;
                    margin-top : 1%;
                    
                }
                .hd-right {
                    display : flex;
                    justify-content: right;
                    margin-top : 1.5%;
                    width : 20%;
                }
                .hd-img1 {
                    margin-left : 15%;
                }
                .user-tab {
                    position : relative;
                    border : 1px solid #E7E7E7;
                    margin-left : 20%;
                    margin-right : 20%;
                    height : 100px;
                    margin-top : 3%;
                    border-radius: 15px;
                    
                }
                .user-info {
                    position : relative;
                    display : flex;
                    justify-content: between;
                    height : 100px;
                    justify-content: space-between;
                }
                .user-infol {
                    display : flex;
                    margin-top : 3%;
                    margin-left : 4%;
                    width : 40%;
                }
                .user-name {
                    margin-left : 5%;
                    margin-top : 3%;
                    
                }
                .user-infor {
                    margin-top : 4%;
                    margin-right : 4%;
                }
                .user-infor a {
                    text-decoration: none;
                }
                .user-infor a:visited {
                    color : #FF4E80;
                }
                .inven {
                    border : 1px solid #E7E7E7;
                    border-radius: 15px;
                    margin-top : 2%;
                    position : relative;
                    margin-left : 20%;
                    margin-right : 20%;
                    height : 100px;
                }
                .inven-top {
                    display : flex;
                    position : relative;
                    width : 100%;
                    height : 50%;
                }
                .point {
                    margin-left : 2%;
                    margin-top : 1%;
                    width : 100%;
                    border-bottom : 1px solid #F4F4F4;
                    border-right : 1px solid #F4F4F4;
                }
                .point-one { 
                    display : flex;
                }
                .point-two {
                    margin-right : 5%;
                    margin-top : 1%;
                }
                .coupon {
                    margin-left : 2%;
                    margin-top : 1.1%;
                    width: 100%;
                    border-bottom : 1px solid #F4F4F4;
                    border-right : 1px solid #F4F4F4;
                }
                .coupon-one {
                    display: flex;
                    margin-top : 0.5%;
                }
                .coupon-two {
                    margin-right : 5%;
                    margin-top : 1%;
                }
                .point a{
                    display : flex;
                    width : 100%;
                    text-decoration: none;
                    justify-content: space-between;
                    color : black;
                }
                .coupon a{
                    display : flex;
                    width : 100%;
                    text-decoration: none;
                    justify-content: space-between;
                    color : black;
                }
                .inven-bot {
                    display : flex;
                    position : relative;
                    width : 100%;
                    height : 50%;
                }
                .review {
                    margin-left : 2%;
                    
                    margin-top : 1.1%;
                    width : 100%;
                    border-bottom : 1px solid #F4F4F4;
                    border-right : 1px solid #F4F4F4;
                }
                .review-one {
                    display: flex;
                    margin-top : 0.5%;
                }
                .review-two {
                    margin-right : 5%;
                    margin-top : 1%;
                }
                .jjim {
                    margin-left : 2%;
                    
                    margin-top : 1.1%;
                    width: 100%;
                    
                }
                .jjim-one {
                    display: flex;
                    margin-top : 0.5%;
                }
                .jjim-two {
                    margin-right : 5%;
                    margin-top : 0.5%;
                }
                .review a{
                    display : flex;
                    width : 100%;
                    text-decoration: none;
                    justify-content: space-between;
                    color : black;
                }
                .jjim a{
                    display : flex;
                    width : 100%;
                    text-decoration: none;
                    justify-content: space-between;
                    color : black;
                }
                .po-one {
                    margin-top : 1.5%;
                    width : 100%;
                }
                .cu-one {
                    margin-top : 2.0%;
                    width : 100%;
                }
                .rw-one {
                    width : 100%;
                }
                .jj-one {
                    width : 100%;
                    
                }
                .rslist {
                    font-weight: bolder;
                    margin-top : 2%;
                    margin-left : 20%;
                }
                .reserv-one a {
                    display : flex;
                    text-decoration: none;
                    color : black;
                    margin-top : 2%;
                    border : 1px solid #E7E7E7;
                    margin-left : 20%;
                    margin-right : 20%;
                    border-radius: 8px;
                    padding : 15px;
                    justify-content: space-between;
                }
                .rslist img {
                    margin-top : 2%;
                }
                .reserv-one a:hover {
                    border : 1px solid black;
                }
                .end-one a, .end-two a {
                    display : flex;
                    text-decoration: none;
                    color : black;
                    font-weight : 500;
                    width : 100%;
                    justify-content: space-between;
                }
                .end-one, .end-two {
                    
                    margin-left : 20%;
                    margin-right : 20%;
                    
                    
                }
                .end-one {
                    margin-top : 3%;
                    border : 1px solid #E7E7E7;
                    padding : 15px;
                    
                }
                .end-two {
                    margin-bottom : 2%;
                    border-bottom : 1px solid #E7E7E7;
                    border-left: 1px solid #E7E7E7;
                    border-right : 1px solid #E7E7E7;
                    padding : 15px;
                }
                .end-one a:hover, .end-two a:hover {
                    background-color : #F0F0F0;
                }
                .ethree {
                    color: red;
                    font-weight : 600;
                }
                
               
                
            </style>
        </head>
        <body>
            <header class="header">
                <div class="inner">
                    <div class="hd-in">
                        <div class="hd-left">
                            MY 야놀자
                        </div>
                        <div class="hd-right">
                            <div class="hd-img1">
                                <a href="${pageContext.request.contextPath }/"><img src="https://yaimg.yanolja.com/joy/sunny/static/images/icon-home-black-line-2.svg"></a>
                            </div>
                            <div class="hd-img2">
                                <a href="#"><img src="https://yaimg.yanolja.com/joy/sunny/static/images/icon-cart-black-line-2.svg"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <div class="main">
                <div class="main-top">
                    <div class="user-tab">
                        <div class="user-info">
                            <div class="user-infol">
                                <div class="user-pic">
                                    <img src="https://yaimg.yanolja.com/joy/sunny/static/images/my/img-my-profile-50.svg">
                                </div>
                                <div class="user-name">
                                   ${login.nickname }
                                </div>
                            </div>
                            <div class="user-infor">
                                <a href="${pageContext.request.contextPath }/users/mydata/0">내 정보관리></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-tops">
                    <div class="inven">
                        <div class="inven-top">
                            <div class="point">
                                <a href="#">
                                    <div class="point-one">
                                        <img src="https://yaimg.yanolja.com/joy/sunny/static/images/my/icon-point-line-1.svg"> <div class="po-one">야놀자 포인트</div>
                                    </div>
                                    <div class="point-two">
                                        0<img src="https://yaimg.yanolja.com/joy/sunny/static/images/my/icon-arrow-small-black.svg">
                                    </div>
                                </a>
                            </div>
                            <div class="coupon">
                                <a href="#">
                                    <div class="coupon-one">
                                        <img src="https://yaimg.yanolja.com/joy/sunny/static/images/my/icon-coupon-2-line-1.svg"> <div class="cu-one">쿠폰함</div>
                                    </div>
                                    <div class="coupon-two">
                                        3<img src="https://yaimg.yanolja.com/joy/sunny/static/images/my/icon-arrow-small-black.svg">
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="inven-bot">
                            <div class="review">
                                <a href="#">
                                    <div class="review-one">
                                        <img src="https://yaimg.yanolja.com/joy/sunny/static/images/my/icon-review-line-1.svg"> <div class="rw-one">나의 후기</div>
                                    </div>
                                    <div class="review-two">
                                        <img src="https://yaimg.yanolja.com/joy/sunny/static/images/my/icon-arrow-small-black.svg">
                                    </div>
                                </a>
                            </div>
                            <div class="jjim">
                                <a href="#">
                                    <div class="jjim-one">
                                        <img src="https://yaimg.yanolja.com/joy/sunny/static/images/my/icon-favorite-border-line-1.svg"> <div class="jj-one">찜</div>
                                    </div>
                                    <div class="jjim-two">
                                        <img src="https://yaimg.yanolja.com/joy/sunny/static/images/my/icon-arrow-small-black.svg">
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-mid">
                    <div class="reserv">
                        <div class="rslist">예약 내역</div>
                        
                    </div>
                    <div class="reserv-one">
                        <a href="/pro/res/rescheck">
                            <div class="reserv-two">내 숙소 예약내역</div>
                            <div class="reserv-thr">
                                <img src="https://yaimg.yanolja.com/joy/sunny/static/images/my/icon-arrow-small-black.svg">
                            </div>
                        </a>
                    </div>
                    <div class="reserv">
                        <div class="rslist">사업자 등록</div>
                        
                    </div>
                    <div class="reserv-one">
                        <a href="#">
                            <div class="reserv-two">사업자 신청작성</div>
                            <div class="reserv-thr">
                                <img src="https://yaimg.yanolja.com/joy/sunny/static/images/my/icon-arrow-small-black.svg">
                            </div>
                        </a>
                    </div>
                </div>
                <div class="main-foot">
                    <div class="reserv">
                        <div class="rslist"><img src="https://yaimg.yanolja.com/joy/sunny/static/images/icon-helpdesk-line-2.svg"> 고객센터</div>
                        
                    </div>
                    <div class="reserv-one">
                        <a href="#">
                            <div class="reserv-two">문의하기</div>
                            <div class="reserv-thr">
                                <img src="https://yaimg.yanolja.com/joy/sunny/static/images/my/icon-arrow-small-black.svg">
                            </div>
                        </a>
                    </div>
                    <div class="foot-end">
                        <div class="end-one">
                            <a href="#">
                                <div class="eone">자주 묻는 질문 FAQ</div>
                                <div class="etwo"><img src="https://yaimg.yanolja.com/joy/sunny/static/images/my/icon-arrow-small-black.svg"></div>
                            </a>
                            
                        </div>
                        <div class="end-two">
                            <a href="${pageContext.request.contextPath }/users/logout">
                                <div class="ethree">로그아웃</div>
                                <img src="https://yaimg.yanolja.com/joy/sunny/static/images/my/icon-arrow-small-black.svg">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </body>
    </html>