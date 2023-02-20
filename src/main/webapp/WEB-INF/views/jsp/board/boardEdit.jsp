<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성 화면</title>
  <link rel="stylesheet" href="/css/boardwrite.css"> 
</head>
<body>
<script src="/js/write.js?sdfdsf"></script>
  

<div id="mainStyle">

    <div id="mainContent">
      <p class="title">글 수정하기</p>
      <div class="textarea">
        <form action="boardEdit" method="post" id="writeForm">
		<!--컨트롤러에서 객체로 받으려고 다 넘긴다. -->
          <input type="hidden" name="writer" value="${userData.nickName}">	
          <input type="hidden" name="userId" value="${userData.userId}">	
          <input type="hidden" name="writingTime" value="${boardVo.writingTime}">	
          <input type="hidden" name="writeNum" value="${boardVo.writeNum}">	
          <!-- 카테고리 드랍다운 -->
          <label for="category" class="subsubtitle">카테고리 <span style="color: royalblue; font-size: 0.875rem;">*반드시 1개를 선택해주세요</span></label><br>
          <select id="category" name="category">
          <c:choose>
          	<c:when test="${boardVo.category eq '직업정보' }">
            <option value="직업정보" selected>직업정보</option>
            <option value="학과정보">학과정보</option>
            <option value="고민상담">고민상담</option>
          	</c:when>
          	<c:when test="${boardVo.category eq '학과정보'}">
            <option value="직업정보" >직업정보</option>
            <option value="학과정보" selected>학과정보</option>
            <option value="고민상담">고민상담</option>
          	</c:when>
          	<c:otherwise>
            <option value="직업정보" >직업정보</option>
            <option value="학과정보" >학과정보</option>
            <option value="고민상담" selected>고민상담</option>
          	</c:otherwise>
          </c:choose>

          </select>
          <br><br>
          <!-- 제목 -->
          <label for="title" class="subsubtitle">제목</label><br>
          <input type="text" id="title" name="title" value="${boardVo.title}" required="required">
          <br><br>
          <!-- 글 내용 적을 곳 -->
          <p class="subsubtitle">본문</p>
          <textarea name="content" id="content" cols="83" rows="30" required="required">${boardVo.content}</textarea>
          <br>
		<!-- <input type="file"> -->
          <div class="oncenter">										
		<!-- 버튼에서 유효성 검사 후 insertList.list로 보내야한다. -->
            <button type="button" class="submitbutton" onclick="writeCheck()">등록</button>
          </div>
      </form>
      </div>
    </div>
    
  </div>
  
</body>
</html>