<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>JSTL</title>
</head>
<body>
	<%
		String score = request.getParameter("score");
	%>
	<c:set var = "score" value="<%=score%>"/>
	<c:choose>
		<c:when test="${score<=100&&score>=90}">
			점수 <c:out value="${score}"/>은 A학점입니다.
		</c:when>
		<c:when test="${score<90&&score>=80}">
			점수 <c:out value="${score}"/>은 B학점입니다.
		</c:when>
		<c:when test="${score<80&&score>=70}">
			점수 <c:out value="${score}"/>은 C학점입니다.
		</c:when>
		<c:otherwise>
			점수 <c:out value="${score}"/>은 F학점입니다.
		</c:otherwise>
	</c:choose> 
</body>
</html>