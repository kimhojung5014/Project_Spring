<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/test.css"> 
  <link rel="stylesheet" href="css/header_footer.css">
  <title>직업 가치관 검사</title>
</head>
<body>
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
            <li><a href="jobList">직업 추천</a></li>
    <!-- 1번째 메뉴 끝 -->

    <!-- 2번째 메뉴 시작 -->
            <li><a id="main1_2" href="major" >학과 추천</a>   
             
            </li>
    <!-- 2번째 메뉴 끝 -->
    
    <!-- 3번째 메뉴 시작 -->
            <li><a href="test" id="main1_3" href="#">진로 가치관 검사</a>
    
            </li>
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
  <main>
  <div id="mainStyle">

    <div id="mainContent">
      <div class="title">
        <p>직업 가치관 검사</p>
      </div>
        <div class="textarea">
          <p class="subtitle">검사 진행밥법</p>
          <div class="intextarea">
            <p>직업과 관련된 두 개 가치 중에서 자기에게 더 중요한 가치에 표시하세요.
              가치의 뜻을 잘 모르겠다면 문항 아래에 있는 가치의 설명을 확인해보세요.만약 ‘능력발휘’ 보다 ‘자율성’ 이 더 중요하다면 ‘자율성’ 을 체크하세요.
              반대로, ‘능력발휘’ 가 ‘ 자율성’ 보다 중요하다면 ‘능력발휘’ 에 체크하세요.</p>
          </div>
          <p class="subtitle">검사 실시</p>
          <div class="intextarea">
            <p>문항은 <B>총 28문항</B>입니다. 직업에 관련한 다양한 가치 중에서 어떤 가치를 주요하게 만족시키고 싶은 지 알아볼 수 있습니다.
              각 번호에 있는 두 가지 가치 중에 자신에게 더 중요한 가치에 표시하세요.</p>
              <br>
              <hr>
          </div>
          <!-- 검사항목 1개 시작-->
          
            <div class="tableTitle">
              <p class="texttitle">1.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
            </div>
         
            <br>
            <table class="testTable">
              <tr>
                <th><label><input type="radio" name="answer01" value="1"> 능력발휘</label></th>
                <th><label><input type="radio" name="answer01" value="2"> 자율성</label></th>
              </tr>
              <tr>
                <td colspan="2">
                  <p><span class="blue">* 능력발휘</span> 직업을 통해 자신의 능력을 발휘하는 것입니다.</p>
                  <p><span class="blue">* 자율성</span> 일하는 시간과 방식에 대해서 스스로 결정할 수 있는 것입니다.</p>
                </td>
              </tr>
            </table>
            <br>

          <!-- 검사항목 1개 끝 -->
          <!-- 검사항목 1개 시작-->
          
          <div class="tableTitle">
            <p class="texttitle">2.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
          </div>
       
          <br>
          <table class="testTable">
            <tr>
              <th><label><input type="radio" name="answer02" value="1"> 창의성</label></th>
              <th><label><input type="radio" name="answer02" value="2"> 안정성</label></th>
            </tr>
            <tr>
              <td colspan="2">
                <p><span class="blue">* 창의성</span> 	스스로 아이디어를 내어 새로운 일을 해볼 수 있는 것입니다.</p>
                <p><span class="blue">* 안정성</span>  일하는 시간과 방식에 대해서 스스로 결정할 수 있는 것입니다.</p>
              </td>
            </tr>
          </table>
          <br>

        <!-- 검사항목 1개 끝 -->
        <!-- 검사항목 1개 시작-->
          
          <div class="tableTitle">
            <p class="texttitle">3.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
          </div>
       
          <br>
          <table class="testTable">
            <tr>
              <th><label><input type="radio" name="answer03" value="1"> 보수</label></th>
              <th><label><input type="radio" name="answer03" value="2"> 창의성</label></th>
            </tr>
            <tr>
              <td colspan="2">
              <p><span class="blue">* 보수</span>  	직업을 통해 많은 돈을 버는 것을 말합니다.</p>
              <p><span class="blue">* 창의성</span> 	스스로 아이디어를 내어 새로운 일을 해볼 수 있는 것입니다.</p>
              </td>
            </tr>
          </table>
          <br>

        <!-- 검사항목 1개 끝 -->
        <!-- 검사항목 1개 시작-->
          
          <div class="tableTitle">
            <p class="texttitle">4.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
          </div>
       
          <br>
          <table class="testTable">
            <tr>
              <th><label><input type="radio" name="answer04" value="1"> 안정성</label></th>
              <th><label><input type="radio" name="answer04" value="2"> 사회적인정</label></th>
            </tr>
            <tr>
              <td colspan="2">
                <p><span class="blue">* 안정성</span>  일하는 시간과 방식에 대해서 스스로 결정할 수 있는 것입니다.</p>
                <p><span class="blue">* 창의성</span> 	스스로 아이디어를 내어 새로운 일을 해볼 수 있는 것입니다.</p>
              </td>
            </tr>
          </table>
          <br>

        <!-- 검사항목 1개 끝 -->
        <!-- 검사항목 1개 시작-->
          
        <div class="tableTitle">
          <p class="texttitle">5.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
        </div>
     
        <br>
        <table class="testTable">
          <tr>
            <th><label><input type="radio" name="answer05" value="1"> 자기계발</label></th>
            <th><label><input type="radio" name="answer05" value="2"> 능력발휘</label></th>
          </tr>
          <tr>
            <td colspan="2">
              <p><span class="blue">* 자기계발</span>  	직업을 통해 더 배우고 발전할 기회가 있는 것입니다.</p>
              <p><span class="blue">* 능력발휘</span> 	직업을 통해 자신의 능력을 발휘하는 것입니다.</p>
            </td>
          </tr>
        </table>
        <br>

      <!-- 검사항목 1개 끝 -->
      <!-- 검사항목 1개 시작-->
          
        <div class="tableTitle">
          <p class="texttitle">6.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
        </div>
     
        <br>
        <table class="testTable">
          <tr>
            <th><label><input type="radio" name="answer06" value="1"> 사회적 인정</label></th>
            <th><label><input type="radio" name="answer06" value="2"> 보수</label></th>
          </tr>
          <tr>
            <td colspan="2">
              <p><span class="blue">* 사회적 인정</span>  	내가 한 일을 다른 사람에게 인정받는 것입니다.</p>
              <p><span class="blue">* 보수</span> 		직업을 통해 많은 돈을 버는 것을 말합니다.</p>
            </td>
          </tr>
        </table>
        <br>

      <!-- 검사항목 1개 끝 -->
      <!-- 검사항목 1개 시작-->
          
      <div class="tableTitle">
        <p class="texttitle">7.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>
   
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer07" value="1"> 자기계발</label></th>
          <th><label><input type="radio" name="answer07" value="2"> 사회적 인정</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 자기계발</span>  	직업을 통해 더 배우고 발전할 기회가 있는 것입니다.</p>
            <p><span class="blue">* 사회적 인정</span>  	내가 한 일을 다른 사람에게 인정받는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

    <!-- 검사항목 1개 끝 -->
    <!-- 검사항목 1개 시작-->
          
      <div class="tableTitle">
        <p class="texttitle">8.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>
   
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer08" value="1"> 창의성</label></th>
          <th><label><input type="radio" name="answer08" value="2"> 자율성</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 창의성</span>  	스스로 아이디어를 내어 새로운 일을 해볼 수 있는 것입니다.</p>
            <p><span class="blue">* 자율성</span>  	일하는 시간과 방식에 대해서 스스로 결정할 수 있는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

    <!-- 검사항목 1개 끝 -->
    <!-- 검사항목 1개 시작-->
          
    <div class="tableTitle">
      <p class="texttitle">9.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
    </div>
 
    <br>
    <table class="testTable">
      <tr>
        <th><label><input type="radio" name="answer09" value="1"> 능력발휘</label></th>
        <th><label><input type="radio" name="answer09" value="2"> 사회봉사</label></th>
      </tr>
      <tr>
        <td colspan="2">
          <p><span class="blue">* 능력발휘</span> 직업을 통해 자신의 능력을 발휘하는 것입니다.</p>
          <p><span class="blue">* 사회봉사</span>	다른 사람들에게 도움이 되는 일을 하는 것입니다.</p>
        </td>
      </tr>
    </table>
    <br>

    <!-- 검사항목 1개 끝 -->
    <!-- 검사항목 1개 시작-->
          
      <div class="tableTitle">
        <p class="texttitle">10.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>
   
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer10" value="1"> 자율성</label></th>
          <th><label><input type="radio" name="answer10" value="2"> 사회적 인정</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 자율성</span>  일하는 시간과 방식에 대해서 스스로 결정할 수 있는 것입니다.</p>
            <p><span class="blue">* 사회적 인정</span>		내가 한 일을 다른 사람에게 인정받는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>
  
    <!-- 검사항목 1개 끝 -->
    <!-- 검사항목 1개 시작-->
          
      <div class="tableTitle">
        <p class="texttitle">11.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>
  
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer11" value="1"> 사회봉사</label></th>
          <th><label><input type="radio" name="answer11" value="2"> 창의성</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 사회봉사</span>  다른 사람들에게 도움이 되는 일을 하는 것입니다.</p>
            <p><span class="blue">* 창의성</span>		스스로 아이디어를 내어 새로운 일을 해볼 수 있는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

    <!-- 검사항목 1개 끝 -->
    <!-- 검사항목 1개 시작-->
            
      <div class="tableTitle">
        <p class="texttitle">12.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>
  
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer12" value="1"> 보수</label></th>
          <th><label><input type="radio" name="answer12" value="2"> 사회봉사</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 보수</span>  직업을 통해 많은 돈을 버는 것을 말합니다.</p>
            <p><span class="blue">* 사회봉사</span>		다른 사람들에게 도움이 되는 일을 하는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

    <!-- 검사항목 1개 끝 -->  
    <!-- 검사항목 1개 시작-->
          
      <div class="tableTitle">
        <p class="texttitle">13.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer13" value="1"> 능력발휘</label></th>
          <th><label><input type="radio" name="answer13" value="2"> 창의성</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 능력발휘</span>  직업을 통해 자신의 능력을 발휘하는 것입니다.</p>
            <p><span class="blue">* 창의성</span>		스스로 아이디어를 내어 새로운 일을 해볼 수 있는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

    <!-- 검사항목 1개 끝 -->  
    <!-- 검사항목 1개 시작-->
              
      <div class="tableTitle">
        <p class="texttitle">14.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer14" value="1"> 자율성</label></th>
          <th><label><input type="radio" name="answer14" value="2"> 안정성</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 자율성</span> 일하는 시간과 방식에 대해서 스스로 결정할 수 있는 것입니다.</p>
            <p><span class="blue">* 안정성</span>	한 직장에서 오랫동안 일할 수 있는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

    <!-- 검사항목 1개 끝 -->  
    <!-- 검사항목 1개 시작-->
              
      <div class="tableTitle">
        <p class="texttitle">16.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer16" value="1"> 안정성</label></th>
          <th><label><input type="radio" name="answer16" value="2"> 보수</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 안정성</span> 	한 직장에서 오랫동안 일할 수 있는 것입니다.</p>
            <p><span class="blue">* 보수</span>	직업을 통해 많은 돈을 버는 것을 말합니다.</p>
          </td>
        </tr>
      </table>
      <br>

      <!-- 검사항목 1개 끝 -->  
      <!-- 검사항목 1개 시작-->
        
      <div class="tableTitle">
        <p class="texttitle">17.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer17" value="1"> 사회적 인정</label></th>
          <th><label><input type="radio" name="answer17" value="2"> 창의성</label></th>
        </tr>
        <tr>
          <td colspan="2">
          <p><span class="blue">* 사회적 인정</span>  	내가 한 일을 다른 사람에게 인정받는 것입니다.</p>
          <p><span class="blue">* 창의성</span> 	스스로 아이디어를 내어 새로운 일을 해볼 수 있는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

    <!-- 검사항목 1개 끝 -->
    <!-- 검사항목 1개 시작-->
      
      <div class="tableTitle">
        <p class="texttitle">18.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>
    
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer18" value="1"> 자율성</label></th>
          <th><label><input type="radio" name="answer18" value="2"> 자기계발</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 자율성</span> 	일하는 시간과 방식에 대해서 스스로 결정할 수 있는 것입니다.</p>
            <p><span class="blue">* 자기계발</span> 		직업을 통해 더 배우고 발전할 기회가 있는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

      <!-- 검사항목 1개 끝 -->
      <!-- 검사항목 1개 시작-->
        
      <div class="tableTitle">
        <p class="texttitle">19.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>
   
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer19" value="1"> 사회적 인정</label></th>
          <th><label><input type="radio" name="answer19" value="2"> 능력발휘</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 사회적 인정</span>  		내가 한 일을 다른 사람에게 인정받는 것입니다.</p>
            <p><span class="blue">* 능력발휘</span> 	직업을 통해 자신의 능력을 발휘하는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

    <!-- 검사항목 1개 끝 -->
    <!-- 검사항목 1개 시작-->
        
      <div class="tableTitle">
        <p class="texttitle">20.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>
   
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer20" value="1"> 사회봉사</label></th>
          <th><label><input type="radio" name="answer20" value="2"> 안정성</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 사회봉사</span>  		다른 사람들에게 도움이 되는 일을 하는 것입니다.</p>
            <p><span class="blue">* 안정성</span> 			한 직장에서 오랫동안 일할 수 있는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

      <!-- 검사항목 1개 끝 -->
      <!-- 검사항목 1개 시작-->
          
      <div class="tableTitle">
        <p class="texttitle">21.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>
  
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer21" value="1"> 보수</label></th>
          <th><label><input type="radio" name="answer21" value="2"> 능력발휘</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 보수</span>  		직업을 통해 많은 돈을 버는 것을 말합니다.</p>
            <p><span class="blue">* 능력발휘</span>  	내가 한 일을 다른 사람에게 인정받는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

    <!-- 검사항목 1개 끝 -->
    <!-- 검사항목 1개 시작-->
          
      <div class="tableTitle">
        <p class="texttitle">22.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>
  
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer22" value="1"> 자기계발</label></th>
          <th><label><input type="radio" name="answer22" value="2"> 보수</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 자기계발</span>  	직업을 통해 더 배우고 발전할 기회가 있는 것입니다.</p>
            <p><span class="blue">* 보수</span>  		직업을 통해 많은 돈을 버는 것을 말합니다.</p>
          </td>
        </tr>
      </table>
      <br>

      <!-- 검사항목 1개 끝 -->
      <!-- 검사항목 1개 시작-->
            
      <div class="tableTitle">
        <p class="texttitle">23.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer24" value="1"> 안정성</label></th>
          <th><label><input type="radio" name="answer24" value="2"> 자기계발</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 안정성</span> 	한 직장에서 오랫동안 일할 수 있는 것입니다.</p>
            <p><span class="blue">* 자기계발</span>	직업을 통해 더 배우고 발전할 기회가 있는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

        <!-- 검사항목 1개 끝 -->
        <!-- 검사항목 1개 시작-->
          
      <div class="tableTitle">
        <p class="texttitle">24.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>
  
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer24" value="1"> 능력발휘</label></th>
          <th><label><input type="radio" name="answer24" value="2"> 안정성</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 능력발휘</span>  일하는 시간과 방식에 대해서 스스로 결정할 수 있는 것입니다.</p>
            <p><span class="blue">* 안정성</span>		한 직장에서 오랫동안 일할 수 있는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

        <!-- 검사항목 1개 끝 -->
        <!-- 검사항목 1개 시작-->
            
      <div class="tableTitle">
        <p class="texttitle">25.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer25" value="1"> 자기계발</label></th>
          <th><label><input type="radio" name="answer25" value="2"> 사회봉사</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 자기계발</span>  	직업을 통해 더 배우고 발전할 기회가 있는 것입니다.</p>
            <p><span class="blue">* 사회봉사</span>			다른 사람들에게 도움이 되는 일을 하는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

    <!-- 검사항목 1개 끝 -->
    <!-- 검사항목 1개 시작-->
            
      <div class="tableTitle">
        <p class="texttitle">26.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer26" value="1"> 사회적 인정</label></th>
          <th><label><input type="radio" name="answer26" value="2"> 사회봉사</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 사회적 인정</span>  	내가 한 일을 다른 사람에게 인정받는 것입니다.</p>
            <p><span class="blue">* 사회봉사</span>		다른 사람들에게 도움이 되는 일을 하는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

          <!-- 검사항목 1개 끝 -->  
          <!-- 검사항목 1개 시작-->
              
      <div class="tableTitle">
        <p class="texttitle">27.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer27" value="1"> 자기계발</label></th>
          <th><label><input type="radio" name="answer27" value="2"> 창의성</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 자기계발</span>  	직업을 통해 더 배우고 발전할 기회가 있는 것입니다.</p>
            <p><span class="blue">* 창의성</span>		스스로 아이디어를 내어 새로운 일을 해볼 수 있는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

      <!-- 검사항목 1개 끝 -->  
      <!-- 검사항목 1개 시작-->
              
      <div class="tableTitle">
        <p class="texttitle">28.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
      </div>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer28" value="1"> 자율성</label></th>
          <th><label><input type="radio" name="answer28" value="2"> 보수</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 자율성</span> 일하는 시간과 방식에 대해서 스스로 결정할 수 있는 것입니다.</p>
            <p><span class="blue">* 보수</span>	일하는 시간과 방식에 대해서 스스로 결정할 수 있는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

      <!-- 검사항목 1개 끝 -->  
      <div class="oncenter">
        <button class="submitbutton"><a href="testResult.html" style="color: white;">결과보기</a></button>
      </div>
    </div>
    </div>
  </div>

  </main>
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