<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--   <link rel="stylesheet" href="resources/css/newindex.css">  -->
<!--   <link rel="stylesheet" href="resources/css/header_footer.css"> -->
  <title>임시</title>
</head>
<body>
         <tiles:insertAttribute name="header"/>
          <tiles:insertAttribute name="body"/>
          <tiles:insertAttribute name="footer"/>
</body>
</html>