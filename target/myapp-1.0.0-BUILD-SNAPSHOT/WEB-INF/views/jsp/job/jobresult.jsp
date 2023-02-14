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
  <link rel="stylesheet" href="resources/css/header_footer.css">
  <link rel="stylesheet" href="resources/css/job.css">
  <link rel="stylesheet" href="resources/css/page.css">
  <title>직업 추천 결과</title>
</head>
<body>
<script src="resources/js/jquery-3.6.3.min.js"></script>
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
    <!-- 그리드 시작 -->
    <div id="mainStyle">
      <!-- 그리드 내용 시작 -->
      <div id="mainContent">

        <p class="subtitle">조건에 맞는 직업 리스트</p>
        <br>
        <p class="subsubtitle">총 ${pageMaker.total }건이 검색되었습니다.</p>
        <br>
        <div class="title">
          <p >직업 정보</p>
        </div>
        <br>
        <c:if test="${fn:length(jobList) eq 0}">
        	<script type="text/javascript">
        		alert("조건에 맞는 결과가 없습니다. 조건을 변경해 시도해주세요.");
        		history.back(1);
        	</script>
        </c:if>
        <!-- 데이터 끌어와서 리스트로 보여주는 화면 나중에 JSP로 직접 입력 말고 데이터 끌고오자 -->
        <ul>
          <!-- 직업 1줄 시작-->
          <c:forEach var="list" items="${jobList}" varStatus="status">
          <li class="rowLine">
            <p class="listHeadLine">
              <span class="listJobName"><b><a href="jobDetail.do?job=${list.job }"> ${list.job }</a></b></span> 

              
              <c:if test="${!empty list.ability}">
              <span class="listJobEtc2"><span class="listJobEtcColor">핵심 능력: </span>
              <b>${list.ability}</b>
              </span>
              </c:if>
              <c:if test="${empty list.ability}">
              
           
              </c:if>
            </p>
            <p class="listJobExplain" >${list.summary}</p>
             <p class="listJobExplain">
              <c:choose>
              	<c:when test="${not empty list.similarJob  }">
              	  <span class="listJobEtcColor"><b>유사직업 :</b></span>${list.similarJob }
              	</c:when>
              </c:choose>
            </p>
          </li>
          <li>
          		<br>
				<p class="subsubtitle"  style="padding-left: 20px">직업 전망</p>	
				<br>
				<div align="center" style="width: 100%; height: auto;">
					<!--차트가 그려질 부분-->
					<canvas  class="myChart"></canvas>
					<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
					<script type="text/javascript">
			            var context = document.getElementsByClassName('myChart');
			            context[${status.index}].getContext('2d');
			            
			            var myChart = new Chart(context[${status.index}], {
			                type: 'bar', // 차트의 형태
			                data: { // 차트에 들어갈 데이터
			                    labels: [
			                        //x 축
			                        '${list.reward}',
			                        '${list.employmentsecurity}',
			                        '${list.developmentPossibility}',
			                        '${list.workingConditions}',
			                        '${list.professional}',
			                        '${list.equalEmployment}'
			                    ],
			                    datasets: [
			                        { //데이터
			                            label:[''] , //차트 제목
			                            fill: true, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
			                            data: [ //x축 label에 대응되는 데이터 값
			                            	${list.rewardValue},
			                            	${list.employmentsecurityvalue},
			                            	${list.developmentPossibilityValue},
			                            	${list.workingConditionsValue},
			                            	${list.professionalValue},
			                            	${list.equalEmploymentValue}
			                            ],
			                            backgroundColor: [
			                                //색상
			                                'rgba(255, 99, 132, 0.2)',
			                                'rgba(54, 162, 235, 0.2)',
			                                'rgba(255, 206, 86, 0.2)',
			                                'rgba(75, 192, 192, 0.2)',
			                                'rgba(153, 102, 255, 0.2)',
			                                'rgba(255, 159, 64, 0.2)'
			                            ],
			                            borderColor: [
			                                //경계선 색상
			                                'rgba(255, 99, 132, 1)',
			                                'rgba(54, 162, 235, 1)',
			                                'rgba(255, 206, 86, 1)',
			                                'rgba(75, 192, 192, 1)',
			                                'rgba(153, 102, 255, 1)',
			                                'rgba(255, 159, 64, 1)'
			                            ],
			                            borderWidth: 1 //경계선 굵기
			                        }
			                    ]
			                },
			                                options: {
							                        legend: {
							                            display: false
							                        },
								        			scales: {
								        				yAxes: [{
								        					ticks: {
								        						min: 0,
								        						max:100,
								        						stepSize : 10,
								        						fontSize : 14,
								        					}
								        				}]
								        			},
			                	                    plugins: {
			
			                	                        legend: {
			
			                	                            display: false
			                	                        }
			
			                	                    }
								        			
			// 					      값 고정으로 뜨게하는 부분 
			        			, tooltips: {
			        				enabled: true //마우스 올렸을 시 값 나오는 지 여부
			        			},
			        			hover: {
			        				animationDuration: 0
			        			}
			        			,
			        			animation: {
			        				duration: 1,
			        				onComplete: function () {
			        					var chartInstance = this.chart,
			        						ctx = chartInstance.ctx;
			        					ctx.font = Chart.helpers.fontString(Chart.defaults.global.defaultFontSize, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);
			        					ctx.fillStyle = 'black'; //글자색
			        					ctx.textAlign = 'center';
			        					ctx.textBaseline = 'top';
			
			        					this.data.datasets.forEach(function (dataset, i) {
			        						var meta = chartInstance.controller.getDatasetMeta(i);
			        						meta.data.forEach(function (bar, index) {
			        							var data = dataset.data[index];							
			        							ctx.fillText(data, bar._model.x, bar._model.y - 5);
			        						});
			        					});
			        				}
			        			}
			
			                	                }
			
			                	            });
			       		 </script>
				</div>
				<br>
					<p style="padding-left: 20px"><b>직업 전망 설명</b></p>
			          <ul class="jobExplainList" >
			            <c:set var="possibilitylist" value="${fn:split(list.possibility,'-') }"></c:set>
						  <c:forEach var="possibility" items="${possibilitylist }">
							 <li><p class="listJobExplain">- ${possibility}<p></li>
							 <br>
						  </c:forEach>
			          </ul>
          </li>
		  </c:forEach>
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
    <form id="moveForm" method="post">
            <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
   			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
   			<input type="hidden" name="ability" value="${pageMaker.cri.ability}">
   			<input type="hidden" name="profrssion" value="${pageMaker.cri.profrssion}">
   			<input type="hidden" name="priority" value="${pageMaker.cri.priority}">
   			
  	</form>
  	<script type="text/javascript">
	$(".pageInfo a").on("click", function(e){
		let moveForm = $("#moveForm");
	    e.preventDefault();
	    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	    moveForm.attr("action", "jobRecommend");
	    moveForm.submit();
	    
	});  	
  	</script>
        <!-- 페이지 넘버부분 끝 -->
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