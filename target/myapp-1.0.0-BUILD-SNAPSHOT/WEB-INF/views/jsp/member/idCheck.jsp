<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Id체크창</title>
</head>
<body>
	<c:choose>
		<c:when test="${idCheck eq 'OK' }">

			<script type="text/javascript">
				alert("사용가능한 아이디 입니다.")
				document.location.href = "join";
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("중복된 아이디 입니다.")
				history.go(-1);
			</script>
		</c:otherwise>
	</c:choose>
	
</body>
</html>