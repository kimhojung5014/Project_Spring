<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/major.css"> 
  <link rel="stylesheet" href="css/header_footer.css">
  <title>학과 추천</title>
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
      <div class="title">
      <p >학과 추천</p>
      </div>
      <div class="textarea">
        <p class="subtitle">나에게 맞는 학과, 학위 알아보기</p>
        <div class="intextarea" >
          <form action="" method="">
            
            <p class="texttitle">1. 학교 유형을 선택해주세요.</p>
            <ul  class="testlist">
                <li>  
                    <input type="radio" name="college" id="all" value="all" checked> 전체
                </li>  
                <li>   
                    <input type="radio" name="college" id="four" value="four"> 4년제 대학교
                </li>
                <li>  
                    <input type="radio" name="college" id="two" value="two"> 전문대학교
                </li>
              </ul>

              <p class="texttitle">2. 전공계열</p>
              <ul class="testlist">
                <li>  
                    <input type="radio" name="major" id="all" value="all" checked> 전체
                </li>  
                <li>   
                    <input type="radio" name="major" id="major1" value="major1"> 인문계열
                </li>
                <li>  
                    <input type="radio" name="major" id="major2" value="major2"> 사회계열
                </li>
                <li>  
                    <input type="radio" name="major" id="major4" value="major3"> 교육계열
                </li>
                <br>
                <li>   
                  <input type="radio" name="major" id="major5" value="major4"> 공학계열
                </li>
                <li>  
                    <input type="radio" name="major" id="major6" value="major5"> 자연계열
                </li>
                <li>   
                  <input type="radio" name="major" id="major7" value="major6"> 의약계열
                </li>
                <li>  
                <input type="radio" name="major" id="major8" value="major7"> 예체능계열
                </li>
              </ul>

            <p class="texttitle">3. 제일 우선 시 하는 조건을 선택해주세요.</p>
            <ul  class="testlist">
                <li>  
                    <input type="radio" name="dep" id="work" value="work" checked> 취업률
                </li>  
                <li>   
                    <input type="radio" name="dep" id="money" value="money"> 임금
                </li>
                <li>  
                    <input type="radio" name="dep" id="happy" value="happy"> 직업 만족도
                </li>
                <li>  
                  <input type="radio" name="dep" id="happy" value="major"> 학과와 관련된 곳으로 취업하는 비율
                </li>
              </ul>
            
            
          
              <p class="texttitle">4. 재정 상황</p>
              <ul  class="testlist">
                <li>
                  <input type="radio" id="hard" value="hard" name="money" checked> 경제적으로 힘든 상황
                </li>
                &nbsp;
                <li>
                  <input type="radio" id="soso" value="soso" name="money" > 보통
                </li>
                &nbsp;
                <li>
                  <input type="radio" id="good" value="good" name="money"> 경제적으로 여유로움
                </li>
              </ul>
          
            
              <p class="texttitle">5.시간적 여유</p>
              <ul  class="testlist">
                <li>
                  <input type="radio" id="many" value="many" name="time" checked> 시간 무관
                </li>
                &nbsp;
                <li>
                  <input type="radio" id="online" value="online" name="time"> 온라인만 가능
                </li>
                &nbsp;
                <li>
                  <input type="radio" id="offline" value="offline" name="time"> 수업 시간을 내기 어려움
                </li>
              </ul>     

            <div class="oncenter">
              <!-- 링크 a는 임시보 해놈 form처리해줄 jsp가 없으니 -->
              <br>
              <button type="submit" class="submitbutton"><a href="majortest.jsp" style="color:white ;">결과보기</a></button>
            </div>
          </form>
        </div>
      </div>
      <!-- 추천 끝 -->
      <!-- 대학정보 시작 -->
      <div class="title">
        <p>학과 정보</p>
      </div>
      <br>
      <!-- 데이터 끌어와서 리스트로 보여주는 화면 나중에 JSP로 직접 입력 말고 데이터 끌고오자 -->
      <ul>
        <!-- 직업 1줄 시작-->
        <c:forEach var="list" items="${majorList}">
        <li class="rowLine">
          <p class="listHeadLine">
            <span class="listJobName"><b><a href="majorDetail.do?major=${list.major }">${list.major }</a></b></span> 
            <span class="listJobEtc"><span class="listJobEtcColor">취업률: </span>${list.employment}</span>
            <span class="listJobEtc"><span class="listJobEtcColor">첫 직장 임금: </span>${list.salary}</span>
          </p>
          <p class="listJobExplain">
          	-${list.summary}
          </p>
        </li>
		</c:forEach>
        
        <!-- 직업 1줄 끝 -->
      </ul>
      <!-- 아래 페이지 넘버 부분 -->
      <div class="oncenter">
      <ul id="pageNumber">
        <li><a href="pre">&larr;</a></li>
        <li><a href="job.html">1</a></li>
        <li><a href="job2">2</a></li>
        <li><a href="job3">3</a></li>
        <li><a href="job4">4</a></li>
        <li><a href="job5">5</a></li>
        <li>.</li>
        <li>.</li>
        <li>.</li>
        <li>.</li>
        <li><a href="next">10</a></li>
        <li><a href="">&rarr;</a></li>
      </ul>  
      <br>
      </div>
      <!-- 페이지 넘버부분 끝 -->

      
      <!-- 대학정보끝 -->
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