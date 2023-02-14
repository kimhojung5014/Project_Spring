
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/css/newindex.css"> 
  <link rel="stylesheet" href="resources/css/header_footer.css">
  <title>메인페이지</title>
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

    <!-- 증간에 사진 들어가는 부분 -->
    <div class="scr">

      <img src="resources/image/다양한 직업.jpg" alt="다양한 직업" >

    </div>

    <!-- box1 직업정보 시작-->
    <!-- 슬라이드로 해서 넘길 수 있게하자 -->
    <div class="box1 box">
      <h2  class="h2style">다양한 직업 알아보기</h2>
      <div class="textarea">
      
        <P>당신을 위한 453건의 직업 정보가 있습니다.</P>
        <p>직업 별 핵심 능력, 학과, 자격, 하는 일 적성 및 흥미</p>
        <p>준비방법, 취업현황, 전망, 능력, 지식, 환경에 대한<br> 정보를 제공합니다.</p>
     
      </div>
    
    </div>
     <!-- box1 나에게 맞는 학과 알아보기 끝-->

     <!-- box2 나에게 맞는 학위 취득 방법 -->
    <div class="box2 box">
      <h2  class="h2style">나에게 맞는 직업 추천</h2>
        <div class="textarea">
         
          <p>직업 별 적성유형, 선택하신 조건(평균연봉, 일자리 전망, 발전 가능성, 고용평등)으로 맞춤 직업을 추천해드립니다.</p>
          
        </div>
     
    </div>
     <!-- box2 나에게 맞는 학위 취득 방법 끝 -->

    <!-- 학과 추천 여기서는 간편하게만 하고 길제 메뉴에서는 성향 분야 등등 넣어서 학과 제대로 추천해주자-->
    <div class="box3 box">
      <h2  class="h2style">나에게 맞는 학과, 학위 취득 알아보기</h2>
      <div class="textarea">

        <p>원하는 전공계열, 시간, 경제적 상황, 원하는 조건으로 </p>  
        <p>당신을 위한 학과와 학위를 추천해드립니다.</p>
       
      </div>
    </div>
    <!-- 진로 심리 검사 -->
    <div class="box4 box">
      <h2 class="h2style">진로 가치관 검사</h2>
      <div class="textarea">
          <p>자신의 진로에 대한 고민이 많은 당신을 위한<br> 직업 가치관 검사를 제공해드립니다.</p>
      </div>
    </div>
</div>
<!-- 메인  끝-->

  <!-- 푸터 -->
  <footer id = "footer" > 
    
    <ul  id="bottomenu">
      <li><a href="#">사이트제작자</a></li>
      <li><a href="#">개인정보처리방침</a></li>
      <li><a href="#">API 정보</a></li>
      <li><a href="#">사이트맵</a></li>
    </ul>

    <p>서울특별시 마포구 신촌로 176 4층 402호 제작자 번호 010-5375-4131</p>
    
</footer>

</body>
</html>