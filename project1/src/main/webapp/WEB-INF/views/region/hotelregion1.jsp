<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
                <div class="semi">
                     <div align="center">
						<ul class="nav justify-content-center">
		                     <c:forEach var="vo" items="${list }">
			                     
								  <li class="nav-item">
								    <a class="nav-link active" href="/pro/region/hotelregion2?h_region1_idx=${vo.h_region1_idx }">${vo.name }</a>
								  </li>
							</c:forEach>
						</ul>
					</div>
                </div>
            </div>
            
        </body>
    </html>
</DoCTYPE>