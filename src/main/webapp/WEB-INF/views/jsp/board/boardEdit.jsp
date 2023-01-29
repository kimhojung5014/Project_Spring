<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성 화면</title>
  <link rel="stylesheet" href="resources/css/header_footer.css">
  <link rel="stylesheet" href="resources/css/boardwrite.css"> 
</head>
<body>
<script src="resources/js/write.js?sdfdsf"></script>
   <!-- 헤더 부분 -->
  <header id="headerstyle">
    <div id="titleHome">
      <a href="/" >나의 진로 추천 서비스</a>
    </div>
    <div id="searchStyle">
      <!--검색 기능 폼  -->
      <form action="">
      
        <label for="totalSearch"><span>통합검색</span></label>
        <input type="search" name="totalSearch" class="searchSize" placeholder="Search...">
      </form>

    </div> 
    <nav id ="nav1">                
      <ul id="loginmenu">
	      <li>
	        <c:choose>
	        	
		        <c:when test="${userData ne null}"> ${userData.nickName}</c:when>
		        <c:otherwise><a href ="join"> 회원가입 </a></c:otherwise>
		      
	        </c:choose>
	      </li>
        
        <li>
        	<c:choose>
	        	<c:when  test="${userData ne null}"><a href ="logout">로그아웃</a></c:when>
	        	<c:otherwise><a href ="login">로그인</a></c:otherwise>
       		</c:choose>
        </li>
        <li>
        	<c:choose>
        		<c:when test="${userData ne null}"><a href ="mypage">마이페이지</a></c:when>
    		    <c:otherwise></c:otherwise>
        	</c:choose>
        </li>
      </ul>
    </nav>
    <!--네비2 시작  -->
    <nav id="nav2">
      <div id="menu">

        <ul class="main1" >
    <!-- 1번째 메뉴 -->
      		<li><a href="test" id="main1_3" href="test">진로 가치관 검사</a></li>
            
    <!-- 1번째 메뉴 끝 -->

    <!-- 2번째 메뉴 시작 -->
            <li><a id="main1_2" href="major" >학과 추천</a></li>
    <!-- 2번째 메뉴 끝 -->
    
    <!-- 3번째 메뉴 시작 -->
          <li><a href="jobList">직업 추천</a></li>
    <!--3번째 메뉴 끝  -->

    <!-- 4번째 메뉴 시작 -->
            <li><a id="main" href="#">온라인 학위 정보</a>
              <ul class="main2">
    
                <li><a href=""> 원격대학교</a>
                  <ul class="main3">

                    <li><a href="cuinfo">사이버 대학교 소개</a></li>

                    <li><a href="knou">방송통신 대학교 소개</a></li>

                    <li><a href="difference">사이버,방통대 차이점</a></li>

                 </ul>
                </li>
                 <li><a id="main1_2" href="#" >독학학위제</a>
                    <ul class="main3">
                      <li><a href="self" >독학학위제 개요</a></li>
                  
                      <li><a href="TestDate" >시험일정</a></li>
                    </ul>
                </li>
                  <li><a href="">학점은행제</a>
                    <ul class="main3">
                      <li><a href="bank">학점은행제 개요</a></li>
    
                      <li><a href="bankrequest">신청</a>
                    </ul>
                  </li>

           	 </ul>
          </li>       
          
    <!-- 4번째 메뉴 끝 -->
    
    <!-- 5번째 메뉴 -->
            <li><a href="list">커뮤니티</a>
  
          </li>
        </ul>
    
    </div>
    </nav>
<!-- 네비2끝 -->
  </header>
  <!-- 헤더 끝 -->

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
  <!-- 푸터 -->
  <footer id = "footer" > 
    
    <ul  id="bottomenu">
      <li><a href="">사이트제작자</a></li>
      <li><a href="">개인정보처리방침</a></li>
      <li><a href="">API 정보</a></li>
      <li><a href="">사이트맵</a></li>
    </ul>

    <p>서울특별시 마포구 신촌로 176 4층 402호 제작자 번호 010-5375-4131</p>
    
</footer>
</body>
</html>