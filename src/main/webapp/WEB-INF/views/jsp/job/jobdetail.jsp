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
  <link rel="stylesheet" href="/css/jobdetail.css?1"> 
  <title>직업 상세 정보 화면</title>
</head>
<body>


  <!-- 메인 부분 -->
  <div id="mainStyle">
    <div id="mainContent">
      <div class="textarea">
      <p class="title">직업정보: <span style="color:rgb(54, 82, 168);">${jobData.job }</span></p>
      <p class="subtitle">직업개요</p>
      <div class="intextarea">
      
      <c:if test="${jobData.ability ne null}">
          <p class="subsubtitle">핵심능력</p>
          <div class="inintextarea">
          <p>${jobData.ability }</p>
          </div>  
	  </c:if>
	  
	  <c:if test="${jobData.similarJob ne null}">
          <p class="subsubtitle">유사 직업명</p>
          <div class="inintextarea">
          <p>${jobData.similarJob }</p>
          </div>
 	  </c:if>
 	  
 	  <c:if test="${jobData.major ne null}">
          <p class="subsubtitle">관련학과</p>
          <div class="inintextarea">
          
            <c:set var="majorlist" value="${fn:split(jobData.major,'과') }"></c:set>
				 
			  <c:forEach var="major" items="${majorlist }" varStatus="i">
			  <c:if test="${!i.last}"><a class="link" href="majorDetail?major=${fn:trim(major)}과">${major}과,</a></c:if>
			  <c:if test="${i.last}"><a class="link" href="majorDetail?major=${fn:trim(major)}과">${major}과</a></c:if>	 
			  </c:forEach>
          
          </div>
	  </c:if>
	  
 	  <c:if test="${jobData.capacity ne null}">
          <p class="subsubtitle">관련자격</p>
          <div class="inintextarea">
          
            <c:set var="capacitylist" value="${fn:split(jobData.capacity,',') }"></c:set>
				 
			  <c:forEach var="capacity" items="${capacitylist }" varStatus="i">
			  <c:if test="${!i.last}">${capacity}, </c:if>
			  <c:if test="${i.last}">${capacity}</c:if>	 
			  </c:forEach>
          
          </div>
	  </c:if>
          <p class="subsubtitle">하는일</p>
          <ul class="jobExplainList" >
            <c:set var="summarylist" value="${fn:split(jobData.summary,'-') }"></c:set>
			  <c:forEach var="summary" items="${summarylist }">
				 <li>${summary}</li>
			  </c:forEach>
          </ul>
          
	  <c:if test="${jobData.aptitude ne null}">
          <p class="subsubtitle">적성 및 흥미</p> 
          <ul class="jobExplainList" >
            <c:set var="aptitudelist" value="${fn:split(jobData.aptitude,'-') }"></c:set>
			  <c:forEach var="aptitude" items="${aptitudelist }">
				 <li>${aptitude}</li>
			  </c:forEach>
          </ul>
      </c:if>      
      
      <p class="subsubtitle">준비방법</p>
	  <c:if test="${jobData.preparation ne null}">
          <p class="texttitle">정규 교육과정</p> 
          <ul class="jobExplainList" >
            <c:set var="preparationlist" value="${fn:split(jobData.preparation,'-') }"></c:set>
			  <c:forEach var="preparation" items="${preparationlist }">
				 <li>${preparation}</li>
			  </c:forEach>
          </ul>
      </c:if>  
          
	  <c:if test="${jobData.certification ne null}">
          <p class="texttitle">관련 자격증</p>
          <div class="inintextarea">
          ${jobData.certification}
          </div>
      </c:if>
      
      <p class="subsubtitle">취업현황</p>
	  <c:if test="${jobData.similarJob ne null}">
          <p class="texttitle">입직 및 취업방법</p>
          <div class="inintextarea">
          ${jobData.empway}
          </div>
      </c:if>
      
	  <c:if test="${jobData.employment ne null}">
          <p class="texttitle">고용현황</p>
          <div class="inintextarea">
          ${jobData.employment}
          </div>
      </c:if>
	  <c:if test="${jobData.salery ne null}">
          <p class="texttitle">임금수준</p>
          <div class="inintextarea">
          ${jobData.salery}
          </div>
	  </c:if>
	  
	<c:if test="${jobData.reward ne null }">
		<p class="subsubtitle" >직업 전망</p>	
		<br>
		<div style="width: 100%; height: 400px;">
			<!--차트가 그려질 부분-->
			<canvas id="myChart"></canvas>
		</div>
		
			<p class="texttitle">직업 전망 설명</p>
	          <ul class="jobExplainList" >
	            <c:set var="possibilitylist" value="${fn:split(jobData.possibility,'-') }"></c:set>
				  <c:forEach var="possibility" items="${possibilitylist }">
					 <li>${possibility}</li>
				  </c:forEach>
	          </ul>
	    
	</c:if>


        </div>
      </div>
      
    </div>
  </div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script type="text/javascript">
            var context = document
                .getElementById('myChart')
                .getContext('2d');
            var myChart = new Chart(context, {
                type: 'bar', // 차트의 형태
                data: { // 차트에 들어갈 데이터
                    labels: [
                        //x 축
                        '${jobData.reward}',
                        '${jobData.employmentsecurity}',
                        '${jobData.developmentPossibility}',
                        '${jobData.workingConditions}',
                        '${jobData.professional}',
                        '${jobData.equalEmployment}',
                    ],
                    datasets: [
                        { //데이터
                            label:[''] , //차트 제목
                            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                            data: [ //x축 label에 대응되는 데이터 값
                            	'${jobData.rewardValue}',
                            	'${jobData.employmentsecurityvalue}',
                            	'${jobData.developmentPossibilityValue}',
                            	'${jobData.workingConditionsValue}',
                            	'${jobData.professionalValue}',
                            	'${jobData.equalEmploymentValue}',
                            ],
                            backgroundColor: [
                                //색상
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)',
                            ],
                            borderColor: [
                                //경계선 색상
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)',
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
        </script>
<!-- 메인  끝-->


</body>
</html>