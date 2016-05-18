<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/basic/head.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
	<td>ID</td><td>name</td><td>type</td>
</tr>
<c:forEach var="menu" items="${menu }">

	<tr>
		<td>${menu.id }</td>
		<td>${menu.name }</td>
		<td>${menu.type }</td>
	</tr>

</c:forEach>

</table>

</body>
<%@ include file="/WEB-INF/jsp/basic/foot.jsp" %>