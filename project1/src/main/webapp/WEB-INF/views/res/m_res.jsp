<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
                <div class="semi">
					<div align="center">
						<c:forEach var="vo" items="${list }">
							<form action="/pro/res/resultmotel" method="post">						
							<input type="hidden" name="m_region1_idx" value="${list.get(0).m_region1_idx }">
							<input type="hidden" name="m_region2_idx" value="${list.get(0).m_region2_idx }">
							<input type="hidden" name="motel_idx" value="${list.get(0).motel_idx }">
							<input type="hidden" name="m_room_idx" value="${list.get(0).m_room_idx }">
							<input type="hidden" name="checkin" value="${checkin }">
							<input type="hidden" name="checkout" value="${checkout }">
							<input type="hidden" name="person_size" value="${person_size }">
							<input type="hidden" name="total_price" value="${coupon_price }">
							<input type="hidden" name="m_coupon_idx" value="${m_coupon_idx }">
							<div class="card" style="width: 18rem;">
							  <div class="card-body">
							    <h5 class="card-title">객실 이름 : ${list.get(0).name }}</h5>
							  </div>
							  <ul class="list-group list-group-flush">
							    <li class="list-group-item">체크인 날짜 : ${checkin }</li>
							    <li class="list-group-item">입실 시간 : ${list.get(0).entrance_time }</li>
							    <li class="list-group-item">체크아웃 날짜 : ${checkout }</li>
							    <li class="list-group-item">퇴실 시간 : ${list.get(0).out_time }</li>
							    <li class="list-group-item">예약 인원 수 : ${person_size }</li>
							    <li class="list-group-item">방문 수단 : 
									<select name="vehicle"> 
										<option value="도보">도보</option>
										<option value="차량">차량</option>
									</select>
								</li>
							    <li class="list-group-item">예약자 이름 : <input type="text" name="res_name" required="required"></li>
							    <li class="list-group-item">예약자 전화번호 : <input type="text" name="res_phone" required="required"></li>
							    <li class="list-group-item">이용자 이름 : <input type="text" name="use_name" required="required"></li>
							    <li class="list-group-item">이용자 전화번호 : <input type="text" name="use_phone" required="required"></li>
							    <li class="list-group-item">총금액 : ${total_price }</li>
							    <li class="list-group-item">할인된 총금액 : ${coupon_price }</li>
							    <li class="list-group-item">결제 수단 : 
							    	<select name="credit"> 
										<option value="카카오">카카오</option>
										<option value="국민은행">국민은행</option>
										<option value="신한은행">신한은행</option>
									</select>
							    </li>
							  </ul>
							  <div class="card-body">
							    <input type="submit" value="예약하기">
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
