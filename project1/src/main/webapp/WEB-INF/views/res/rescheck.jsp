<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
                <div class="semi">
                     	<div align="center">
							<form action="/pro/res/typecheck" method="post">
							<div class="card" style="width: 18rem;">
							  <ul class="list-group list-group-flush">
							    <li class="list-group-item">
							    	<select name="type">
											<option value="motel">모텔</option>
											<option value="hotel">호텔</option>
										</select>
							    </li>
							    <li class="list-group-item"><input type="text" name="res_phone" placeholder="예약자 전화번호를 입력하세요."></li>
							    <li class="list-group-item"><input type="text" name="res_number" placeholder="예약 번호를 입력하세요."></li>
							  </ul>
							  <div class="card-body">
							    <input type="submit" value="예약확인">
							  </div>
							</div>
							</form>
						</div>
                </div>
            </div>
         </body>
    </html>
</DoCTYPE>
            
