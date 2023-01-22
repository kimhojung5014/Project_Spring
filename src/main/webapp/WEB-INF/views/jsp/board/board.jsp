<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/css/board.css"> 
  <link rel="stylesheet" href="resources/css/header_footer.css">
  <link rel="stylesheet" href="resources/css/page.css">
  
  <title>게시판</title>
</head>
<body>
<!-- JQuery 불러오기 -->
<script src="resources/js/jquery-3.6.3.min.js"></script>﻿

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
      <!-- 상단 메뉴 카테고리 -->
      <p class="subtitle">게시판</p>
      <br>
      <table class="memuTable">
        <tr>
        <c:if test="${userData.userId eq 'gytrt0130' }">
          <th style="background: red;"><a href="testinsert" style="background: red;">더미 삽입! </a>
          <th style="background: red;"><a href="testdelete" style="background: red;">전체 삭제! </a>
        </c:if>
          <th>공지사항</th>
          <th><a href="list?category=직업정보">직업정보</a></th>
          <th><a href="list?category=학과정보">학과정보</a></th>
          <th><a href="list?category=고민상담">고민상담</a></th>
        </tr>
      </table>
      <!-- 상단 메뉴 카테고리 끝 -->

      <!-- 테이블로 만든 게시판 형식 -->
      <table id="board">
        <thead>
        	<tr>
	          <th>번호</th>
	          <th>카테고리</th>
	          <th>제목</th>
	          <th>작성자</th>
	          <th>작성시간</th>
	          <th>조회수</th>
			  <th>삭제</th>
		   </tr>
		  </thead>
	  <!-- 페이지 개수 처리 부분 -->
        <c:choose>
        	<c:when test="${not empty boardList }">

		        <c:forEach var="list" items="${boardList}" varStatus="status" >
			          <tbody>
			          <tr>

			            <td>${list.writeNum }</td>
			            <td>${list.category } </td>
			            <td><a href="inToBoard?writeNum=${list.writeNum }">${list.title}</a></td>
			            <td>${list.writer }</td>
			            <td>${list.writingTime }</td>
			            <td>${list.views }</td>
			            
						<c:choose>
			            	<c:when test="${userData.userId eq list.userId }">
	    						<td>
				            		<a type="button" class="deleteButton" onclick="deleteCheck(${list.writeNum })">삭제</a>
			            		</td>
			            	</c:when>
			            	<c:otherwise>
			            	 <td>&nbsp;</td>
			            	</c:otherwise>
			            </c:choose>
					
			          </tr>
			          </tbody>

		  		</c:forEach>
		  		
	        </c:when>
	        <c:otherwise>
	        	<td colspan="6"><b>조건에 맞는 글이 없습니다.</b></td>
	        </c:otherwise>
  		</c:choose>

        </tbody>
      </table>
      <!-- 게시판 끝 -->
      <br>
      <!-- 아래 페이지 넘버 부분 -->

        <div class="pageInfo_area">
 			<table id="pageInfo" class="pageInfo oncenter">
 				<!-- 이전페이지 버튼 -->
 				<tr>
 					<c:if test="${pageMaker.total ne 0}">
                		<td class="pageInfo_btn"><a style="display: inline-block;" href="${1}">처음</a></td>
                	</c:if>
                	
               		 <c:if test="${pageMaker.prev}">
                    <td class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}">&larr;</a></td>
               		 </c:if>

                <!-- 각 번호 페이지 버튼 -->
                <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                   <c:if test="${num ne 0}">
                    <td class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></td>
                    </c:if>
                </c:forEach>

                <!-- 다음페이지 버튼 -->
                <c:if test="${pageMaker.next}">
                    <td class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }">&rarr;</a></td>
                </c:if> 
                <c:if test="${pageMaker.total ne 0}">
                <td class="pageInfo_btn"><a style="display: inline-block;" href="${pageMaker.realEnd}">&nbsp;끝</a></td>
                </c:if>
                <tr>
 			</table>
        </div>
    <form id="moveForm" method="get">
            <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
   			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
   			<c:if test="${pageMaker.cri.category ne null}">
   				<input type="hidden" name="category" value="${pageMaker.cri.category }">	
   			</c:if>
   			<c:if test="${pageMaker.cri.chooseSearch ne null}">
   				<input type="hidden" name="chooseSearch" value="${pageMaker.cri.chooseSearch }">	
   				<input type="hidden" name="search" value="${pageMaker.cri.search }">	
   			</c:if>
  	</form>
        <!-- 페이지 넘버부분 끝 -->
        
		<br>
        <!-- 검색창 -->
        <table style="width: 100%; padding-left: 35%;" >
          <tr>
            <td>
              <form action="list" id="boardSearch" method="get">
              	  <select name="chooseSearch">
              	  	<option value="title" selected>제목</option>
              	  	<option value="content">내용</option>
              	  	<option value="writer">작성자</option>
              	  </select>
				  <input type="search" id="search" name="search" >&nbsp;
                  <button type="button" class="searchbutton" onclick="searchCheck()">검색</button>
              </form>
            </td>
            <td>
            <c:choose>
            	<c:when test="${userData ne null }">
	              <a class="submitbutton" href="boardwrite">글 작성</a>
            	</c:when>
            	<c:otherwise>
            	  <button type="button" class="submitbutton" onclick="loginAlert()">글 작성</button>
            	</c:otherwise>
            </c:choose>
            </td>
          </tr>
        </table>
  
      <br>

    </div>
    
  </div>
<script type="text/javascript">
	
	
	$(".pageInfo a").on("click", function(e){
		let moveForm = $("#moveForm");
	    e.preventDefault();
	    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	    moveForm.attr("action", "list");
	    moveForm.submit();
	    
	});

// 글작성 버튼 평소에는 숨김처리
	function loginAlert() {
		alert("로그인 후 글작성 가능합니다.");
	}
// 	검색어 체크 펑션
	function searchCheck(){
		  const search = document.getElementById("search").value;
		  
		  if(search.length == 0){
		    alert("검색어를 입력해주세요");
		  }
		  else if(search.length > 100){
			alert("검색어는 100자까지 가능합니다.");
		  }
		  else{
		    document.getElementById("boardSearch").submit();   
		  }

		}
		
// 	삭제 확인 펑션
	function deleteCheck(writeNum) {
		const check = confirm("정말 삭제하시겠습니까?");
		if (check) {
			document.location.href = "boardDelete?writeNum="+writeNum;
		}
	}
</script>
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