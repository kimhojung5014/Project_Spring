<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	
<!-- 자바의 import 문처럼 타일즈를 사용하기 위해 반드시 추가해야한다-->
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- tiles_member.xml의 <definition>의 하위 태그인
	<put-attribute> 태그의 name이 title인 값을 표시하겠다 -->
<title><tiles:insertAttribute name="title" /></title>
  <link rel="stylesheet" href="/css/header_footer.css">
</head>
<body>
	<div id="container">
		<div id="header">
			<!-- tiles_member.xml의 <defintion>의 하위 태그인
				<put-attribute>태그의 name이 header인 JSP를 표시하겠다 -->
			<tiles:insertAttribute name="header" />
		</div>

		<div id="content">
			<tiles:insertAttribute name="content" />
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>