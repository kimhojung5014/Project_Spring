<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/css/header_footer.css">
  <link rel="stylesheet" href="resources/css/login.css?12"> 
  <title>로그인 페이지</title>
</head>
<body>
<script src="resources/js/Join_Check.js?123"></script>
  <!-- 헤더 부분 -->

  <!-- 헤더 끝 -->


  <!-- 메인 부분 -->

    <div id="mainStyle">

      <div id="mainContent">
        
        <div class="textarea">
          
          <p class="title">나의 진로 추천 사이트를 방문해주셔서 감사합니다.</p><br>

          <p class="subtitle">나의 진로 추천 사이트 로그인</p>
      	 <br>
          <form action="login" id="loginForm" method="post">
            <table id="login">
              <tr>
                <td class="textleft"><p>아이디</p></td>
                
                <td><input type="text" id="userId" name="userId" placeholder="아이디 입력" autofocus ></td>
                
                <td rowspan="3"><button class="button" type="button" onclick="loginCheck()">로그인</button></td>
              </tr>
               <tr>
	            	<td></td>
	            	<td>
	            		<p></p>
	            	</td>
	            	
	            </tr>
              <tr>
                <td class="textleft"><p>비밀번호</p></td>
                <td><input type="password" id="pw" name="pw" placeholder="비밀번호 입력"  ></td>
              </tr>
	            <tr>
	            <td></td>
	            	<td>
	            	<p ></p>
	            	</td>
	            </tr>
              <tr>
                <td><a style="display: inline-block;" class="button" href ="findId">ID 찾기</a></td>
                <td><a style="display: inline-block;" class="button" href = "findPw">PW 찾기</a></td>
                <td><a style="display: inline-block;" class="button" href = "join">회원가입</a></td>
              </tr>
            </table>
          </form>

        </div>
      
      </div>

    </div>


<!-- 메인  끝-->
  <!-- 푸터 -->

</body>
</html>