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
  <link rel="stylesheet" href="resources/css/major.css"> 
  <link rel="stylesheet" href="resources/css/header_footer.css">
  <link rel="stylesheet" href="resources/css/page.css">
  <title>학과</title>
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
  <div id="mainStyle">
    <div id="mainContent">
      <div class="title">
      <p >학과 추천 결과</p>
      </div>
      <div class="textarea">
        <p class="subtitle">나에게 맞는 학과, 학위 알아보기</p>
        <div class="intextarea" >
        	<p class="subsubtitle">
        	
            <c:if test="${majorTest.uni ne '대학교(4,2년제 전체)'}">
            	${majorTest.uni }에서&nbsp;
            	
            </c:if>
            <c:if test="${majorTest.uni eq '대학교(4,2년제 전체)'}">
            	대학교(4,2년제 전체)&nbsp; 
            </c:if>
            <c:if test="${majorTest.lclass ne 'all'}">
            	${majorTest.lclass }에서&nbsp; 
            </c:if>
            <c:if test="${majorTest.lclass eq 'all'}">
            	 전체 계열 중에서&nbsp; 
            </c:if>
             ${majorTest.priority}(가)이 제일 높은 곳은 <span style="color: rgb(76, 111, 219)">${majorList[0].major }</span>입니다.</p>

            <p class="subsubtitle">${majorTest.priority} 평균 <span style="color: rgb(76, 111, 219)">${majorList[0].priority }%</span>입니다.</p>

			<c:set var="salary" value="${fn:split(majorList[0].salaryData,'@')}"/>
			
            <p class="subsubtitle">첫 직장 월평균 임금은 <span style="color: rgb(76, 111, 219)">${salary[0]}만원</span> 입니다.</p>

            <p class="subsubtitle">첫 직장 만족도는 
            <c:set var="satisfactionItem" value="${fn:split(majorList[0].satisfactionItem,'@')}"></c:set>
            <c:set var="satisfactionData" value="${fn:split(majorList[0].satisfactionData,'@')}"></c:set>
            <c:forEach var="loof" begin="0" end="${fn:length(satisfactionItem)-1 }" varStatus="i">
           		 ${satisfactionItem[i.index] }<span style="color: rgb(76, 111, 219)"> ${satisfactionData[i.index]}%&nbsp; </span>
            </c:forEach>
			입니다.</p>
			<c:if test="${majorTest.time ne '수업 시간을 내기 어려움'}">
            <p class="subsubtitle">${majorTest.uni}, ${majorTest.money}, ${majorTest.time}을 선택하셨기에</p>
            
            <p class="subsubtitle">
            <c:if test="${majorTest.money eq '경제적으로 힘든 상황'}">
            	<span style="color: rgb(76, 111, 219)">온라인(방송통신,사이버) 대학교&nbsp; </span><a class="major" href="majorDetail?major=${majorList[0].major }">${majorList[0].major }</a>를 추천해드립니다.
            </c:if>
            <c:if test="${majorTest.money ne '경제적으로 힘든 상황'}">
            	<span style="color: rgb(76, 111, 219)">${majorTest.uni} &nbsp; </span><a class="major" href="majorDetail?major=${majorList[0].major }">${majorList[0].major }</a>를 추천해드립니다.
            </c:if>
           </p>
           </c:if>
           <c:if test="${majorTest.time eq '수업 시간을 내기 어려움'}">
           		<p class="subsubtitle">
           			${majorTest.time}을 선택하셨기에
           			일반적인 대학보다는 독학학위제나 학점은행제를 이용하시는 걸 추천드립니다.
           			상단에 메뉴에서 온라인 학위 정보를 클릭하시면 보실 수 있습니다.
           		</p>
           </c:if>
            		
	 	<table id="chartTable">
	 		<tr>
	 			<td><canvas id="myChart1"></canvas></td>
	 			<td><canvas id="myChart2"></canvas></td>
	 		</tr>
	 		<tr>
	 			<td><canvas id="myChart3"></canvas></td>
	 		
	 			<td><canvas id="myChart4"></canvas></td>
	 		</tr>
	 		<tr>
	 			<td>
	 				<canvas id="myChart5"></canvas>
	 				<c:set var="salaryItem" value="${fn:split(majorDto.salaryItem,'@')}"/>
	 				<c:set var="salaryData" value="${fn:split(majorDto.salaryData,'@')}"/>

	 			</td>
	 			<td><canvas id="myChart6"></canvas></td>
	 		</tr>
	 	</table>	
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
			    <input type="hidden" name="uni" value="${majorTest.uni}">
				<input type="hidden" name="money" value="${majorTest.money}">
				<input type="hidden" name="time" value="${majorTest.time}">
				<input type="hidden" name="lclass" value="${majorTest.lclass }">
				<input type="hidden" name="priority" value="${majorTest.priority }	">
   			<c:if test="${pageMaker.cri.search ne null}">
   				<input type="hidden" name="search" value="${pageMaker.cri.search }">
   			</c:if>
  	</form>
        <!-- 페이지 넘버부분 끝 -->
        <!-- 검색창 -->
        <table style="margin: auto;" >
          <tr>
            <td>
              <form action="majorRecommend" id="major" method="post">
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
	    moveForm.attr("action", "majorRecommend");
	    moveForm.submit();
	    
	});

	function searchCheck(){
		  const search = document.getElementById("search").value;
		  
		  if(search.length == 0){
		    alert("검색어를 입력해주세요");
		  }
		  else if(search.length > 100){
		    alert("검색어는 100자까지 가능합니다.");
		  }
		  else{
		    document.getElementById("majorRecommend").submit();   
		  }

		}
	</script>
      
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

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<!--입학 상황-->
<script type="text/javascript">
			const applicantData = "<c:out value='${majorList[0].applicantData}'/>";
			
			const appli = applicantData.split("@");
			
            var context = document
                .getElementById('myChart1')
                .getContext('2d');
            var myChart = new Chart(context, {
                type: 'bar', // 차트의 형태
                data: { // 차트에 들어갈 데이터
                    labels: ['지원자','입학자'],
                    
                    datasets: [
                        { //데이터
                            label:[''] , //차트 제목
                            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                            data: [ //x축 label에 대응되는 데이터 값
                            	appli[0],appli[1]
                          
                            ],
                            backgroundColor: [
                                //색상
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)'

                            ],
                          
                        },
                 
                    ],
                },
                                options: {
                						//제목 부분
					                    title: {
					          	          display: true,
					          	          text: '입학 상황',
					          	          fontSize:16,
					          	         
					          	        },
				                        legend: {
				                            display: false
				                        },
					        			scales: {
					        				yAxes: [{
					        					ticks: {
					        						min: 0,
					        						max:100000,
					        						stepSize : 20000,
					        						fontSize : 14,
					        					}
					        				}]
					        			},
                	                    plugins: {

                   	                    }  
					        			
// 					      값 고정으로 뜨게하는 부분 
        			 ,tooltips: {
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
        					ctx.textBaseline = 'bottom';

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
            //입학 상황 차트 끝
  </script>
  
<script type="text/javascript">         
            //취업률
			const employmentData = "<c:out value='${majorList[0].employmentData}'/>";
			
			const employment = employmentData.split("@");
			
            var context = document
                .getElementById('myChart2')
                .getContext('2d');
            var myChart = new Chart(context, {
                type: 'bar', // 차트의 형태
                data: { // 차트에 들어갈 데이터
                    labels: ['전체','남자','여자'],
                    
                    datasets: [
                        { //데이터
                            label:[''] , //차트 제목
                            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                            data: [ //x축 label에 대응되는 데이터 값
                            	employment[0],employment[1],employment[2]
                          
                            ],
                            backgroundColor: [
                                //색상
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)'

                            ],

                        },
                 
                    ],
                    
                    

                },
                                options: {
                						//제목 부분
					                    title: {
					          	          display: true,
					          	          text: '취업률',
					          	        fontStyle:'bold',	
					          	        fontSize:16,
					          	        },
				                        legend: {
				                            display: false
				                        },	
					        			scales: {
					        				yAxes: [{
					        					ticks: {
					        						min: 0,
					        						max:100,
					        						stepSize : 20,
					        						fontSize : 14
					        					}
					        				}]
					        			},
                	                    plugins: {

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
        					ctx.textBaseline = 'bottom';

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
            //취업률 끝
</script>

	<script type="text/javascript">
           //졸업 후 상황
			const afterData = "<c:out value='${majorList[0].afterData}'/>";
			
			const after = afterData.split("@");
			
            var context = document
                .getElementById('myChart3')
                .getContext('2d');
            var myChart = new Chart(context, {
                type: 'pie', // 차트의 형태
                data: { // 차트에 들어갈 데이터
                    labels: ['진학자: '+after[0],'취업자: '+after[1],'기타: '+after[2]],
                    
                    datasets: [
                        { //데이터
                            label:['진학자'] , //차트 제목
                            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                            data: [ //x축 label에 대응되는 데이터 값
                            	after[0],after[1],after[2]
                          
                            ],
                            backgroundColor: [
                                //색상
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)',
                            ],

                        },
                 
                    ],
                    
                    

                },
                                options: {
                						//제목 부분
					                    title: {
					          	          display: true,
					          	          text: '졸업 후 상황',
					          	        fontStyle:'bold',
					          	        fontSize:16,
					          	        },
              	                        legend: {
                  	                            display: true,
                  								position: 'bottom',
                  	                        }
					        			,
                	                    plugins: {

                	                    }
					        			
// 					      값 고정으로 뜨게하는 부분 
        			, tooltips: {
        				enabled: true //마우스 올렸을 시 값 나오는 지 여부
        			},
        			hover: {
        				animationDuration: 0
        			}
        			,


                	                }

               });
</script>

<script type="text/javascript">

			const fieldItem = "<c:out value='${majorList[0].fieldItem}'/>";
			const fieldData = "<c:out value='${majorList[0].fieldData}'/>";
			
			const Item = fieldItem.split("@");
			const Data = fieldData.split("@");

            var context = document
                .getElementById('myChart4')
                .getContext('2d');
            var myChart = new Chart(context, {
                type: 'pie', // 차트의 형태
                data: { // 차트에 들어갈 데이터
                    labels: [
							Item[0],Item[1],Item[2],Item[3],Item[4],Item[5],Item[6],Item[7],Item[8],Item[9],
						
                    ],
                    
                    datasets: [
                        { //데이터
                            label:[''] , //차트 제목
                            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                            data: [ //x축 label에 대응되는 데이터 값
                            	
                            Data[0],Data[1],Data[2],Data[3],Data[4],Data[5],Data[6],Data[7],Data[8],Data[9],
        					
                          
                            ],
                            backgroundColor: [
                                //색상
                                'rgb(255, 99, 132)',
                                'rgb(255, 159, 64)',
                                'rgb(255, 205, 86)',
                                'rgb(75, 192, 192)',
                                'rgb(54, 162, 235)',
                                'rgb(153, 102, 255)',
                                'rgb(000, 255, 255)',
                                'rgba(204, 255, 000)',
                                'rgba(102, 204, 102)',
                                'rgba(255, 102, 102)',
                            ],

                        },
                 
                    ],
                },
                                options: {
                						//제목 부분
					                    title: {
					          	          display: true,
					          	          text: '졸업 후 첫 직업분야',
					          	        fontStyle:'bold',
					          	      	fontSize:16,
					          	        },
              	                        legend: {
                  	                            display: true,
                  								position: 'bottom',
                  	                        }
					        			,
                	                    plugins: {

                	                    }
					        			
// 					      값 고정으로 뜨게하는 부분 
        			, tooltips: {
        				enabled: true //마우스 올렸을 시 값 나오는 지 여부
        			},
        			hover: {
        				animationDuration: 0
        			}
        			,


                	                }

               });
</script>

<script type="text/javascript">

			const salaryItemList = "<c:out value='${majorList[0].salaryItem}'/>";
			const salaryDataList = "<c:out value='${majorList[0].salaryData}'/>";
			
			const salaryItem = salaryItemList.split("@");
			const salaryData = salaryDataList.split("@");

            var context = document
                .getElementById('myChart5')
                .getContext('2d');
            var myChart = new Chart(context, {
                type: 'pie', // 차트의 형태
                data: { // 차트에 들어갈 데이터
                    labels: [
                    	salaryItem[1],salaryItem[2],salaryItem[3],salaryItem[4],salaryItem[5],
						
                    ],
                    
                    datasets: [
                        { //데이터
                            label:[''] , //차트 제목
                            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                            data: [ //x축 label에 대응되는 데이터 값
                            	
                            	salaryData[1],salaryData[2],salaryData[3],salaryData[4],salaryData[5],
        					
                          
                            ],
                            backgroundColor: [
                                //색상
                                'rgb(255, 99, 132)',
                                'rgb(255, 159, 64)',
                                'rgb(255, 205, 86)',
                                'rgb(75, 192, 192)',
                                'rgb(54, 162, 235)',
                                
                            ],

                        },
                 
                    ],
                },
                                options: {
                						//제목 부분
					                    title: {
					          	          display: true,
					          	          text: '졸업 후 첫 직장 월 평균 임금: '+salaryData[0]+'만원',
					          	        fontStyle:'bold',
					          	      	fontSize:16,
					          	        },
              	                        legend: {
                  	                            display: true,
                  								position: 'bottom',
                  	                        }
					        			,
                	                    plugins: {

                	                    }
					        			
// 					      값 고정으로 뜨게하는 부분 
        			, tooltips: {
        				enabled: true //마우스 올렸을 시 값 나오는 지 여부
        			},
        			hover: {
        				animationDuration: 0
        			}
        			,


                	                }

               });
</script>
<script type="text/javascript">

			const satisfactionItemList = "<c:out value='${majorList[0].satisfactionItem}'/>";
			const satisfactionDataList = "<c:out value='${majorList[0].satisfactionData}'/>";
			
			const satisfactionItem = satisfactionItemList.split("@");
			const satisfactionData = satisfactionDataList.split("@");

            var context = document
                .getElementById('myChart6')
                .getContext('2d');
            var myChart = new Chart(context, {
                type: 'pie', // 차트의 형태
                data: { // 차트에 들어갈 데이터
                    labels: [
                    	satisfactionItem[0],satisfactionItem[1],satisfactionItem[2],satisfactionItem[3],satisfactionItem[4],
						
                    ],
                    
                    datasets: [
                        { //데이터
                            label:[''] , //차트 제목
                            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                            data: [ //x축 label에 대응되는 데이터 값
                            	
                            	satisfactionData[0],satisfactionData[1],satisfactionData[2],satisfactionData[3],satisfactionData[4],
        					
                          
                            ],
                            backgroundColor: [
                                //색상
                                'rgb(255, 99, 132)',
                                'rgb(255, 159, 64)',
                                'rgb(255, 205, 86)',
                                'rgb(75, 192, 192)',
                                'rgb(54, 162, 235)',
                                
                            ],

                        },
                 
                    ],
                },
                                options: {
                						//제목 부분
					                    title: {
					          	          display: true,
					          	          text: '첫 직장 만족도',
					          	        fontStyle:'bold',
					          	      	fontSize:16,
					          	        },
              	                        legend: {
                  	                            display: true,
                  								position: 'bottom',
                  	                        }
					        			,
                	                    plugins: {

                	                    }
					        			
// 					      값 고정으로 뜨게하는 부분 
        			, tooltips: {
        				enabled: true //마우스 올렸을 시 값 나오는 지 여부
        			},
        			hover: {
        				animationDuration: 0
        			}
        			,


                	                }

               });
</script>
</body>
</html>