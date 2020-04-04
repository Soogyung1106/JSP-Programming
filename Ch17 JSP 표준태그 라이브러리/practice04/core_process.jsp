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
			���� <c:out value="${score}"/>�� A�����Դϴ�.
		</c:when>
		<c:when test="${score<90&&score>=80}">
			���� <c:out value="${score}"/>�� B�����Դϴ�.
		</c:when>
		<c:when test="${score<80&&score>=70}">
			���� <c:out value="${score}"/>�� C�����Դϴ�.
		</c:when>
		<c:otherwise>
			���� <c:out value="${score}"/>�� F�����Դϴ�.
		</c:otherwise>
	</c:choose> 
</body>
</html>