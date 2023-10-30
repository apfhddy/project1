<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/setting/setting.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
    <html lang="kr">
        <head>
            <meta charset="utf-8">
            <link rel="shortcut icon" href="//yaimg.yanolja.com/joy/sunny/static/images/favicon/favicon_16x16.png">
            <title>야놀자 | 봄 여행도 놀자. 계산적으로.</title>
            <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
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
                    z-index: 11;
                    width : 100%;
                    height : 64px;
                    position: relative;
                    display: block;
                    border-bottom: 1px solid;
                    border-color : #EAEAEA;
                    background-color: #F7F7F7;
                }
                .inner {
                    display : flex;
                    padding-left : 40px;
                    align-items : center;
                    height : 100%;
                    max-width : 1664px;
                    justify-content: space-between;
                    box-sizing: border-box;
                }
                .top-info {
                    left : 16px;
                    padding-top : 23px;
                    padding-bottom : 21px;
                    font-size : 20px;
                    font-weight : 600;
                    color : #222222;
                    display : flex;
                    align-items: center;
                    height : 100%;
                    position : relative;
                    box-sizing: border-box;
                    
                }
                .room-vod {
                    height : 30px;
                    width : 53px;
                    border-radius : 5px;
                    box-sizing: border-box;
                    aspect-ratio: auto 53 30;
                    overflow: clip;
                    overflow-clip-margin: content-box;
                    margin-right : 20px;
                }
                .right {
                    left : 16px;
                    padding-top : 23px;
                    padding-bottom : 21px;
                    display : flex;
                    align-items: center;
                    height : 100%;
                    position : relative;
                    box-sizing: border-box;
                    
                    margin-right : 5%;
                }
                .right a {
                    text-decoration: none;
                }
                .right a:visited {
                    color : #222222;

                }
                .right a:hover {
                    text-decoration : underline !important;
                }
                .right a:active {
                    font-size : 12px;
                    transition-duration: 0.3s;
                }
                .top-right {
                    border-left : 1px solid;
                    border-color : RGB(235, 235, 235);
                    margin-left : 20px;
                    padding-left : 20px;
                }
                .head-banner {
                    position : relative;
                    
                    width : 100%;
                    height : 80px;
                    z-index: 100;
                    
                    border-bottom: 1px solid;
                    border-color : #EAEAEA;
                }
                .head-inner {
                    display : flex;
                    justify-content: space-around;
                    
                }
                .main-logo {
                    margin-top : 10%;
                    aspect-ratio : auto 53 30;
                    width : 100px;
                    margin-left : 4%;
                }
                .logo-banner {
                    
                    align-items: center;
                    display: flex;
                    height : 100%;
                    position : relative;
                    width : 100%;
                    z-index : 1;
                }
                .search-tool {
                    text-decoration: none;
                    font-size : 1.4rem;
                    font-weight : 400;
                    overflow: hidden;
                    text-overflow: nowrap;
                    text-align: left;
                    padding : 10px;
                    margin-left : auto;
                    border-radius: 1.8rem;
                    border : 0.1rem solid;
                    color : #919191;
                    position : relative;
                    
                    align-items : center;
                    display : inline-flex;
                    max-width : 100%;
                    vertical-align : middle;
                    

                }
                .search-tool:hover, .search-tool:focus {
                    animation-duration: 3s; animation-name: rainbowLink; animation-iteration-count: infinite; } 
                    @keyframes rainbowLink {     
                    0% { color: #ff2a2a; }
                    15% { color: #ff7a2a; }
                    30% { color: #ffc52a; }
                    45% { color: #43ff2a; }
                    60% { color: #2a89ff; }
                    75% { color: #202082; }
                    90% { color: #6b2aff; } 
                    100% { color: #e82aff; }

                }
                .tool-fix{
                    margin-left : 26%;
                    display : block;
                    width :100%;
                    margin-top : 5%;
                    
                }
                .search-img {
                    height : 30px;
                    aspect-ratio : auto 53 30;
                    width : 30px;
                    
                    display : inline-flex;
                }
                .right-banner {
                    display : flex;
                    position : relative;

                }
                .right-info {
                    align-items : center;
                    display : flex;
                    height : 100%;
                    position : relative;
                    z-index : 1;
                    font-weight : bolder;
                    margin-left : -10%;
                    
                }
                .right-info a {
                    border-radius : 1.8rem;
                }
                .right-info a:hover {
                    transition-duration: 0.3s;
                    background-color :#CACACA;
                }
                .right-lang {
                    align-items : center;
                    display : flex;
                    height : 89%;
                    position : relative;
                    z-index : 1;
                    font-weight : 10;
                    font-size : 30px;
                    padding-left : 7%;
                    
                }
                .right-lang a {
                    border-radius: 1.8rem;
                }
                .right-lang a:hover {
                    transition-duration: 0.3s;
                    background-color :#CACACA;
                }
                .right-user {
                    font-size : 30px;
                    text-decoration: none;
                    
                    
                    margin-top : 3%;
                    height : 60px;
                    padding-top : 0px;
                    padding-bottom : 0px;
                    padding-left : 5px;
                    padding-right : 5px;
                    margin-left : auto;
                    border-radius: 1.8rem;
                    border : 0.1rem solid;
                    color : #919191;
                    position : relative;
                    
                    align-items : center;
                    display : inline-flex;
                    max-width : 100%;
                    vertical-align : middle;
                }
                .rb-a {
                    text-decoration: none;
                }
                .rb-a:visited {
                    color : #222222;

                }
                .right-user:hover {
                    transition-duration: 0.3s;
                    box-shadow : 0px 3px 6px #adadad
                }
                .cata-banner {
                    font-size :8px;
                    font-weight : bold;
                    color : #B9B9B9;
                    text-align: center;
                    width : 100%;
                    height : 80px;
                    
                }
                .cata-banner img {
                    width : 24px;
                    height : 24px;
                    filter: invert(84%) sepia(4%) saturate(10%) hue-rotate(314deg) brightness(87%) contrast(94%);
                }
                .cata-6 img{
                    width : 60px;
                    height : 36px;
                    transform:rotate(90deg);
                    -moz-transform: scaleX(-1); 
                    -o-transform: scaleX(-1); 
                    -webkit-transform: scaleX(-1); 
                    transform: scaleX(-1);   
                    filter: FlipH;
                    -ms-filter: "FlipH";
                    
                }
                .gori-banner {
                    display : flex;
                    justify-content: space-around;
                    align-items : center;
                    
                    height : 80px;
                }
                .cata-1, .cata-2, .cata-3, .cata-4, .cata-5, .cata-6, .cata-7 {
                    
                    padding-bottom : 0.2%;
                    border-bottom : 10px;
                    height : 80px;
                    display :flex;
                    align-items: center;
                }
                .cata-6 {
                    line-height : 0.5em;
                    margin-bottom : 10px;
                }
                .gori-banner a {
                    text-decoration: none;
                }
                .gori-banner a:visited {
                    color : #B9B9B9;
                }
                .cata-1:hover, .cata-2:hover, .cata-3:hover, .cata-4:hover, .cata-5:hover, .cata-6:hover, .cata-7:hover {
                    
                    border-bottom : 3px solid;
                    border-color : #CACACA;
                    color : black;
                }
                .footer {
                    margin-left : 2%;
                    margin-right : 2%;
                }
             	.semi {
                    width :100%;
                    height :100%;
                    text-align: center;
                    font-size : 15px;
                    font-weight : bolder;
					position : relative;
                }
                
                .semi2 {
                	display: flex;
                }
                
                .semi3 {
                	padding: 2em;
                }
                               
                .foot-top {
                    position : relative;
                    width : 100%;
                    height : 50px;
                    z-index : 100;
                    
                }
                .ft-right {
                    margin-right : 5%;
                }
                .ft-main {
                    display : flex;
                    justify-content: space-between;
                }
                .ft-left img {
                    width : 150px;
                }
                .foot-form {
                    
                }
                .sns-link {
                    display: inline-block;
                    text-indent: -9999rem;
                    margin: 0 1.5rem 1.8rem 0;
                }
                .instalink {
                    background: url(//yaimg.yanolja.com/joy/sunny/static/images/footer/ic-sns-instagram.svg) no-repeat;
                    width: 2.5rem;
                    height: 2.5rem;
                }
                .homepInfo {
                    position : relative;
                }
                .homepInfo li {
                    display : inline-flex;
                    border : 1px solid;
                    border-color :#DFDFDF;
                    color : #919191;
                    font-size : 12px;
                    padding : 4px;
                }
                .homepInfo li a{
                    text-decoration: none;
                }
                .homepInfo li a:visited {
                    color : #919191;
                }
                .homepInfo li:hover {
                    border-color : black;
                }
                .companyInfo {
                   color : #919191;
                   font-size : 12px;
                }
                .yaInfo {
                    color : #919191;
                   font-size : 12px;
                }
                .lawInfo {
                    border-bottom : 1px solid;
                    padding-bottom : 2%;
                    border-color : #E8E8E8;
                }
                .lawInfo button {
                    background-color: white;
                    border : 1px solid;
                    border-color :#DFDFDF;
                    color : #919191;
                    font-size : 12px;
                }
                .lawInfo button:hover {
                    border-color : black;
                }
                .reward-tab {
                    position : relative;
                    
                    width : 100%;
                }
                .reward {
                    padding-top : 2%;
                    display : flex;
                    justify-content: space-between;
                    font-size : 12px;
                    color : #919191;
                    text-align : center;
                    padding-bottom : 4%;
                }
         
                
            </style>
            
        </head>
        <body>
            <header class="header">
                 <div class="inner">
                    <div class="left">
                        <span class="top-info">
                            방과 50개 이상의 기능
                        </span>
                    </div>
                    <span class="right">
                            <img class="room-vod" src="https://a0.muscache.com/im/pictures/420c6e43-7896-4617-9ff4-ad05eb1f03f8.jpg?im_q=highq&im_w=240">
                            <a href : "#">방 동영상 보기</a>
                        <span class="top-right">
                            <a href : "#">자세히 알아보기</a>
                        </span>
                    </span>
                    
                </div>
            </header>
            <div class = "main">
                <div class = "head-banner">
                     <div class = "head-inner">
                        <div class="left-banner">
                            <div class="logo-banner">
                                <a class = "img-banner" href="#"><img class="main-logo" src="data:image/png;base64,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"></a>
                            </div>
                        </div>
                        <div class="middle-banner">   
                                <span class="tool-fix">
                                    <a class= "search-tool" href="#">최저가 보상 상품 검색하기<img class="search-img" src="https://cdn-icons-png.flaticon.com/512/8765/8765985.png"></a>
                                </span>
                        </div>
                        <div class="right-banner">
                            <div class="right-info">
                               <a class="rb-a" href="#">당신의 공간을 야!놀자 하세요</a>
                            </div>
                            <div class="right-lang">
                                <a style="text-decoration: none;" class="rb-a" href="#">${login == null ? "🌎" : "☢️"}</a>
                            </div>
                            <div class="right-user">
                                <a style="text-decoration: none;" class="rb-a" href="${pageContext.request.contextPath }${login == null ? "/users/login" : "/users/mypage"}">≡ 👤</a>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="cata-banner">
                    <div class="gori-banner">
                        <div class="cata-1">
                            <a href="${pageContext.request.contextPath }${login == null ? "/users/login" : "/region/motelregion1"}"><img src="https://a0.muscache.com/pictures/7630c83f-96a8-4232-9a10-0398661e2e6f.jpg"/><br>모텔</a>
                        </div>
                        <div class="cata-2">
                            <a href="${pageContext.request.contextPath }${login == null ? "/users/login" : "/region/hotelregion1"}"><img src="https://a0.muscache.com/pictures/78ba8486-6ba6-4a43-a56d-f556189193da.jpg"/><br>호텔/리조트</a>
                        </div>
                        <div class="cata-3">
                            <a href="#"><img src="https://a0.muscache.com/pictures/3b1eb541-46d9-4bef-abc4-c37d77e3c21b.jpg"/><br>펜션/풀빌라</a>
                        </div>
                        <div class="cata-4">
                            <a href="#"><img src="https://a0.muscache.com/pictures/ca25c7f3-0d1f-432b-9efa-b9f5dc6d8770.jpg"/><br>글램핑/캠핑</a>
                        </div>
                        <div class="cata-5">
                            <a href="#"><img src="https://a0.muscache.com/pictures/3fb523a0-b622-4368-8142-b5e03df7549b.jpg"/><br>레저/티켓</a>
                        </div>
                        <div class="cata-6">
                            <a href="#"><img src="https://yaimg.yanolja.com/v5/2022/07/04/16/62c312f5d9f547.97446502.png"/><br>교통/항공</a>
                        </div>
                        <div class="cata-7">
                            <a href="#"><img src="https://a0.muscache.com/pictures/8e507f16-4943-4be9-b707-59bd38d56309.jpg"/><br>해외여행</a>
                        </div>
                    </div>
                </div>