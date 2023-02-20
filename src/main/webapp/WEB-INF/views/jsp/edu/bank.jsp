<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/css/bank.css"> 
  <title>학점은행제 소개 페이지</title>
</head>
<body>
 
  <!-- 메인 부분 -->
  <div id="mainStyle">

    <div id="mainContent">
        <div class="title">
          <p>학점은행제란</p>
        </div>
        <br>
        <p class="subtitle">정의</p>
        <div class="textarea">   
            <P>
              학점은행제는 「학점인정 등에 관한 법률」에 의거하여
              학교에서 뿐만 아니라 학교 밖에서 이루어지는 다양한 
              형태의 학습 및 자격을 학점으로 인정받을 수 있도록 하고,
              학점이 누적되어 일정 기준을 충족하면 학위취득을 가능하게
              함으로써 궁극적으로 열린 학습사회, 평생학습사회를 구현하기 위한 제도입니다.
              또한 학점은행제는 평생학습체제 실현을 위한 제도적 
              기반으로서 학교교육은 물론 다종다양한 평생교육의 학습결과를
              사회적으로 공정하게 평가인정하고, 그 교육의 결과를 학교교육과 평생교육 간에 상호 인정하며,
              이들이 상호 유기적으로 연계를 맺도록 함으로써 개개인의 학습력을 극대화할 수 있도록 하는 제도입니다.
           </P>
          <div class="oncenter">
            <button class="submitbutton"><a href="https://www.youtube.com/watch?v=Hl0PnHST1YQ&feature=youtu.be" target="_blank">안내 동영상 이동</a></button>
          </div>
        </div>  
            
          <div class="textarea">
            <p class="subsubtitle">학점인정 등에 관한 법률제1조(목적)</p>
            <div class="intextarea">
              <p>이 법은 평가인정을 받은 학습과정을 마친 자 등에게 학점인정을 통하여 학력인정과 학위취득의 기회를 줌으로써 평생교육의 이념을 구현하고 개인의 자아실현과 국가사회의 발전에 이바지함을 목적으로 한다.</p>
            </div>
            <p class="subsubtitle"> 학점인정 등에 관한 법률 제8조제1항(학력인정)</p>
            <div class="intextarea">
              <p>제7조에 따라 일정한 학점을 인정받은 자는 「고등교육법」 제2조제1호에 따른 대학이나 같은 법 제2조제4호에 따른 전문대학을 졸업한 자와 같은 수준 이상의 학력이 있는 것으로 인정한다.</p>
            </div>  
          </div>

          <p class="subtitle">도입배경</p>
          <div class="textarea">
            <p>
              1995년 5월, 대통령 직속 교육개혁위원회는 열린 평생학습사회의 발전을 조성하는 새로운 교육체제에 대한 비젼을 제시하면서, 학점은행제를 제안하였으며 학점인정 등에 관한 법률 등 관련 법령을 제정하고 1998년 3월부터 시행하게 되었습니다.
            </p>
            <br>
              <ul class="blueList">
                <li>국민의 평생 학습권 보장 및 학습경험의 다양화</li>
                <li>대학교육 불수혜 집단을 위한 대안적 방식의 대학 학력 취득 기회 제공</li>
                <li>교육 부문 간 균형 발전을 위한 평생교육 이수 결과의 제도적 인정</li>
                <li>교육력 극대화를 위한 평생교육과 학교교육 간의 연계 강화</li>
              </ul>
          </div>
          <br>
 
      <p class="subtitle">이용대상</p>
          <div class="textarea">
            <div class="oncenter">
              <p class="miniTitle">고등학교 졸업자 또는 동등 이상의 학력을 가진 사람은<br> 
              누구나 학점은행제를 이용할 수 있습니다.</p>
            </div>   
            <br>

            <table class="tableListBox">
              <tr>
                <td>
                  <ol class="tablelist">
                    <li>만학의 꿈을 준비하고자 하는경우</li>
                    <li>새로운 전공분야를 공부하고자 하는 경우</li>
                    <li>중도 포기한 학업을 지속하고자 하는 경우</li>
                    <li>대학원 진학 준비를 위한 학위취득을 하고자 하는 경우</li>
                  </ol>
                </td>
                
                <td>
                  <ol class="tablelist" start="5">
                    <li>자격증을 학점으로 인정받고자 하는 경우</li>
                    <li>국가무형문재 전수교육을 학점으로 인정받고자 하는 경우</li>
                    <li>자격증 취득을 하고자 하는 경우</li>
                    <li>시험응시를 위한 자격요건을 충족하고자 하는 경우</li>
                  </ol>
                </td>
              </tr>
            </table>
          </div>
          <br>
          
       <p class="subtitle">학점은행제와 대학교의 차이</p>
         <!--테이블 시작  -->
       <div class="textarea">
         <table id="defferTable" >

          <tbody>
            <tr>
              <th colspan="2" class="thcolor">학점은행제/대학교 같은 점</th>
            </tr>
            <tr>
              <td colspan="2">
                <p class="oncenter">
                  <b>
                  1.학위취득 시 법적으로 동일한 학력을 인정받음.&nbsp;
                  2.각종 자격 취득, 취업, 진학 가능함.&nbsp;
                  3.전공을 선택해야 함.&nbsp;
                  4.2월, 8월 학위를 수여함.
                  </b>
                </p>
              </td>
            </tr>
            <tr>
              <th colspan="2" class="thcolor">차이점</th>
            </tr>
            <tr>
              <th class="thcolor2">
               학점은행제
              </th>
              <th class="thcolor2">
                대학교
              </th>
            </tr>
            <tr>
              <td class="listInTd">
                <ul class="tablelist">
                  <li>[학점인정 등에 관한 법률]에 의거 운영·진입 장벽이 낮음.</li>
                  <li>표준 교육과정을 기준으로 스스로 필요한 학점 이수</li>
                  <li>다양한 학점취득방법 존재.</li>
                  <li>전문학사, 학사, 전문학사 타전공, 학사 타전공 과정이 있음.</li>
                  <li>필요한 등록(신청)절차를 이행해야 함. [-학습자 등록, 학점인정 신청, 학위 신청]</li>
                  <li>등록에 따른 수수료 발생 [-학습자등록(4,000원), -학점인정신청 (1학점 당 1,000원)]</li>
                </ul>
              </td>
              <td class="listInTd">
                <ul  class="tablelist">
                  <li>대학교 학칙에 따라 운영</li>
                  <li>수능 등 입학전형을 통해 입학</li>
                  <li>입학정원 등 정해져 있음.</li>
                  <li>학교에서 제공하는 교육과정</li>
                  <li>부(복수)전공 과정이 있음.</li>
                  <li>입학금, 등록금 납부</li>
                  <li>캠퍼스가 있음.</li>
                  <li>입학, 졸업 존재, 정해진 졸업연한.</li>
                </ul>
              </td>
            </tr>
          </tbody>
         </table>
         <!--테이블 끝  -->
       </div>

    </div>
   
  </div>

<!-- 메인  끝-->
 

</body>
</html>