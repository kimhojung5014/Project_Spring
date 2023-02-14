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
  <link rel="stylesheet" href="resources/css/knou.css"> 
  <title>방송통신대학 소개 페이지</title>
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

      <p class="subtitle">방송통신대학 설립취지</p>
      <div class="textarea">
        <p>
          현대사회는 학문과 과학기술 분야는 물론, 문화예술 분야를 포함한 모든 생활영역에 끊임없는 변화의 물결이 굽이치고 있습니다. 따라서 이런 변화에 능동적으로 대응하기 위해서는 무엇보다도 기존교육체제의 근본적인 혁신, 즉 학교교육과 사회교육의 연계, 분야별ㆍ영역별ㆍ수준별 교육과정을 통합한 전 생애에 걸친 학습의 지속화 등을 핵심으로 하는 평생교육체제로의 전환이 요구됩니다. 이러한 시대적 요구에 부응하기 위하여 설립된 한국방송통신대학교는 배우고자 하는 모든 국민들에게 다양한 영역에 걸친 대학 수준의 교육 프로그램을 원격교육방법으로 제공함으로써 평생교육체제의 일익을 담당하고 있습니다.
        </p>
      </div>
    
    
      <p class="subtitle">설립목적</p>
      <div class="textarea">
        <p class="title">한국방송통신대학교의 설립목적은 다음 네 가지로 요약됩니다.</p>
        <br>
        <div class="oncenter">
          <div class="one1 oneText">
            <p id="inner1">
            01. 고등교육의 기회 제공<br>
            고등교육의 기회 확대의 측면에서 <br>
            경제, 지리, 연령 등의 이유로 <br>
            대학교육을 받지못하고 있는 <br>
            사람들에게 원격교육방법으로<br>
            고등교육의 기회 제공 
          </p>
          </div>
            <div class="one2 oneText">
            <p id="inner2">
              02. 국민교육의 수준 향상<br>
              일반 교양교육과 더불어 각종<br>
              직업에 필요한 전문교육을 실시하여<br>
              국민교육의 수준 향상에 기여 
            </p>
          </div >
          <div class="one3 oneText">
            <p id="inner3">      
              03. 사회교육의 확대 발전<br>
              국가사회 발전과 산업기술 개발에<br>
              기여할 수 있는 교육기회를 <br>
              부여함으로써 개인의 성장을 위한 <br>
              사회교육의 확대 발전 도모 
            </p>
          </div >
          <div class="one4 oneText">
            <p id="inner4"> 
              04. 분야별 인재 양성<br>
              계속 교육을 통하여 급속히 변천하는<br>
              시대에적응하고, 국가에 필요한 분야별<br>
              인재 양성에 이바지 
            </p>
          </div>
        </div>

      </div>

      <p class="subtitle">전략 목표</h2><br>
      <div class="textarea oncenter">
        <table class="tableSpa">
          <tr>
            <td> <p class="p1 pbasic">혁신 선도</p></td>
            <td><p class="p2 pbasic">열린 교육 구현</p></td>
            <td><p class="p3 pbasic">사회 공현</p></td>
            <td><p class="p4 pbasic">자긍심 고취</p></td>
          </tr>
        </table>
      </div>





    <p class="subtitle">발전  목표</h2>
      <div class="textarea">

        <table class="tableSpa">
          <tr>
            <td>
              <p class="p1 pbasic2">
                디지털 기반 고등교육<br>
                혁신 디지털 전환
              </p>
            </td>
            <td>
              <p class="p2 pbasic2">
                열린 교육 체계 고도화<br>
                고등평생교육 실현
              </p>
            </td>
            <td>
              <p class="p3 pbasic2">
                확장성 기반
                원격고등교육 진흥
                대학교육 외연 확장
              </p>
            </td>
          </tr>
          <tr>
            <td colspan="3">
              <div class="oncenter">
                <p class ="p1 pbasic2">
                  전략 추진 인프라 조성 추진 <br>
                  역량·기반 확보
                </p>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <p class="p4 pbasic2">
                  KNOU 브랜드 가치<br>
                  혁신 브랜드 경쟁력 제고
                </p>
              </div>
              
            </td>
          </tr>
        </table>

      </div>
 
     
 
    

      <p class="subtitle">전략과제</p>
        <div class="textarea">
          <table class="twoList">
            <tr>
              <td>
                <ol >
                  <li>디지털 전환 로드맵 구축 및 디지털 역량 강화</li>
          
                  <li>인생성공과 열린 교육을 지향하는 교육·행정 고도화</li>
                
                    <li>방송대형 교육서비스 모델 개발과 전문성 확보</li>
                    
                    <li>대학 확장 수요를 고려한 프로그램 개발·운영</li>
                    
                    <li>신규 학습자 수요 맞춤형 원격 고등평생교육 확대</li>
                    
                    <li>해외협력 및 교류를 통한 원격교육 전문성 강화</li>
                    
                    <li>대학 자원 및 역량의 정렬</li>
                  </ol>
              </td>
              <td>
                <ol start="8">
                  <li>수요자 편의성 기반 유입체계 고도화</li>
                  
                  <li>지속가능한 성장을 위한 사회 수요 맞춤형 교육 확대</li>
                  
                  <li>생애에 걸친 포괄적 학습관리체계 구축</li>
                  
                  <li>대학 UI 재정립 및 브랜드 가치 증진</li>
                  
                  <li>지속가능한 대학상 확립</li>
                  
                  <li>연구·행정 인프라 선진화</li>
                  
                  <li>혁신·도전 지향 조직문화 조성</li>
                </ol>
              </td>
            </tr>
          </table>
        </div>

    

      <p class="subtitle">핵심 가치</p>
      <div class="oncenter textarea">
        <p class="rowp" style="background-color: skyblue;">전문성</p>
        <p class="rowp" style="background-color:  rgb(96, 124, 235);">공공성</p>
        <p class="rowp" style="background-color: rgb(52, 74, 222);">개방성</p>
        <p class="rowp" style="background-color: rgb(42, 42, 123);">자율성</p>  
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