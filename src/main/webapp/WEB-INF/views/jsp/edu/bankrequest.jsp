<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/bankrequest.css"> 
  <title>학점은행제 신청 페이지</title>
</head>
<body>
  

  <!-- 메인 부분 -->
  <div id="mainStyle">

    <div id="mainContent">
      

          <h2 class="subtitle">학습자, 학점 신청</h2>  
          
          <div class="textarea">
            <p class="title">신청 절차</p>
            <img src="resources/image/학점등록.png" alt="" width="100%">
            <br><br>
            <p class="title">신청기간 및 방법</p>
            <br>
            <p class="h3st" style="background-color:skyblue;">온라인 신청</p>
              <table id="centerTable">
                <tr>
                  <th><p class="sq">1분기: 12월 ~ 1월</p></th>
                  <th><p class="sq">2분기: 4월</p></th>
                  <th><p class="sq">3분기: 6월 ~ 7월</p></th>
                  <th><p class="sq">4분기: 10월</p></th>
                </tr>
              </table>
            <br>
              <p class="h3st" style="background-color:rgb(64, 208, 160);">방문 신청</p>
            <br>

            <div class="intextarea">
              <ul style="list-style-type:disc; line-height: 30px;">
                <li>국가평생교육진흥원 6층 학점은행센터 평일(월~금) 09:00~17:00함(토·일, 공휴일 제외)</li>
                <li>시·도 교육청 방문접수는 평일(월~금) 09:00~16:00까지 접수함
                  (점심시간, 토·일, 공휴일 제외)</li>
              </ul>
            </div>

            <br>

            <p class="title">신청 구분별 수수료 및 결제 방법</p>
            <br>
            <table class="tablest">
              <tr>
                <th>구분</th>
                <th>학습자등록 신청</th>
                <th>학정인정 신청</th>
              </tr>
              <tr>
                <td>신청 수수료</td>
                <td>4,000원</td>
                <td>1학점당 1,000원</td>
              </tr>
            </table>
            <br>
            <table class="tablest">
              <tr>
                <th>접수 방법</th>
                <th>결제 방법</th>
              </tr>
              <tr>
                <td>온라인 접수</td>
                <td>신용카드, 실시간 계좌이체, 가상계좌(무통장입금)</td>
              </tr>
              <tr>
                <td>국가평생교육진흥원 방문 접수</td>
                <td>신용카드, 계좌이체, 현금납부</td>
              </tr>
            </table>
            <br><br>
              
 
      <p class="title">학습자 등록 및 학점 인정 처리 절차</p>

      <img src="/image/학습자,학점 절차.png" width="100%" alt="">
      
      <p class="title">학습자 등록 및 학점인정 신청 유의 사항</p>
      <br>
        <ul class="blueList">
          <li>신청서류 및 증빙서류를 제출하지 않은 접수 건은 접수 취소 및 환불 처리됨.</li>
          <li>온라인 접수 시 최종 서류 제출일까지 도착되지 않을 경우 접수 취소 및 환불 처리됨.</li>
          <li>각종 신청에 따른 수수료 결제는 본원에서 정한 방법에 따라야 하며, 신청 수수료를 서류 봉투에 넣어 발송하는 것은 인정하지 않음(현금 분실 시 본원에서 책임지지 않으며, 우편물 등은 반환되지 않음).</li>
        </ul>
      <br><br>
      <div class="oncenter">
        <button class="submitbutton"><a href="https://www.cb.or.kr/creditbank/persInfo/nMenRegInfo.do" target="_blank" rel="noopener noreferrer">학습자 등록신청<br>바로가기</a></button>
        &nbsp;
        <button class="submitbutton"><a href="https://www.cb.or.kr/creditbank/persInfo/nCreditRegInfo.do" target="_blank" rel="noopener noreferrer">학점인정 신청<br>바로가기</a></button>
      <br><br>
      </div>      
                <!-- 여기서부터 학습자 등록, 학점 인정 취소 -->
                <p class="subtitle">학습자 등록, 학점인정 취소 신청</p>

                <br>
                <p style="text-align: center;"><i>2022.10.04(화) 10:00:00 ~ 2022.10.31(월) 18:00:00</i></p>
                <br>
                <img src="/image/학습자등록,취소.png"width="100%" alt="">
                <br><br>
                <div class="textarea">
          
                    <ul class="blueList">
                      <li>학습자등록을 취소할 경우에는 학습자등록 및 인정 받은 모든 학점이 취소되므로 이점에 유의바라겠습니다.</li>
                      <li>학습자등록 및 학점인정 취소처리가 된 경우 수수료 환불처리 기준에 따라 학점인정 신청 시 납부한 수수료 환불불가</li>
                      <li>학습자등록 및 학점인정 취소처리가 완료된 후 해당 과목을 복원하기 위해서는 새롭게 학점인정 신청 및 수수료가 부과</li>
                    </ul>
      
                </div>
                <br>
                <div class="oncenter">
                  <button class="submitbutton"><a href="https://www.cb.or.kr/creditbank/persInfo/nCdtCancelReqChkInfo.do" target="_blank">학습자 등록 및 학점인정 취소 신청 바로가기</a></button>
                </div>
                <br><br>
          <!-- 여기까지 학습자 등록 및 취소 -->
      </div>
    </div>
</div>
<!-- 메인  끝-->
  
</body>
</html>