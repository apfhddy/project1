<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
                <div class="semi">
                     <div align="center">
						<c:forEach var="vo" items="${list }">
							<div class="card" style="width: 18rem;">
							  <img src="${vo.image }" class="card-img-top" alt="motelimage">
							  <div class="card-body">
							    <h5 class="card-title">${vo.name }</h5>
							  </div>
							  <ul class="list-group list-group-flush">
							    <li class="list-group-item">${vo.short_info }</li>
							    <li class="list-group-item">최대 : ${vo.max_person }인</li>
							    <li class="list-group-item">침대 : ${vo.bedsize }</li>
							    <li class="list-group-item">${vo.smoke }</li>
							    <li class="list-group-item">입실시간 : ${vo.entrance_time }</li>
							    <li class="list-group-item">퇴실시간 : ${vo.out_time }</li>
							    <li class="list-group-item">1박 가격 : ${vo.day_price }</li>
							  </ul>
							  <div class="card-body">
							    <input type="button" value="홈으로 가기" onclick="document.location.href='/pro/'">
							  </div>
							</div>
							</c:forEach>
					</div>
                </div>
            </div>
      </body>
    </html>
</DoCTYPE>
