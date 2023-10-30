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
	alert("체크인, 체크아웃 확인이 필요합니다!(체크인날짜는 오늘날짜보다 늦어야합니다.)");
	location.href="/pro/motel/motellist?m_region1_idx=${m_region1_idx}&m_region2_idx=${m_region2_idx}";
</script>
</body>
</html>