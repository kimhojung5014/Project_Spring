<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/majorresult.css"> 
  <link rel="stylesheet" href="css/header_footer.css">
  <title>학과 정보 화면</title>
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
      <p class="title">대학교: <span style="color:rgb(54, 82, 168);">${majorDto.major}</span></p>
      <br>
      <p class="subtitle">학과 정보</p>
        <div class="intextarea">
          <p class="subsubtitle">학과 개요</p>
          <div class="inintextarea">
          <p>
          	-${majorDto.summary}
          </p>
          </div>  

          <p class="subsubtitle">학과 특성</p>
          <div class="inintextarea">
          <p>
            -${majorDto.property}
          </p>
          </div>

          <p class="subsubtitle">흥미와 적성</p>
          <div class="inintextarea">
          <p>
          	-${majorDto.interest }
          </p>
          </div>

          <p class="subsubtitle">관련 고교 교과목</p>
          <ul class="jobExplainList">
            <c:forEach var="subject_name" items="${fn:split(majorDto.subject_name,',') }" >
            <c:forEach var="subject_description" items="${fn:split(majorDto.subject_description,',') }">
            <li>

            

              <p class="texttitle">${subject_name}</p>
              ${subject_description}
            </li>
             </c:forEach>
            </c:forEach>
          </ul>
          <p class="subsubtitle">진로 탐색 활동</p>
          <ul class="jobExplainList">
<%--           <c:forEach var="subject_name" items="${fn:split(majorDto.subject_description,',') }">  --%>
            <li>
            
            </li>
<%--            </c:forEach> --%>
          </ul>
          <p class="subsubtitle">대학 주요 교과목</p>
          <ul class="jobExplainList">
            <li>
              <p class="texttitle">운영체제</p>
              각종 운영체제에 대해서 구체적인 구조와 구성, 작동원리, 각종 문제를 해결하기 위한 방법을 배웁니다.
            </li>
            <li>
              <p class="texttitle">소프트웨어 공학</p>
              소프트웨어 개발의 일반적 과정 및 개발 방법론, 프로젝트 관리와 계획, 요구사항 분석, 각종 개발 모델링 및 소프트웨어 설계 등 전반적인 이론을 배우고 실습을 합니다.
            </li>
      
          </ul>
          
          <p class="subsubtitle">관련 자격</p>
          <div class="inintextarea">
            e-TestProfessional, IEQ(인터넷윤리자격), RFID기술자격검정, SQL, SW테스트전문가(CSTS), 네트워크관리사, 데이터분석, 데이터아키텍처, 디지털정보활용능력(DIAT), 디지털포렌식전문가, 리눅스마스터, 소프트웨어자산관리사(C-SAM), 정보기술자격(ITQ)시험, 정보기술프로젝트관리전문가(IT-PMP), 정보시스템감리사, 정보처리기사, 정보통신기사, 컴퓨터활용능력
          </div>
          <p class="subsubtitle">관련 직업</p>
      
          <div class="inintextarea">
            3D프린팅전문가, 가상현실전문가 , 네트워크엔지니어 , 데이터베이스개발자, 디지털포렌식수사관, 모바일애플리케이션개발자, 무인자동차엔지니어, 무인항공기시스템개발자, 반도체공학기술자 , 블록체인전문가, 빅데이터전문가, 사물인터넷전문가, 사이버교육운영자 , 생체인식전문가, 스마트팜구축가, 시스템소프트웨어개발자 , 신경회로망연구원 , 아이티(IT)교육강사 , 응용소프트웨어개발자, 의료정보시스템개발자 , 인공지능전문가, 정밀농업기사, 정보보호전문가 , 컴퓨터시스템감리전문가, 컴퓨터프로그래머, 컴퓨터하드웨어기술자및연구원, 클라우드시스템엔지니어, 통신공학기술자및연구원, 홀로그램전문가
          </div>

          <p class="subsubtitle">졸업 후 진출 분야</p>
          <ul class="jobExplainList">
            <li>
              <p class="texttitle">기업 및 산업체</p>
              시스템 소프트웨어 개발 회사, 게임 개발 회사, 모바일 웹 및 앱 개발 회사, 홈페이지 제작 및 기획 운영 회사, 정보 시스템 운영 및 개발 회사, 정보 통신 및 네트워크 관련 회사, 무인 자동차 개발 회사, 컴퓨터 및 IT 분야 회사
            </li>
            <li>
              <p class="texttitle">학계 및 연구기관</p>
              한국전자통신연구원, 정보통신정책연구원 등 공공 및 민간 연구기관
            </li>
            <li>
              <p class="texttitle">정부 및 공공기관</p>
              과학기술정보통신부 등 정부 및 지방자치단체 공무원, 한국정보화진흥원, 한국인터넷진흥원, 정보통신산업진흥원 등 공공기관
            </li>
          </ul>
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