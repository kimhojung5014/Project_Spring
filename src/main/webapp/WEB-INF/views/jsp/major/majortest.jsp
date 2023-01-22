<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/majortest.css"> 
  <link rel="stylesheet" href="css/header_footer.css">
  <title>학과 학위 추천 결과 페이지</title>
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
            <li><a href="jobList">직업 추천</a></li>
    <!-- 1번째 메뉴 끝 -->

    <!-- 2번째 메뉴 시작 -->
            <li><a id="main1_2" href="major" >학과 추천</a>   
             
            </li>
    <!-- 2번째 메뉴 끝 -->
    
    <!-- 3번째 메뉴 시작 -->
            <li><a href="test" id="main1_3" href="#">진로 가치관 검사</a>
    
            </li>
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
  <main>
  <div id="mainStyle">
    <div id="mainContent">
      <div class="textarea">
          <p class="subtitle">조건에 맞는 학과, 학위 추천 결과</p>
          <div class="intextarea">

            <p class="subsubtitle">공학 계열 중 취업률이 제일 높은 곳은 <span class="blue">컴퓨터공학과</span>입니다.</p>

            <p class="subsubtitle">취업률 평균 <span class="blue">67.6%</span>입니다.</p>

            <p class="subsubtitle">졸업 후 첫 직업 분야는 <span class="blue">연구, 공학 기술직 50.6%</span>이 제일 많습니다.</p>

            <p class="subsubtitle">첫 직장 월평균 임금은 <span class="blue">151~200만원</span>이 <span class="blue">45.8%</span> 로 제일 많습니다.</p>

            <p class="subsubtitle">첫 직장 만족도는 <span class="blue">보통 33.7%</span>이 제일 많습니다.</p>

            <p class="subsubtitle">4년제 대학교, 경제적으로 힘든 상황, 시간 무관을 선택하셨기에</p>

            <p class="subsubtitle"><span class="blue">한국방송통신대학교 컴퓨터 공학과</span>를 추천해드립니다.</p>
            
          </div>
            <div class="oncenter" >
              <img src="image/취업률.png" alt=""width="100%">
              <img src="image/취업분야.png" alt="" width="100%"  >
              <img src="image/졸업 후 상황.png" alt="" width="100%">
              <br>
              <button class="submitbutton"><a style="color:white ;" href="https://www.knou.ac.kr/knou/index.do?epTicket=LOG" target="_blank">방통대 사이트바로가기</a></button>
            </div>

      </div>
    </div>
  </div>

  </main>
<!-- 메인  끝-->

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