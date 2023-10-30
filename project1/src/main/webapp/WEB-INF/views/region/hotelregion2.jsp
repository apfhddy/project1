<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
                <div class="semi">
                     <div align="center">
						<c:choose>
						<c:when test="${empty list }">
							<h2>리스트가 비었습니다.</h2>
						</c:when>
						<c:otherwise>
							<ul class="nav justify-content-center">
			                    <c:forEach var="vo" items="${list }">
									  <li class="nav-item">
									    <a class="nav-link active" href="/pro/hotel/hotellist?h_region1_idx=${vo.h_region1_idx }&h_region2_idx=${vo.h_region2_idx}">${vo.name }</a>
									  </li>
								</c:forEach>
							</ul>
						</c:otherwise>
						</c:choose>
					</div>
                </div>
            </div>
        </body>
    </html>
</DoCTYPE>