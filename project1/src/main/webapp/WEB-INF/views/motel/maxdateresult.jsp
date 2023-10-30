<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	alert("최대 연박 일수를 확인해주세요!");
	location.href="/pro/motel/motellist?m_region1_idx=${m_region1_idx}&m_region2_idx=${m_region2_idx}";
</script>
</body>
</html>