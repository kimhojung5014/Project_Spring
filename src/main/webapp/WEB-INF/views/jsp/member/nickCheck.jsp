<%@ page language="java" contentType="text/html; charset=UTF-16"
    pageEncoding="UTF-16"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-16">
<title>Insert title here</title>
</head>
<body>
<c:choose>
		<c:when test="${ nickCheck eq 'OK' }">
			<!--페이지가 join이라면 회원가입 창으로-->
			<c:if test="${page eq 'join' }">
			<script type="text/javascript">
				alert("사용가능한 닉네임 입니다.")
				document.location.href = "join";
			</script>
			</c:if>
			<!--페이지가 mypage라면 수정 창으로-->
			<c:if test="${page eq 'mypage' }">
			<script type="text/javascript">
				alert("사용가능한 닉네임 입니다.")
				document.location.href = "mypage";
			</script>
			</c:if>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("중복된 닉네임 입니다.")
				history.go(-1);
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>