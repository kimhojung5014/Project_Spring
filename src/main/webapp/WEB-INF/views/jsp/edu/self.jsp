<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/css/header_footer.css">
  <link rel="stylesheet" href="resources/css/self.css"> 
  <title>독학학위제</title>
</head>
<body>
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

  <!-- 메인 부분 -->

  <div id="mainStyle">

    <div id="mainContent">
      <p class="subtitle">독학학위제란?</p>
        <div class="textarea">
          <p>
            독학학위제는 「독학에 의한 학위취득에 관한 법률」에 의해 독학자(獨學者)에게 대학 졸업 자격에
            해당하는 학사학위(學士學位) 취득의 기회를 부여함으로써 평생교육의 이념을 구현하고 개인의
            자아실현과 국가·사회의 발전에 이바지하는 것을 목적으로 하는 제도입니다.
        
            독학학위제는 4개의 과정(교양, 전공기초, 전공심화, 학위취득 종합) 시험으로 이루어져 있으며,
            개인적으로 취득한 다양한 자격과 학습이력을 심사하여 1~3과정의 시험은 일부 면제가 가능합니다.
            다만, 교육부장관 명의의 학사학위를 취득하고자 하시면 반드시 학위취득 종합시험에 응시하여
            합격하셔야 합니다
          </p>
        </div>
          <br>
          <p class="subtitle">적용대상</p>
          <ul class="blueList">
            <li>고등학교 졸업 이상의 학력을 가진 사람이면 누구나 응시할 수 있습니다.</li>
            <li>대학교를 다니지 않아도 스스로 공부해서 학위를 취득할 수 있습니다.</li>
            <li>일과 학습의 병행이 가능하여 시간과 비용을 최소화할 수 있습니다.</li>
            <li>언제 어디서나 학습이 가능하며, 평생학습을 통해 자아실현을 할 수 있습니다</li>
          </ul>
          <br>
      <p class="subtitle">취득과정</p>
      <img src="image/임시.png" alt="학사취득과정" width="100%" >
      <div class="oncenter">
        <button class="submitbutton"><a style="color:white" href="https://bdes.nile.or.kr/nile/base/bdesMain.do?">독학학위제 사이트가기</a></button>
        <br><br>
      </div>
    </div>
    </div>
  </div>

<!-- 메인  끝-->
  <!-- 푸터 -->
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