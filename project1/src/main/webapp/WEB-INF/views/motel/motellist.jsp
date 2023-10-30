<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
                <div class="semi">
                    <div class="semi2" align="center">
						<c:forEach var="vo" items="${list }">
							<form action="/pro/motel/checkdate" method="post">
							<div class="semi3">
							<input type="hidden" name="m_region1_idx" value="${vo.m_region1_idx }">
							<input type="hidden" name="m_region2_idx" value="${vo.m_region2_idx }">
							<input type="hidden" name="motel_idx" value="${vo.motel_idx }">
							<input type="hidden" name="max_date" value="${vo.max_date }">
							<div class="card" style="width: 18rem;">
							  <img src="${vo.image }" class="card-img-top" alt="motelimage">
							  <div class="card-body">
							    <h5 class="card-title">${vo.name }</h5>
							    <p class="card-text"><a href="/pro/map/motelmain?short_address=${vo.short_address }">${vo.short_address }</a></p>
							  </div>
							  <ul class="list-group list-group-flush">
							    <li class="list-group-item">${vo.event }</li>
							    <li class="list-group-item">최대 연박 일수 : ${vo.max_date }</li>
							    <li class="list-group-item"><input type="date" name="checkin" required="required" ></li>
							    <li class="list-group-item"><input type="date" name="checkout" required="required"></li>
							  </ul>
							  <div class="card-body">
							    <input type="submit" value="예약 가능한 방 검색">
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