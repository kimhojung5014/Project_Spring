<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/majorresult.css"> 
  <title>학과 정보 화면</title>
</head>
<body>
<script src="/js/jquery-3.6.3.min.js"></script>
<script src="/js/majortab.js?1"></script>
 

  <!-- 메인 부분 -->
  <div id="mainStyle">
    <div id="mainContent">
      <div class="textarea">
      <p class="title">대학교: <span style="color:rgb(54, 82, 168);">${majorDto.major}</span></p>
   
      <div class="tab">
      		<button type="button" class="tab" onclick="view1()">학과 정보</button>
      		<button type="button" class="tab" onclick="view2()">개설대학</button>
      		<button type="button" class="tab" onclick="view3()">학과 전망</button>
      </div>
      <!-- 학과 정보 -->
      <div id="view1">
      <p class="subtitle">학과 정보</p>
        <div class="intextarea">
          <p class="subsubtitle">학과 개요</p>
          <div class="inintextarea">
          <p>
          	-${majorDto.summary}
          </p>
          </div>  

          <p class="subsubtitle">학과 특성</p>
          <div class="inintextarea">
          <p>
            -${majorDto.property}
          </p>
          </div>

          <p class="subsubtitle">흥미와 적성</p>
          <div class="inintextarea">
          <p>
          	-${majorDto.interest }
          </p>
          </div>

          <p class="subsubtitle">관련 고교 교과목</p>
          <ul class="jobExplainList">
  			<!-- 아래 폴문 전부 set으로 리스트 받고 for문 인덱스로 처리하면 빨라진다. -->
            <c:forEach var="subject_name" items="${fn:split(majorDto.subject_name,'@') }" varStatus="i">
            <c:forEach var="subject_description" items="${fn:split(majorDto.subject_description,'@') }" varStatus="j">
            <c:if test="${i.index eq j.index}">
              <c:if test="${!i.last }">
            <li>
              <p class="texttitle">${subject_name}</p>
             					   -${subject_description}
           
            </li>
              </c:if>
           <c:if test="${i.last }">
           <i style="text-decoration:underline;">${subject_name}</i>
           </c:if>
            </c:if>
              
             </c:forEach>
            </c:forEach>
          </ul>
          
          <p class="subsubtitle">진로 탐색 활동</p>
          <ul class="jobExplainList">
          <c:forEach var="act_name" items="${fn:split(majorDto.act_name,'@<br>') }" varStatus="i"> 
          <c:forEach var="act_description" items="${fn:split(majorDto.act_description,'@') }" varStatus="j">
          <c:if test="${i.index eq j.index}">
            <li>
			   <p class="texttitle">${act_name}</p>
			   <c:if test="${act_description ne 'null'}">
             					   -${act_description}
				</c:if>
				<c:if test="${act_description eq 'null'}">
             					  
				</c:if>
            </li>
            </c:if>
           </c:forEach>
           </c:forEach>
          </ul>
          
          <p class="subsubtitle">대학 주요 교과목</p>
          <ul class="jobExplainList">
          <c:forEach var="SBJECT_NM" items="${fn:split(majorDto.SBJECT_NM,'@') }" varStatus="i"> 
          <c:forEach var="SBJECT_SUMRY" items="${fn:split(majorDto.SBJECT_SUMRY,'@') }" varStatus="j">
          <c:if test="${i.index eq j.index}">
            <li>
              <p class="texttitle">${SBJECT_NM}</p>
              					   ${SBJECT_SUMRY}
            </li>
            </c:if>
           </c:forEach>
           </c:forEach>
          </ul>
          
          <p class="subsubtitle">관련 자격</p>
          <div class="inintextarea">
           ${majorDto.qualifications}
          </div>
          <p class="subsubtitle">관련 직업</p>
      
          <div class="inintextarea">
          <!-- 여기는 직업 있는 것, 없는 것 있으니 if 문으로 a 태그 걸기 -->
           <c:forEach var="job" items="${fn:split(majorDto.job,',') }" varStatus="i"> 
           <c:if test="${!i.last }">
          	<a class="link" href="jobDetail?job=${fn:trim(job)}">${job},</a>
           </c:if>
            <c:if test="${i.last }">
          	<a class="link" href="jobDetail?job=${fn:trim(job)}">${job}</a>
           </c:if>
           </c:forEach>
          </div>

          <p class="subsubtitle">졸업 후 진출 분야</p>
          <ul class="jobExplainList">
          <c:forEach var="gradeuate" items="${fn:split(majorDto.gradeuate,'@') }" varStatus="i"> 
          <c:forEach var="description" items="${fn:split(majorDto.description,'@') }" varStatus="j">
          <c:if test="${i.index eq j.index}">
            <li>
              <p class="texttitle">${gradeuate}</p>
              					   ${description}
            </li>
            </c:if>
           </c:forEach>
           </c:forEach>
          </ul>

        </div>
	
      </div>
     <!-- 학과 정보 끝 -->
     
	 <!-- 개설 대학 시작-->
	 <div id="view2">
	       <p class="subtitle">개설 대학</p>
	       
	       <c:if test="${majorDto.area ne null }">
	       
           <table id="univerTable" border="1">
           <caption class="subsubtitle">대학 목록</caption>
           <tr>
           		<th>대학명</th>
           		<th>지역</th>
           		<th>학과</th>
           </tr>
           <c:set var="area" value="${fn:split(majorDto.area,'@') }"/>
           <c:set var="schoolURL" value="${fn:split(majorDto.schoolURL,'@') }"/>
           <c:set var="campus_nm" value="${fn:split(majorDto.campus_nm,'@') }"/>
           <c:set var="majorName" value="${fn:split(majorDto.majorName,'@') }"/>
           <c:set var="schoolName" value="${fn:split(majorDto.schoolName,'@') }"/>
           <c:forEach var="a" begin="0" end="${fn:length(area)}" varStatus="i"> 
           <c:if test="${schoolURL[i.index] ne null}">
           <tr>
           		<td><a id="schoolName" href="${schoolURL[i.index]}" target="_blank">${schoolName[i.index]}(${campus_nm[i.index]})</a></td>
           		<td>${area[i.index] }</td>
           		<td>${majorName[i.index] }</td>
           </tr>
           </c:if>
           </c:forEach>
    
           </table>
           
           </c:if>
           <c:if test="${majorDto.area eq null }">
           	 <h3 style="text-align: center;">대학 정보가 없습니다.</h3>
           </c:if>
	 </div>
	 <!-- 개설 대학 끝 -->
	 
	 <!-- 학과 전망 시작 -->
	 <div id="view3">
 		<p class="subtitle" >학과 전망</p>
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
	 <!-- 학과 전망 끝 -->
	</div>
    </div>
  </div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<!--입학 상황-->
<script type="text/javascript">
			const applicantData = "<c:out value='${majorDto.applicantData}'/>";
			
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
					        						max:60000,
					        						stepSize : 10000,
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
			const employmentData = "<c:out value='${majorDto.employmentData}'/>";
			
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
			const afterData = "<c:out value='${majorDto.afterData}'/>";
			
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
           //졸업 후 상황

			const fieldItem = "<c:out value='${majorDto.fieldItem}'/>";
			const fieldData = "<c:out value='${majorDto.fieldData}'/>";
			
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
           //졸업 후 상황

			const salaryItemList = "<c:out value='${majorDto.salaryItem}'/>";
			const salaryDataList = "<c:out value='${majorDto.salaryData}'/>";
			
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
           //졸업 후 상황

			const satisfactionItemList = "<c:out value='${majorDto.satisfactionItem}'/>";
			const satisfactionDataList = "<c:out value='${majorDto.satisfactionData}'/>";
			
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
<!-- 메인  끝-->



</body>
</html>