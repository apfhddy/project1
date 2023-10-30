<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
                <div class="semi">
                		<!-- 네이버 맵 -->
    					<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=4ruaxkgpol"></script>
                     	<body>
							<div id="map" style="width:100%; height:800px;"></div>
							<script type="text/javascript">
							
							var HOME_PATH = window.HOME_PATH || '.';
						
							var map = new naver.maps.Map('map', {
							    center: new naver.maps.LatLng(${list.get(0).latitude}, ${list.get(0).longitude}),
							    zoom: 15
							});
						
							var markers = [],
							    infoWindows = [];
						
								<c:forEach var="vo" items="${list }">
							    var hotel = new naver.maps.LatLng(${vo.latitude}, ${vo.longitude}),
							
							        marker = new naver.maps.Marker({
							            map: map,
							            position: hotel
							        });
							
							    var contentString = [
							            '<div class="iw_inner">',
							            '   <h3>${vo.name}</h3>',
							            '   <p>${vo.short_address}<br />',
							            '   </p>',
							            '</div>'
							        ].join('');
							    
							    var infowindow = new naver.maps.InfoWindow({
							        content: contentString
							        
							    });
							    
						
							    markers.push(marker);
							    infoWindows.push(infowindow);
							    </c:forEach>
						
							function getClickHandler(seq) {
							    return function(e) {
							        var marker = markers[seq],
							            infoWindow = infoWindows[seq];
						
							        if (infoWindow.getMap()) {
							            infoWindow.close();
							        } else {
							            infoWindow.open(map, marker);
							        }
							    }
							}
						
							for (var i=0, ii=markers.length; i<ii; i++) {
							    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
							}
							</script>
						</body>
                </div>
            </div>
           
        </body>
    </html>
</DoCTYPE>

