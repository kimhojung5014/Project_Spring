<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/testResult.css"> 
  <link rel="stylesheet" href="css/header_footer.css">
  <title>직업 가치관 검사 결과 화면</title>
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
        <p class="subtitle">직업가치관 검사 결과표</p>
          <div class="intextarea">
            <p>직업가치관이란 직업을 선택할 때 영향을 끼치는 자신만의 믿음과 신념입니다. 따라서 여러분의 직업생활과 관련하여 포기하지 않는 무게중심의
              역할을 한다고 볼 수 있습니다. 직업가치관검사는 여러분이 직업을 선택할 때 상대적으로 어떠한 가치를 중요하게 생각하는지를 알려줍니다. 또
              한 본인이 가장 중요하게 생각하는 가치를 충족시켜줄 수 있는 직업에 대해 생각해 볼 기회를 제공합니다.</p>
            <br>
            <div class="title">
              <p>1. 직업가치관검사 결과</p>
            </div>    
            <br>
            <p>
              직업생활과 관련하여 홍길동님은 자기계발(와)과 능력발휘(을)를 가장 중요하게 생각합니다.
              반면에 사회적 인정, 안정성은 상대적으로 덜 중요하게 생각합니다.
            </p>
            <br>
            <img src="image/직업가치관 검사결과.png" alt="" width="100%">
            <br><br>
            <div class="title">
              <p>2.홍길동님의 가치관과 관련이 높은 직업</p>
            </div>  
            <br>  
            <p><b>홍길동</b>님이 중요하게 생각하는 <b>자기계발</b>(와)과 <b>능력발휘</b>을(를) 만족시킬 수 있는 직업은 다음과 같습니다.</p>
            <br>
            <p class="subtitle">종사자 평균 학력별</p>
            <br>
            <table class="jobTable">
              <col style="width:100px; text-align: center;" >
              <col>
              <thead>
                <tr>
                  <th>분야</th>
                  <th>직업명</th>
                </tr>
                <tr>
              </thead>
                <th>고졸</ths>
                <td>마술사, 만화가, 레크리에이션지도자, 시인</td>
              </tr>
              <tr>
                <th>전문대졸</th>
                <td>스턴트맨, 유치원 교사</td>
              </tr>
              <tr>
                <th>대졸</th>
                <td>
                  금융자산운용가(펀드매니저), 판사, 지휘자, 증권중개인, 영업원, 변호사, 변리사, 연주가, 이미지컨설
                  턴트, 국회의원, 국악인, 운동감독, 사회복지사, 교장, 운동선수, 노무사, 제품디자이너, 직업상담 및 취
                  업알선원, 헤드헌터, 방송연출가, 성직자, 경영컨설턴트, 연극연출가, 인문계중등학교교사, 시스템소프
                  트웨어개발자, 마케팅전문가, 성우, 자연계중등학교교사, 직업군인, 소설가, 일반공무원, 연기자, 초등
                  학교교사, 기자, 화가
                </td>
              </tr>
              <tr>
                <th>대학원졸</th>
                <td>
                  이공학계열교수, 음악치료사, 장학사, 사회학연구원, 상담전문가, 심리학연구원 , 생물학연구원 , 에너
                  지공학기술자, 투자분석가(애널리스트)                  
                </td>
              </tr>
            </table>
            <br>
            <p class="subtitle">종사자 평균 전공별</p>
            <br>
            <table class="jobTable">
              <col style="width:100px; text-align: center;" >
              <col>
              <thead>
                <tr>
                  <th>분야</th>
                  <th>직업명</th>
                </tr>
                <tr>
              </thead>
                <th>계열무관</ths>
                <td>
                  경영컨설턴트, 교장, 국악인, 국회의원, 금융자산운용가(펀드매니저), 기자, 노무사, 레크리에이션지도
                  자, 마술사, 마케팅전문가, 만화가, 방송연출가, 변리사, 변리사, 변호사, 사회복지사, 사회학연구원, 상
                  담전문가, 생물학연구원 , 성우, 성직자, 소설가, 스턴트맨, 시스템소프트웨어개발자, 시인, 심리학연구
                  원 , 에너지공학기술자, 연극연출가, 연기자, 연주가, 영업원, 운동감독, 운동선수, 유치원교사, 음악치
                  료사, 이공학계열교수, 이미지컨설턴트, 인문계중등학교교사, 일반공무원, 자연계중등학교교사, 장학
                  사, 제품디자이너, 증권중개인, 지휘자, 직업군인, 직업상담 및 취업알선원, 직업상담 및 취업알선원, 초
                  등학교교사, 투자분석가(애널리스트), 판사, 헤드헌터, 화가                  
                </td>
              </tr>
              <tr>
                <th>인문</th>
                <td>직업상담 및 취업알선원, 성직자, 시인, 성우, 소설가, 심리학연구원 , 상담전문가</td>
              </tr>
              <tr>
                <th>사회</th>
                <td>
                  경영컨설턴트, 직업상담 및 취업알선원, 마케팅전문가, 방송연출가, 일반공무원, 투자분석가(애널리스
                  트), 금융자산운용가(펀드매니저), 판사, 기자, 증권중개인, 변호사, 변리사, 국회의원, 영업원, 사회학
                  연구원, 사회복지사, 노무사, 헤드헌터                  
                </td>
              </tr>
              <tr>
                <th>교육</th>
                <td>
                  인문계중등학교교사, 자연계중등학교교사, 초등학교교사, 유치원교사, 장학사, 교장                  
                </td>
              </tr>
              <tr>
                <th>공학</th>
                <td>
                  에너지공학기술자, 시스템소프트웨어개발자, 변리사, 이공학계열교수              
                </td>
              </tr>
              <tr>
                <th>자연</th>
                <td>
                  생물학연구원                
                </td>
              </tr>
              <tr>
                <th>의학</th>
                <td>
                  음악치료사              
                </td>
              </tr>
              <tr>
                <th>예체능</th>
                <td>
                  운동선수, 제품디자이너, 레크리에이션지도자, 연극연출가, 연기자, 스턴트맨, 화가, 마술사, 지휘자, 연
                  주가, 이미지컨설턴트, 국악인, 운동감독, 만화가              
                </td>
              </tr>
            </table>
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