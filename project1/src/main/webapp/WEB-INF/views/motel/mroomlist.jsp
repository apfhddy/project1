<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
                <div class="semi">
                     <div class="semi2" align="center">
						<c:forEach var="vo" items="${list }">
							<form action="/pro/res/m_res" method="post">
							<div class="semi3">
							<input type="hidden" name="m_region1_idx" value="${vo.m_region1_idx }">
							<input type="hidden" name="m_region2_idx" value="${vo.m_region2_idx }">
							<input type="hidden" name="motel_idx" value="${vo.motel_idx }">
							<input type="hidden" name="m_room_idx" value="${vo.m_room_idx }">
							<input type="hidden" name="checkin" value="${checkin }">
							<input type="hidden" name="checkout" value="${checkout }">
							<input type="hidden" name="day_price" value="${vo.day_price }">
							<div class="card" style="width: 18rem;">
							  <img src="${vo.image }" class="card-img-top" alt="motelimage">
							  <div class="card-body">
							    <h5 class="card-title">${vo.name }</h5>
							  </div>
							  <ul class="list-group list-group-flush">
							    <li class="list-group-item">체크인 : ${checkin }</li>
							    <li class="list-group-item">체크아웃 : ${checkout }</li>
							    <li class="list-group-item">${vo.short_info }</li>
							    <li class="list-group-item">최대 : ${vo.max_person }인</li>
							    <li class="list-group-item">인원수 : 
							    	<select name="person_size">
										<c:forEach begin="1" end="${vo.max_person }" step="1" var="i">
										<option value="${i }">${i }</option>
										</c:forEach>
									</select>
							    </li>
							    <li class="list-group-item">침대 : ${vo.bedsize }</li>
							    <li class="list-group-item">${vo.smoke }</li>
							    <li class="list-group-item">입실시간 : ${vo.entrance_time }</li>
							    <li class="list-group-item">퇴실시간 : ${vo.out_time }</li>
							    <li class="list-group-item">1박 가격 : ${vo.day_price }</li>
							    <li class="list-group-item">쿠폰선택 : 
							    	<select name="m_coupon_idx">
										<option value="0">선택안함</option> 
										<c:forEach var="vo1" items="${couponList }">
										<option value="${vo1.m_coupon_idx }">${vo1.name }</option>
										</c:forEach>
									</select>
							    </li>
							    <li class="list-group-item">남은 객실 수 : ${vo.room_number }</li>
							  </ul>
							  <div class="card-body">
							  <c:choose>
								<c:when test="${vo.room_number == 0}">							
									<input type="submit" value="예약하기" disabled="disabled">
								</c:when>
								<c:otherwise>
									<input type="submit" value="예약하기">
								</c:otherwise>
								</c:choose>
							  </div>
							</div>
							</div>
							</form>
						</c:forEach>		
					</div>
                </div>
            </div>
           
        </body>
    </html>
</DoCTYPE>