<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/job.css">
  <link rel="stylesheet" href="/css/page.css">
  <title>직업</title>
</head>
<body>
<script src="/js/jquery-3.6.3.min.js"></script>


  <!-- 메인 부분 -->

    <!-- 그리드 시작 -->
    <div id="mainStyle">
      <!-- 그리드 내용 시작 -->
      <div id="mainContent">
        <div class="title">
          <p >직업추천</p>
        </div>
        <div class="textarea">
          <p class="subtitle">직업 조건</p>
          <form action="jobRecommend" method="post" id="jobForm">
          <div class="intextarea">
          	
	          <p class="subsubtitle">1.선호하는 직업 유형을 선택해주세요.</p>
	          <br>
	          <select  name="profrssion" id="profrssion" >
	            <option value="All" selected>전체</option>
	
	            <option value="운동 관련직">운동 관련직</option>
	            
	            <option value="기능직">기능직</option>
	            
	            <option value="기타 게임·오락·스포츠 관련직">기타 게임·오락·스포츠 관련직</option>
	            
	            <option value="음악 관련직">음악 관련직</option>
	            
	            <option value="미술 및 공예 관련직">미술 및 공예 관련직</option>
	            
	            <option value="이공계 교육 관련직">이공계 교육 관련직</option>
	            
	            <option value="인문 및 사회과학 관련직">인문 및 사회과학 관련직</option>
	            
	            <option value="교육관련 서비스직">교육관련 서비스직</option>
	            
	            <option value="사무 관련직">사무 관련직</option>
	            
	            <option value="영상 관련직">영상 관련직</option>
	            
	            <option value="환경관련 전문직">환경관련 전문직</option>
	            
	            <option value="무용 관련직">무용 관련직</option>
	            
	            <option value="의복제조 관련직">의복제조 관련직</option>
	            
	            <option value="고급 운전 관련직">고급 운전 관련직</option>
	            
	            <option value="악기 관련직">악기 관련직</option>
	            
	            <option value="기타 특수 예술직">기타 특수 예술직</option>
	            
	            <option value="의료관련 전문직">의료관련 전문직</option>
	            
	            <option value="회계 관련직">회계 관련직</option>
	            
	            <option value="기획서비스직">기획서비스직</option>
	            
	            <option value="영업관련 서비스직">영업관련 서비스직</option>
	            
	            <option value="예술기획 관련직">예술기획 관련직</option>
	            
	            <option value="법률 및 사회활동 관련직">법률 및 사회활동 관련직</option>
	            
	            <option value="안전 관련직">안전 관련직</option>
	            
	            <option value="조리 관련직">조리 관련직</option>
	            
	            <option value="공학 기술직">공학 기술직</option>
	            
	            <option value="연기 관련직">연기 관련직</option>
	            
	            <option value="사회서비스직">사회서비스직</option>
	            
	            <option value="IT관련전문직" >IT관련전문직</option>
	            
	            <option value="언어 관련 전문직">언어 관련 전문직</option>
	            
	            <option value="매니지먼트 관련직">매니지먼트 관련직</option>
	            
	            <option value="일반 서비스직">일반 서비스직</option>
	            
	            <option value="자연친화 관련직">자연친화 관련직</option>
	            
	            <option value="이학 전문직">이학 전문직</option>
	            
	            <option value="일반운전 관련직">일반운전 관련직</option>
	            
	            <option value="이미용 관련직">미용 관련직</option>
	
	            <option value="공학 전문직">공학 전문직</option>
	
	            <option value="웹·게임·애니메이션 관련직">웹·게임·애니메이션 관련직</option>
	
	            <option value="인문계 교육 관련직">인문계 교육 관련직</option>
	
	            <option value="금융 및 경영 관련직">금융 및 경영 관련직</option>
	
	            <option value="작가 관련직">작가 관련직</option>
	
	            <option value="보건의료 관련 서비스직">보건의료 관련 서비스직</option>
	
	            <option value="디자인 관련직">디자인 관련직</option>
	
	            <option value="농생명산업 관련직">농생명산업 관련직</option>
	          </select>
              <br><br>
          	  <p class="subsubtitle">2.본인이 자신 있는 장점을 1개 선택해주세요.</p>
          	  <br>
          	  	<label><input name="ability" type="radio" value="All" checked="checked">전체</label>
          		<label><input name="ability" type="radio" value="신체운동">신체운동</label>
          		<label><input name="ability" type="radio" value="손재능">손재능</label>
          		<label><input name="ability" type="radio" value="공간시각">공간시각</label>
          		<label><input name="ability" type="radio" value="음악">음악</label>
          		<label><input name="ability" type="radio" value="창의">창의</label>
          		<label><input name="ability" type="radio" value="언어">언어</label>
          		<label><input name="ability" type="radio" value="수리논리">수리논리</label>
          		<label><input name="ability" type="radio" value="자기성찰">자기성찰</label>
          		<label><input name="ability" type="radio" value="대인관계">대인관계</label>
          		<label><input name="ability" type="radio" value="자연친화">자연친화</label>
          		<label><input name="ability" type="radio" value="예술시각">예술시각</label>
          	  <br><br>
	          <p class="subsubtitle">3.직업 선택 시 우선시 하는 조건 1개를 선택해주세요.</p>
	          <ul class="jobAptitude">
	            <li>
	              <input type="radio" name="priority" value="REWARDVALUE" checked="checked"> 보상
	            </li>
	            <li>
	              <input type="radio" name="priority" value="EMPLOYMENTSECURITYVALUE"> 고용 안정률
	            </li>
	            <li>
	              <input type="radio"name="priority" value="DEVELOPMENTPOSSIBILITYVALUE"> 발전가능성
	            </li>
	            <li>
	              <input type="radio" name="priority" value="WORKINGCONDITIONSVALUE"> 근무여건
	            </li>
	            <li>
	              <input type="radio" name="priority" value="PROFESSIONALVALUE"> 직업전문성
	            </li>
	            <li>
	              <input type="radio" name="priority" value="EQUALEMPLOYMENTVALUE"> 평등한 고용
	            </li>
	          </ul>
         </div>
    
          <div class="oncenter">
            
            <button type="button" class="submitbutton" onclick="check()">결과보기</button>
          </div>
        </form>
        </div>

        <div class="title">
          <p >직업 정보 총 ${pageMaker.total }건</p>
        </div>
        <br>
        <!-- 데이터 끌어와서 리스트로 보여주는 화면 나중에 JSP로 직접 입력 말고 데이터 끌고오자 -->
        <ul>

          <c:forEach var="list" items="${jobList }" varStatus="status">
          <li class="rowLine">
            <p class="listHeadLine">
              <span class="listJobName"><b><a href="jobDetail?job=${list.job }"> ${list.job }</a></b></span> 
              <span class="listJobEtc"><span class="listJobEtcColor">연봉:</span> <b>${list.salery}</b></span>
              <span class="listJobEtc"><span class="listJobEtcColor">발전가능성:</span> <b>${list.possibility }</b></span>
              <span class="listJobEtc"><span class="listJobEtcColor">고용평등:</span> <b>${list.equalemployment }</b></span>
            </p>
            <p class="listJobExplain" >-${ list.summary}</p>
             <p class="listJobExplain">
              <c:choose>
              	<c:when test="${not empty list.similarJob  }">
              	  <span class="listJobEtcColor"><b>유사직업 :</b></span>${list.similarJob }
              	</c:when>
              </c:choose>
            </p>
          </li>
		  </c:forEach>
		  <c:if test="${pageMaker.total eq 0}">
		  	<br>
		  		<li style="text-align: center;"><h2> 일치하는 직업이 없습니다.</h2></li>
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
   			
   			<c:if test="${pageMaker.cri.search ne null}">
   				<input type="hidden" name="search" value="${pageMaker.cri.search }">	
   			</c:if>
  	</form>
        <!-- 페이지 넘버부분 끝 -->
        <!-- 검색창 -->
        <table style="margin: auto;" >
          <tr>
            <td>
              <form action="jobList" id="jobList" method="get">
				  <input type="search" id="search" name="search" >&nbsp;
                  <button type="button" class="searchbutton" onclick="searchCheck()">검색</button>
              </form>
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
	    moveForm.attr("action", "jobList");
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
		    document.getElementById("jobList").submit();   
		  }

		}
	</script>
<!-- 메인  끝-->

<script type="text/javascript">
	function check() {
		let possibilityNum = 0;
		let abilityNum = 0;
 		let possibility = document.getElementsByName("priority");
 		let ability = document.getElementsByName("ability");
 		
		for (let i = 0; i < possibility.length; i++) {
			if (possibility[i].checked) {
				possibilityNum += 1;
			}
		}
		
		for (let i = 0; i < ability.length; i++) {
			if (ability[i].checked) {
				abilityNum += 1;
			}
		}
		if (possibilityNum != 1 ) {
			alert("우선 조건 1개를 선택 바랍니다.")	
		}else if (abilityNum != 1) {
			alert("능력 1개를 선택 바랍니다.")	
		}
		
		else {
			document.getElementById("jobForm").submit();
		}
		
	}
</script>
</body>
</html>