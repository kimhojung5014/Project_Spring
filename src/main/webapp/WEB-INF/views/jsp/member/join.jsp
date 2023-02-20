<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/join.css?aa"> 
  <title>회원가입 페이지</title>
</head>
<body>
<script src="/js/Join_Check.js"></script>


  <!-- 메인 부분 -->

  <div id="mainStyle">
    <div id="mainContent">
      <p class="subtitle">회원가입</p>
      

        <form action="join" method="post" name="joinForm" id ="joinForm">
        <input type="hidden" value="0" name="numId">
        <div class="textarea">
         <table id="join"> 
              	
			<c:choose>
				<c:when test="${ userId ne null }">
				<tr>
            			<td class="textleft">아이디</td>
					<td>
						<input type="text" name="userId" id="userId" value = "${userId}"  readonly>
					</td>
	             	<td>
	             	 	<input class="button" id="editIdBbutton" type="button" onclick="id_edit()" value="수정">
	             	</td>
			    </tr>
		        <tr>
	            	<td></td>
	            	<td>
	            		<p id="idMsg">아이디 변경 시 수정 버튼을 눌러주세요.</p>
	            	</td>
	            </tr>
				</c:when>
				<c:otherwise>
				<tr>
            			<td class="textleft">아이디</td>
					<td>
						<input type="text" name="userId" id="userId" placeholder="5글자 이상 입력" autofocus required onkeyup="id_Check()">
					</td>						
	             	<td>
	             	 	<input class="button" type="button" onclick="id_overlap() " value="중복체크">
	             	</td>
				</tr>
		        <tr>
	            	<td></td>
	            	<td><p id="idMsg"></p></td>
	            </tr>
				</c:otherwise>
			</c:choose>
						<c:choose>
				<c:when test="${ nickName ne null }">
				 <tr>
	             	<td class="textleft">닉네임</td>
	             	<td>
	             		<input type="text" id = "nickName" name="nickName" value="${nickName}" readonly>
	             	</td>
	             	<td>
	             	 	<input class="button" id="editNickNameBbutton" type="button" onclick="nickName_edit()" value="수정">
	             	</td>
	            </tr>
	            <tr>
	            	<td></td>
	            	<td><p id="nickNameMsg">닉네임 변경 시 수정 버튼을 눌러주세요.</p></td>
	            </tr>
				</c:when>
				<c:otherwise>
				 <tr>
	             	<td class="textleft">닉네임</td>
	             	<td>
	             		<input type="text" id = "nickName" name="nickName" value="${nickName}" placeholder="사이트에서 보여질 이름" required onkeyup="nick_Check()">
	             	</td>
	             	<td>
	             		<input class="button" type="button" onclick="nickName_overlap()" value="중복체크">
	             	</td>
	            </tr>
	            <tr>
	            	<td></td>
	            	<td><p id ="nickNameMsg"></p></td>
	            </tr>
				</c:otherwise>
			</c:choose>     
            <tr>
              <td class="textleft">비밀번호</td>
              <td><input type="password" id="pw" name="pw" placeholder="8글자 이상 입력" required onkeyup="pw_Regular_Check()">
    		   </td>
            </tr>
            <tr>
            <td></td>
            	<td>
            	<p id="pwMsg"></p>
            	</td>
            </tr>
            <tr>
              <td class="textleft">비밀번호 확인</td>
				 <td><input type="password" name="pwCheck" id="pwCheck" placeholder="비밀번호 입력" required onkeyup="pw_Check()">
                 </td>
            </tr>
            <tr>
            <td></td>
            <td><p id ="pwCheckMsg"></p></td>
            </tr>
       
            <tr>
              <td class="textleft">이름</td>
              <td><input type="text" id="userName" name="userName"required onkeyup="name_Check()"></td>
            </tr>
            <tr>
            	<td></td>
            	<td><p id ="userNameMsg"></p></td>
            </tr>
            <tr>
              <td class="textleft">이메일주소</td>
              <td>
              	<input type="text" id ="eMail" name="eMail"required onkeyup="eMail_Check()">
              </td>
            </tr>
            <tr>
            	<td></td>
            	<td><p id="eMailMsg"></p></td>
            </tr>
            <tr>
              <td class="textleft">전화번호</td>
              <td>
              	<input type="tel" id = "telNumber" name="telNumber"  required onkeyup="tel_Check()">
              </td>
            </tr>
            <tr>
            	<td></td>
            	<td><p id="telMsg"></p></td>
            </tr>
            
            
            <tr>
              <td colspan="3">
	              <button style="text-align: center;" class="button" type="button" onclick="final_Check()">회원가입</button>
	          </td>
            </tr>
          </table>
        </div>
        </form>
    </div>
  </div>


<!-- 메인  끝-->

</body>
</html>