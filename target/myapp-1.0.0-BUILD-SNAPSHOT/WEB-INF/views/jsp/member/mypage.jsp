<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/css/header_footer.css">
  <link rel="stylesheet" href="resources/css/join.css?1"> 
  <title>마이 페이지</title>
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
      <h1 class="subtitle">개인정보수정</h1>
      

      <form action="edit" method="post" id ="editForm">
      <input type="hidden" name ="numId" id="numId" value="${userData.numId }">
        <div class="textarea">
         <table id="join">
      
            <tr>
              <td class="textleft">아이디</td>
              <td>
              	<input type="text" name="userId" id="userId" style="color: gray;" readonly value="${userData.userId}">
              </td>
            </tr>
            <tr>
            <td></td>
            	<td><p>아이디는 수정할 수 없습니다.</p></td>
            </tr>
            <tr>
              <td class="textleft">비밀번호</td>
              <td><input type="text" id="pw" name="pw" value="${userData.pw}" required onkeyup="pw_Regular_Check()">
    		   </td>
            </tr>
            <tr>
            <td></td>
            	<td>
            	<p id="pwMsg"></p>
            	</td>
            </tr>
            <tr>
              <td class="textleft">비밀번호 확인</td>
				 <td><input type="text" name="pwCheck" id="pwCheck"  value="${userData.pw}" placeholder="비밀번호 재입력" required onkeyup="pw_Check()">
                 </td>
            </tr>
            <tr>
            <td></td>
            <td><p id ="pwCheckMsg"></p></td>
            </tr>
			 <tr>
             	<td class="textleft">닉네임</td>
				<c:choose>
				
					<c:when test="${nickName ne null }">
		             	<td><input type="text" id = "nickName" name="nickName" value="${nickName}" readonly></td>           	
             			<td><input class="button" id="editNickNameBbutton" type="button" onclick="nickName_edit_MyPage()" value="수정"></td>
					</c:when>
					
					<c:when test="${userData.nickName ne null}">
						<td><input type="text" id = "nickName" name="nickName" value="${userData.nickName}" readonly></td>
	             		<td><input class="button" id="editNickNameBbutton" type="button" onclick="nickName_edit_MyPage()" value="수정"></td>
					</c:when>
				</c:choose>
             	
            </tr>
            <tr>
            	<td></td>
            	<td><p id="nickNameMsg">닉네임 변경 시 수정 버튼을 눌러주세요.</p></td>
            </tr>
            
            <tr>
              <td class="textleft">이름</td>
              <td><input type="text" id="userName" name="userName" value="${userData.userName}"  required onkeyup="name_Check()"></td>
            </tr>
            <tr>
            	<td></td>
            	<td><p id ="userNameMsg"></p></td>
            </tr>
            <tr>
              <td class="textleft">이메일주소</td>
              <td>
              	<input type="text" id ="eMail" name="eMail" value="${userData.eMail}" required onkeyup="eMail_Check()">
              </td>
            </tr>
            <tr>
            	<td></td>
            	<td><p id="eMailMsg"></p></td>
            </tr>
            <tr>
              <td class="textleft">전화번호</td>
              <td>
              	<input type="tel" id = "telNumber" name="telNumber" value="${userData.telNumber}"  required onkeyup="tel_Check()">
              </td>
            </tr>
            <tr>
            	<td></td>
            	<td><p id="telMsg"></p></td>
            </tr>
            
            
            <tr>
              <td colspan="3"><button class="button" type="button" onclick=" myPage_final_Check()" >완료</button></td>
            </tr>
          </table>
        </div>
        </form>
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