<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/header_footer.css?1">
  <link rel="stylesheet" href="resources/css/findid.css?12"> 
  <title>아이디 찾기 페이지</title>
</head>
<body>
<script src="resources/js/Join_Check.js"></script>
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

      <p class="subtitle">비밀번호 찾기</p>
      <div class="textarea">
          <form action="searchPw" method="post" id="searchPwForm">
            <table id=search>
              <tr>
                <td class="textleft"><p class="subsubtitle">아이디</p></td>
                <td><input type="text" id="userId" name="userId" placeholder="아이디" required onkeyup="id_Check()"></td>
              </tr>
		       <tr>
            	<td></td>
            		<td>
            			<p id="idMsg"></p>
            		</td>
	           </tr>
	           <tr>
	           	<td colspan="2"><p style="color: gray"><b>*이메일, 전화번호중 하나만 입력하세요.</b><p></td>
	           </tr>
	           
              <tr>
                <td class="textleft"><p class="subsubtitle">이메일 주소</p></td>
                <td><input type="eMail" id="eMail" name="data" placeholder="이메일"  onkeyup="eMail_Check()"></td>
              </tr>
	           <tr>
	             <td></td>
	             <td><p id="eMailMsg"></p></td>
	           </tr>
              <tr>
                <td class="textleft"><p class="subsubtitle">전화번호</p></td>
                <td><input type="tel" id="telNumber" name="data" placeholder="전화번호" required onkeyup="tel_Check()"></td>
              </tr>
              <tr>
            	<td></td>
            	<td><p id="telMsg"></p></td>
              </tr>
              <tr>
                <td colspan="2"><input class="submitbutton" type="button" onclick="searchPw()" value="완료"></td>
              </tr>
            </table>
          </form>
        </div>
    </div>
  </div>
   
<footer id = "footer" > 
    
    <ul  id="bottomenu">
      <li><a href="">사이트제작자</a></li>
      <li><a href="">개인정보처리방침</a></li>
      <li><a href="">API 정보</a></li>
      <li><a href="">사이트맵</a></li>
    </ul>

    <p>서울특별시 마포구 신촌로 176 4층 401호 제작자 번호 010-5375-4131</p>
    
</footer>

</body>
</html>