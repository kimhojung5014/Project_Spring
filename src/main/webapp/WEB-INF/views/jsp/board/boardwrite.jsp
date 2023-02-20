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
<script src="/js/write.js"></script>

<div id="mainStyle">

    <div id="mainContent">
      <p class="title">글작성하기</p>
      <div class="textarea">
        <form action="boardInsert" method="post" id="writeForm">
        <input type="hidden" name="userId" value="${userData.userId }">
        <input type="hidden" name="writer" value="${userData.nickName }">
        <input type="hidden" name="writeNum" value="0">
        <input type="hidden" name="views" value="0">
          <!-- 카테고리 드랍다운 -->
          <label for="category" class="subsubtitle">카테고리 <span style="color: royalblue; font-size: 0.875rem;">*반드시 1개를 선택해주세요</span></label><br>
          <select id="category" name="category">
            <option value="직업정보" selected>직업정보</option>
            <option value="학과정보">학과정보</option>
            <option value="고민상담">고민상담</option>
          </select>
          <br><br>
          <!-- 제목 -->
          <label for="title" class="subsubtitle">제목</label><br>
          <input type="text" id="title" name="title" placeholder="제목을 입력해주세요." required="required">
          <br><br>
          <!-- 글 내용 적을 곳 -->
          <p class="subsubtitle">본문</p>
          <textarea name="content" id="content" cols="83" rows="30" required="required"></textarea>
          <br>
<!--           <input type="file"> -->
          <div class="oncenter">										
<!--  버튼에서 유효성 검사 후 insertList.list로 보내야한다. -->
            <button type="button" class="submitbutton" onclick="writeCheck()">등록</button>
          </div>
      </form>
      </div>
    </div>
    
  </div>

</body>
</html>