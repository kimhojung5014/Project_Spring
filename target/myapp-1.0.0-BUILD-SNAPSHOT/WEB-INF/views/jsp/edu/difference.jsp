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
  <link rel="stylesheet" href="resources/css/difference.css"> 
  
  <title>사이버,방송통신대학교 차이점</title>
  
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
      <p class="title">사이버 대학, 학점은행제, 방송통신대학교의 특징 및 차이점
      </p>
      <br>
      <div class="textarea">
        
        <table id="tableSt" >
          <!-- <col style="background-color: rgb(160, 167, 173);"> -->
          <col style="background-color: rgb(194, 224, 250);">
          <col>
          <col>
          <col>
          <thead>
            <tr>
              <th rowspan="2">구분</th>
              <th colspan="2">원격대학</th>
              <th rowspan="2">학점은행제</th>
            </tr>
            <tr>
              <th>사이버대학</th>
              <th>방송통신대학교</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th>목적</th>
              <td colspan="2">
                * 정보 통신 등의 매체를 통한 원격교육으로 고등교육을
                받을 수 있는 기회 제공<br>
                * 국가와 사회가 필요로 하는 인재를 양성하는 것과 동시에
                열린 학습사회를 구현하여 평생교육 발전에 이바지
              </td>
              <td>
                평생 학습권 보장 및 학습경험의 다양화와대학교육 불수혜 
                집단을 위한대안적 방식의 대학 학력 취득 기회 제공
              </td>
            </tr>
            <tr>
              <th>대상자</th>
              <td colspan="3">고등학교 졸업자, 혹은 동등 이상의 학력을 가진 자</td>
            </tr>
            <tr>
              <th>교육과정</th>
              <td colspan="2">다양한 교육 과정의 이수</td>
              <td>
                학습자의 직접 이수과목 선택하여
                직접 교육과정 설계
              </td>
            </tr>
            <tr>
              <th>기관(제도)의 성격</th>
              <td>
                전문학사학위, 학사학위, 석사학위를 수여할 수 있는 고등교육 기관
              </td>
              <td>
                학사학위 및 석사학위를 수여할 수 있는 고등교육기관
              </td>
              <td>
                다양한 학습과 자격을 학점으로 인정하여 전문대학 또는 대학교와 동등한 학위를 수여하는 제도
              </td>
            </tr>
            <tr>
              <th>교육방법</th>
              <td>
                온라인 수업<br>
                ※ 실습 및 일부 과목
                오프라인 수업 가능
              </td>
              <td>
                온라인 수업, 오프라인 출석 및 시험 실시
              </td>
              <td>
                온라인 교육, 평가인정기관, 무형문화재 전수, 자격증 취득, 독학사 시험, 시간제 등록 등
              </td>
            </tr>
            <tr>
              <th>평가시험방법</th>
              <td>
                온라인 수업<br>
                ※ 실습 및 일부 과목
                오프라인 실시 가능
              </td>
              <td>
                학교 직접방문을 통한 시험 응시
              </td>
              <td>
                교육방법에 따라 다양
              </td>
            </tr>
            <tr>
              <th>학과종류</th>
              <td>
                사이버대학 특수성을 고려한 다양한 학과 개설
              </td>
              <td>
                일반학과 개설
              </td>
              <td>
                다양한 일반학과 중 선택
              </td>
            </tr>
            <tr>
              <th>학위취득기간</th>
              <td>	
                전문학사학위 2년<br>
                학사학위 4년<br>
                석사학위 2년 6개월
              </td>
              <td>
                학사학위 4년<br>
                석사학위 2년 6개월
              </td>
              <td>
                학습자 계획에 따라 기간 조정 가능
              </td>
            </tr>
            <tr>
              <th>졸업장</th>
              <td>학교 총장명의 졸업장</td>
              <td>없음</td>
              <td>
                교육과학기술부 장관명의 학위증<br>
                ※ 특정 조건 충족 시 대학 총장명의
                졸업장 수여 가능
              </td>
            </tr>
          </tbody>
        </table>
        <br>
        <div class="oncenter">
          <button class="submitbutton"><a href="cuinfo.html">사이버대학소개<br> 바로가기</a></button>
            &nbsp;&nbsp;&nbsp;&nbsp;
          <button class="submitbutton"><a href="knou.html">방송통신대학교<br> 바로가기</a></button>
        </div>
        <br><br>
      </div>
      
   </div>

</div>

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