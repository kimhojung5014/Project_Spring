<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 내부 화면</title>
  <link rel="stylesheet" href="/css/inToBoard.css"> 
  <link rel="stylesheet" href="/css/page.css">
</head>
<body>
  <script src="/js/jquery-3.6.3.min.js"></script>
  <script src="/js/write.js"></script>
  
<div id="mainStyle">

    <div id="mainContent">

      <div class="textarea">
        
		  <!--작성자, 작성일시, 댓글 미구현          -->
        
          <!-- 카테고리 드랍다운 -->
          
          <p class="submitbutton" id="category">${boardVo.category }</p>
           
          <br>
          <!-- 제목  제목 밑에 작성자 작성일시  -->
          <span id="title" class="title" >${boardVo.title }</span>
         
          <ul id="titleList">
          	<li>${boardVo.writer}</li>
          
          	<li>${boardVo.writingTime }</li>
          
          	<li><span>조회수: </span>${boardVo.views }</li>
          </ul>

          <!-- 글 내용 적을 곳 -->
		<div class="textareaContent" >
            <p>${boardVo.content }</p>
        </div>
        <br>
        <c:if test="${boardVo.userId eq userData.userId }">
	        <div class="oncenter">
	        <form action="boardEdit" method="get">
		<!--  컨트롤러에서 객체로 받으려고 전부 다 보냄 -->
	          <input type="hidden" name="category" value="${boardVo.category}">	
	          <input type="hidden" name="title" value="${boardVo.title}">	
	          <input type="hidden" name="content" value="${boardVo.content}">	
	          <input type="hidden" name="writer" value="${userData.nickName}">	
	          <input type="hidden" name="userId" value="${userData.userId}">	
	          <input type="hidden" name="writingTime" value="${boardVo.writingTime}">	
	          <input type="hidden" name="writeNum" value="${boardVo.writeNum}">	

	     	   
	      	  <button class="editButton">수정</button>               
	        </form>
	        </div>
       	</c:if>
       	<br>
	 	  <p class="subsubtitle">댓글</p>
	        <div class="intextarea">
				<!--댓글 인서트 폼 -->
	        	<form action="replyInsert" method="post" id ="replyForm">
				
				<!-- 글번호를 보내줘야 처리가 가능하다.  -->
	        	<input type="hidden" name="writeNum" value="${boardVo.writeNum}">
				<!-- 일단 댓글은 부모 외래키가 없으니 기본값 0보내기 -->
     			<input type="hidden" name="parentNum" value="0">
				<!--작성자 아이디 닉네임도 보내준다 -->
	        	<input type="hidden" name="userId" value="${userData.userId }">
	        	<input type="hidden" name="nickName" value="${userData.nickName }">
	        	
	        	<!--로그인 해야만 답글달기 버튼 활성화 -->
	        	<c:if test="${userData ne null }">
		       	<table>
		       		<tr>
		       			<td><b>${userData.nickName}</b></td>
		       			
		       			<td><textarea style="padding-left: 10px;" name="content" id="replyContent" rows="3" cols="83" required="required"></textarea></td>
		       			
		       			<td><button type="button" onclick = "replyInsert()">댓글달기</button></td>
		       		</tr>
		       	</table>
		       	</c:if>
		       	
		       	</form>
				<!--댓글 반복문 페이지번호에 있는 댓글 전부 출력  -->
    		    <c:forEach var="reply" items="${replyList}" varStatus="status">
		        	<table class="comment">
						<tr>
							<c:if test="${reply.parentNickName ne null }">
		           			<th style="padding-left: 20px;">
								<p>&nbsp;&nbsp;&nbsp;<b style="color: silver;">@${reply.parentNickName }</b></p>
			           			${ reply.nickName}
		           			</th>
							</c:if>
							
							<c:if test="${reply.parentNickName eq null }">
		           			<th>${ reply.nickName}</th>
							</c:if>
							
						<!-- 글 속성을 input readonly로 해서 값 불러오고 수정시 readonly 풀며 될 듯 -->
		           			
		           			<td>${reply.commentDate}</td>
						<!--로그인 해야만 답글달기 버튼 활성화 -->
		           		<c:if test="${userData ne null }">
		           		 	<td><button type="button" class="insertButton"  onclick="choose(${status.index})">답글달기</button></td>
						</c:if>
						<c:if test="${userData.userId  eq  reply.userId}">
							<td>
								<input type="button" class="editButton" name="replyEdit" onclick="replyEdit(${status.index},${reply.commentNum },${boardVo.writeNum })" value="수정">
							</td>
							<td><button class="deleteButton" onclick="chooseDelete(${reply.commentNum},${boardVo.writeNum})">삭제</button></td>
						</c:if>
						</tr>
						
						<c:if test="${reply.parentNum ne 0 }">
						<tr >
						<td colspan="3" >

							<textarea style="border: none; padding-left: 80px;" name="replyContent" class="recontent"  required="required" maxlength="1000" rows="3" cols="83" readonly="readonly" >${reply.content}</textarea>
						</td>
						
						</tr>
						</c:if>
						
						<c:if test="${reply.parentNum eq 0 }">
						<tr >
						<td colspan="3" >
							<textarea style="border: none; padding-left: 30px;" name="replyContent" class="recontent"  required="required" maxlength="1000" rows="3" cols="83" readonly="readonly">${reply.content}</textarea>
						</td>
						
						</tr>
						</c:if>
					</table>

						<!-- 대댓글 작성 부분 버튼 누르면 활성화, 현재 name 배열 설정 안잡아서 맨 위에 글로 날아감 -->
		           		<table class="reply">
		               		<tr >
		               			<td><b>${userData.nickName}</b></td>
		               			<td>
						       		<form action="replyInsert" method="post" NAME ="rereplyForm" >
						<!--세션에 있는 id, nickname 파라메터로 보낸다. 컨트롤러에서 userData 세션 객체 받아도 된다.
							상위 댓긋의 댓글 번호도 보내서 값 parentNum에 세팅			   -->
						       		<input type="hidden" name="userId" value="${userData.userId }">
						       		<input type="hidden" name="nickName" value="${userData.nickName }">
									<input type="hidden" name="parentNum" value="${reply.commentNum }">
									<input type="hidden" name="parentNickName" value="${reply.nickName}">
									<input type="hidden" name="writeNum" value="${boardVo.writeNum}">
									<!--  날짜는 객체 매핑하려고 보냄 -->
			               				<textarea name="content" class="recontent"  required="required" maxlength="1000" rows="2" cols="83" ></textarea>
										<!-- 글자수 체크 메소드 실행시 폼 서밋을 js 에서 못하는 경우가 생겨서 일단 maxlength로 글자 제한 검 -->
					              		<button type="button" onclick="rereplyInsert(${status.index})">완료</button>
		           					</form>
		           				</td>
		               		</tr>
		           		</table>
		       </c:forEach>
				 <br>

	        </div>
      <!-- 아래 페이지 넘버 부분 -->

        <div class="pageInfo_area" >
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
   			<input type="hidden" name="writeNum" value="${boardVo.writeNum }"> 
	</form>
		        <!-- 페이지 넘버부분 끝 -->
      </div>
    </div>
    
  </div>
<script type="text/javascript">
$(".pageInfo a").on("click", function(e){
	let moveForm = $("#moveForm");
    e.preventDefault();
    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
    moveForm.attr("action", "inToBoard");
    moveForm.submit();
    
});
</script>
</body>
</html>