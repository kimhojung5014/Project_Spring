<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/css/major.css?1"> 
  <link rel="stylesheet" href="resources/css/page.css">
  <title>학과</title>
</head>
<body>
<script src="/js/jquery-3.6.3.min.js"></script>
  
  <!-- 메인 부분 -->
  <div id="mainStyle">
    <div id="mainContent">
      <div class="title">
      <p >학과 추천</p>
      </div>
      <div class="textarea">
        <p class="subtitle">나에게 맞는 학과, 학위 알아보기</p>
        <div class="intextarea" >
          <form action="majorRecommend" method="post">
            
            <p class="texttitle">1. 학교 유형을 선택해주세요.</p>
            <ul  class="testlist">
                <li>  
                    <input type="radio" name="uni" id="all" value="all" checked> 전체
                </li>  
                <li>   
                    <input type="radio" name="uni" id="four" value="4년제 대학"> 4년제 대학교
                </li>
                <li>  
                    <input type="radio" name="uni" id="two" value="전문대학"> 전문 대학교
                </li>
              </ul>

              <p class="texttitle">2. 전공계열</p>
              <ul class="testlist">
                <li>  
                    <input type="radio" name="lclass" value="all" checked> 전체
                </li>  
                <li>   
                    <input type="radio" name="lclass"  value="인문계열"> 인문계열
                </li>
                <li>  
                    <input type="radio" name="lclass" value="사회계열"> 사회계열
                </li>
                <li>  
                    <input type="radio" name="lclass"  value="교육계열"> 교육계열
                </li>
                <br>
                <li>   
                  <input type="radio" name="lclass"  value="공학계열"> 공학계열
                </li>
                <li>  
                    <input type="radio" name="lclass"  value="자연계열"> 자연계열
                </li>
                <li>   
                  <input type="radio" name="lclass"  value="의약계열"> 의약계열
                </li>
                <li>  
                <input type="radio" name="lclass"  value="예체능계열"> 예체능계열
                </li>
              </ul>

            <p class="texttitle">3. 제일 우선 시 하는 조건을 선택해주세요.</p>
            <ul  class="testlist">
                <li>  
                    <input type="radio" name="priority"  value="employmentdata" checked> 취업률
                </li>  
                <li>   
                    <input type="radio" name="priority"  value="salarydata"> 임금
                </li>
                <li>  
                    <input type="radio" name="priority"  value="SATISFACTIONDATA"> 직업 만족도
                </li>
                
              </ul>
            
            
          
              <p class="texttitle">4. 재정 상황</p>
              <ul  class="testlist">
                <li>
                  <input type="radio"  value="경제적으로 힘든 상황" name="money" checked> 경제적으로 힘든 상황
                </li>
               
                <li>
                  <input type="radio"  value="경제적으로 여유로움" name="money"> 경제적으로 여유로움
                </li>
              </ul>
          
            
              <p class="texttitle">5.시간적 여유</p>
              <ul  class="testlist">
                <li>
                  <input type="radio"  value="시간 무관" name="time" checked> 시간 무관
                </li>
                &nbsp;
                <li>
                  <input type="radio" value="온라인만 가능" name="time"> 온라인만 가능
                </li>
                &nbsp;
                <li>
                  <input type="radio" value="수업 시간을 내기 어려움" name="time"> 수업 시간을 내기 어려움
                </li>
              </ul>     

            <div class="oncenter">
              <!-- 링크 a는 임시보 해놈 form처리해줄 jsp가 없으니 -->
              <br>
              <button type="submit" class="submitbutton">결과보기</button>
            </div>
          </form>
        </div>
      </div>
      <!-- 추천 끝 -->
      <!-- 대학정보 시작 -->
      <div class="title">
        <p>학과 정보 총 ${pageMaker.total }건</p>
      </div>
      <br>
      <!-- 데이터 끌어와서 리스트로 보여주는 화면 나중에 JSP로 직접 입력 말고 데이터 끌고오자 -->
      <ul>
        <!-- 직업 1줄 시작-->
        <c:forEach var="list" items="${majorList}">
        <li class="rowLine">
          <p class="listHeadLine">
            <span class="listJobName"><b><a href="majorDetail?major=${list.major }">${list.major }</a>&nbsp;<span id="uni">[${list.lClass } ${list.uni}]</span></b></span> 
            <span class="listJobEtc"><span class="listJobEtcColor">취업률: </span>${list.employment}</span>
            <span class="listJobEtc"><span class="listJobEtcColor">첫 직장 임금: </span>${list.salary}</span>
          </p>
          <p class="listJobExplain">-${list.summary}</p>
          <p class="listJobExplain">
          <c:if test="${not empty list.department}">
          <span class="listJobEtcColor"><b>관련학과 :</b></span>
          <c:forEach var="department" items="${fn:split(list.department,',') }" varStatus="i">
          		<c:if test="${i.index <= 15 }">
          		${department},&nbsp;
          		</c:if>
          		<c:if test="${i.last }"> ...</c:if>
          </c:forEach>
             
          </c:if>
          </p>
        </li>
		</c:forEach>
		  <c:if test="${pageMaker.total eq 0}">
		  	<br>
		  		<li style="text-align: center;"><h2> 일치하는 학과가 없습니다.</h2></li>
		  	<br>
		  </c:if>
      </ul>
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

                <!-- 각 번호 페이지 버튼 아래에 active가 현제 페이지 표시하는 부분 -->
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
   			
   			<c:if test="${pageMaker.cri.search ne null}">
   				<input type="hidden" name="search" value="${pageMaker.cri.search }">	
   			</c:if>
  	</form>
        <!-- 페이지 넘버부분 끝 -->
        <!-- 검색창 -->
        <table style="margin: auto;" >
          <tr>
            <td>
              <form action="major" id="major" method="get">
				  <input type="search" id="search" name="search" >&nbsp;
                  <button type="button" class="searchbutton" onclick="searchCheck()">검색</button>
              </form>
            </td>

          </tr>
        </table>
        <br>
	<script type="text/javascript">
	$(".pageInfo a").on("click", function(e){
		let moveForm = $("#moveForm");
	    e.preventDefault();
	    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	    moveForm.attr("action", "major");
	    moveForm.submit();
	    
	});
// 	검색어 체크
	function searchCheck(){
		  const search = document.getElementById("search").value;
		  
		  if(search.length == 0){
		    alert("검색어를 입력해주세요");
		  }
		  else if(search.length > 100){
		    alert("검색어는 100자까지 가능합니다.");
		  }
		  else{
		    document.getElementById("major").submit();   
		  }

		}
	</script>
      
      <!-- 대학정보끝 -->
    </div>
  </div>
<!-- 메인  끝-->



</body>
</html>