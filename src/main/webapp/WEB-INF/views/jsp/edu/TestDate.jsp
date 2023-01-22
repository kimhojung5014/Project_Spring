<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/header_footer.css">
  <link rel="stylesheet" href="css/TestDate.css"> 
  <title>독학학위제 신청</title>
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
  <div id="mainStyle">

    <div id="mainContent">
      <p class="title">시험일정</p>
      <br>
      <p class="subtitle">2022년도 시험일정</p>
      <br>
      <!-- <h2 class="h2style">임시</h2> -->
      <table id="tablest">
        <tr>
          <td class="first">1과정</td>
          <td>
            <p class="one">교양과정<br>인정시험</p>
          </td>
          <td class="listtd">
            <ul>
              <li>온라인 원서접수 : 1/14(금) 10:00 ~ 1/21(금) 17:00</li>
              <li>수험표 출력 : 2/18(금) 10:00</li>
              <li>시험일 : 2/27(일)</li>
              <li>합격자 발표 : 3/21(월) 10:00</li>
            </ul>
          </td>
        </tr>
        
        <tr>
          <td class="first">2과정</td>
          <td>
            <p class="one">전공기초과정<br>인정시험</p>
          </td>
          <td class="listtd">
            <ul>
              <li>온라인 원서접수 : 4/8(금) 10:00 ~ 4/15(금) 17:00</li>
              <li>수험표 출력 : 5/13(금) 10:00</li>
              <li>시험일 : 5/22(일)</li>
              <li>합격자 발표 : 6/13(월) 10:00</li>
            </ul>
          </td>
        </tr>
        <tr>
          <td class="first">3과정</td>
          <td>
            <p class="one">전공심화과정<br>인정시험</p>
          </td>
          <td class="listtd">
            <ul>
              <li>온라인 원서접수 : 7/1(금) 10:00 ~ 7/8(금) 17:00</li>
              <li>수험표 출력 : 8/5(금) 10:00</li>
              <li>시험일 : 8/14(일)</li>
              <li>합격자 발표 : 9/12(월) 10:00</li>
            </ul>
          </td>
        </tr>
        <tr>
          <td class="first">4과정</td>
          <td>          
            <p class="one">학위취득<br> 인정시험</p>
          </td>
          <td class="listtd">
            <ul>
              <li>온라인 원서접수 : 9/16(금) 10:00 ~ 9/23(금) 17:00</li>
              <li>수험표 출력 : 10/21(금) 10:00</li>
              <li>시험일 : 10/30(일)</li>
              <li>합격자 발표 : 11/28(월) 10:00</li>
            </ul>
          </td>
        </tr>

      </table>
      <div class="oncenter">
        <button class="buttonsumit"><a href="https://bdes.nile.or.kr/nile/base/bdesMain.do?" target="_blank">신청바로가기</a></button>
      </div>
      <br>
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