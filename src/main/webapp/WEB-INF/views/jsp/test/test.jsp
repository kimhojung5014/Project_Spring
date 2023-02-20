<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/test.css"> 
  <title>직업 가치관 검사</title>
</head>
<body>

  <!-- 메인 부분 -->
  <div id="mainStyle">

    <div id="mainContent">
      <div class="title">
        <p>진로 가치관 검사</p>
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
          	<form action="test" method="post">
              <p class="texttitle" >*이름과 성별을 선택해주세요</p>
            <br>
            <table id="member">
              <tr>
                <td>이름:</td>
                <td colspan="2"><input type="text" name="name"></td>
              </tr>
              <tr>
              	<td>
              		성별:
              	</td>
              	<td>
              	    남자<input type="radio" name="gender" value="100323"> 
              	</td>
              	<td>
                 	여자<input type="radio" name="gender" value="100324"> 
              	</td>
              </tr>
            </table>

          	<br>
              <p class="texttitle">1.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
         
            <br>
            <table class="testTable">
              <tr>
                <th><label><input type="radio" name="answer1" value="1" checked="checked"> 능력발휘</label></th>
                <th><label><input type="radio" name="answer1" value="2"> 자율성</label></th>
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
          
            <p class="texttitle">2.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
       
          <br>
          <table class="testTable">
            <tr>
              <th><label><input type="radio" name="answer2" value="3" checked="checked"> 창의성</label></th>
              <th><label><input type="radio" name="answer2" value="4"> 안정성</label></th>
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
          
            <p class="texttitle">3.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
       
          <br>
          <table class="testTable">
            <tr>
              <th><label><input type="radio" name="answer3" value="5" checked="checked"> 보수</label></th>
              <th><label><input type="radio" name="answer3" value="6"> 창의성</label></th>
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
          
            <p class="texttitle">4.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
       
          <br>
          <table class="testTable">
            <tr>
              <th><label><input type="radio" name="answer4" value="7" checked="checked"> 안정성</label></th>
              <th><label><input type="radio" name="answer4" value="8"> 사회적인정</label></th>
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
          
          <p class="texttitle">5.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
     
        <br>
        <table class="testTable">
          <tr>
            <th><label><input type="radio" name="answer5" value="9" checked="checked"> 자기계발</label></th>
            <th><label><input type="radio" name="answer5" value="10"> 능력발휘</label></th>
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
          
          <p class="texttitle">6.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
     
        <br>
        <table class="testTable">
          <tr>
            <th><label><input type="radio" name="answer6" value="11" checked="checked"> 사회적 인정</label></th>
            <th><label><input type="radio" name="answer6" value="12"> 보수</label></th>
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
          
        <p class="texttitle">7.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
   
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer7" value="13" checked="checked"> 자기계발</label></th>
          <th><label><input type="radio" name="answer7" value="14"> 사회적 인정</label></th>
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
          
        <p class="texttitle">8.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
   
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer8" value="15" checked="checked"> 창의성</label></th>
          <th><label><input type="radio" name="answer8" value="16"> 자율성</label></th>
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
          
      <p class="texttitle">9.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
 
    <br>
    <table class="testTable">
      <tr>
        <th><label><input type="radio" name="answer9" value="17" checked="checked"> 능력발휘</label></th>
        <th><label><input type="radio" name="answer9" value="18"> 사회봉사</label></th>
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
          
        <p class="texttitle">10.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
   
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer10" value="19" checked="checked"> 자율성</label></th>
          <th><label><input type="radio" name="answer10" value="20"> 사회적 인정</label></th>
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
          
        <p class="texttitle">11.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
  
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer11" value="21" checked="checked"> 사회봉사</label></th>
          <th><label><input type="radio" name="answer11" value="22"> 창의성</label></th>
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
            
        <p class="texttitle">12.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
  
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer12" value="23" checked="checked"> 보수</label></th>
          <th><label><input type="radio" name="answer12" value="24"> 사회봉사</label></th>
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
          
        <p class="texttitle">13.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer13" value="25" checked="checked"> 능력발휘</label></th>
          <th><label><input type="radio" name="answer13" value="26"> 창의성</label></th>
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
              
        <p class="texttitle">14.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer14" value="27" checked="checked"> 자율성</label></th>
          <th><label><input type="radio" name="answer14" value="28"> 안정성</label></th>
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
              
        <p class="texttitle">15.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer15" value="29" checked="checked"> 사회봉사</label></th>
          <th><label><input type="radio" name="answer15" value="30"> 자율성</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 사회봉사</span>	다른 사람들에게 도움이 되는 일을 하는 것입니다.</p>
            <p><span class="blue">* 자율성</span> 일하는 시간과 방식에 대해서 스스로 결정할 수 있는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

    <!-- 검사항목 1개 끝 -->  
    <!-- 검사항목 1개 시작-->
              
        <p class="texttitle">16.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer16" value="31" checked="checked"> 안정성</label></th>
          <th><label><input type="radio" name="answer16" value="32"> 보수</label></th>
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
        
        <p class="texttitle">17.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer17" value="33" checked="checked"> 사회적 인정</label></th>
          <th><label><input type="radio" name="answer17" value="34"> 창의성</label></th>
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
      
        <p class="texttitle">18.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
    
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer18" value="35" checked="checked"> 자율성</label></th>
          <th><label><input type="radio" name="answer18" value="36"> 자기계발</label></th>
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
        
        <p class="texttitle">19.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
   
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer19" value="37" checked="checked"> 사회적 인정</label></th>
          <th><label><input type="radio" name="answer19" value="38"> 능력발휘</label></th>
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
        
        <p class="texttitle">20.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
   
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer20" value="39" checked="checked"> 사회봉사</label></th>
          <th><label><input type="radio" name="answer20" value="40"> 안정성</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 사회봉사</span>다른 사람들에게 도움이 되는 일을 하는 것입니다.</p>
            <p><span class="blue">* 안정성</span>한 직장에서 오랫동안 일할 수 있는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

      <!-- 검사항목 1개 끝 -->
      <!-- 검사항목 1개 시작-->
          
        <p class="texttitle">21.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
  
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer21" value="41" checked="checked"> 보수</label></th>
          <th><label><input type="radio" name="answer21" value="42"> 능력발휘</label></th>
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
          <th><label><input type="radio" name="answer22" value="43" checked="checked"> 자기계발</label></th>
          <th><label><input type="radio" name="answer22" value="44"> 보수</label></th>
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
            
        <p class="texttitle">23.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer23" value="45" checked="checked"> 안정성</label></th>
          <th><label><input type="radio" name="answer23" value="46"> 자기계발</label></th>
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
          
        <p class="texttitle">24.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>
  
      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer24" value="47" checked="checked"> 능력발휘</label></th>
          <th><label><input type="radio" name="answer24" value="48"> 안정성</label></th>
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
          <th><label><input type="radio" name="answer25" value="49" checked="checked"> 자기계발</label></th>
          <th><label><input type="radio" name="answer25" value="50"> 사회봉사</label></th>
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
          <th><label><input type="radio" name="answer26" value="51" checked="checked"> 사회봉사</label></th>
          <th><label><input type="radio" name="answer26" value="52"> 사회적 인정</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 사회봉사</span>		다른 사람들에게 도움이 되는 일을 하는 것입니다.</p>
            <p><span class="blue">* 사회적 인정</span>  	내가 한 일을 다른 사람에게 인정받는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

          <!-- 검사항목 1개 끝 -->  
          <!-- 검사항목 1개 시작-->
              
        <p class="texttitle">27.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer27" value="53" checked="checked"> 창의성</label></th>
          <th><label><input type="radio" name="answer27" value="54"> 자기계발</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 창의성</span>		스스로 아이디어를 내어 새로운 일을 해볼 수 있는 것입니다.</p>
            <p><span class="blue">* 자기계발</span>  	직업을 통해 더 배우고 발전할 기회가 있는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

      <!-- 검사항목 1개 끝 -->  
      <!-- 검사항목 1개 시작-->
        <p class="texttitle">28.두 개 가치 중에 자신에게 더 중요한 가치를 선택하세요.</p>

      <br>
      <table class="testTable">
        <tr>
          <th><label><input type="radio" name="answer28" value="55" checked="checked"> 보수</label></th>
          <th><label><input type="radio" name="answer28" value="56"> 자율성</label></th>
        </tr>
        <tr>
          <td colspan="2">
            <p><span class="blue">* 보수</span>	일하는 시간과 방식에 대해서 스스로 결정할 수 있는 것입니다.</p>
            <p><span class="blue">* 자율성</span> 일하는 시간과 방식에 대해서 스스로 결정할 수 있는 것입니다.</p>
          </td>
        </tr>
      </table>
      <br>

      <!-- 검사항목 1개 끝 -->  
      <div class="oncenter">
        <button class="submitbutton">결과보기</button>
      </div>
      
      </form>
    </div>
    </div>
  </div>

<!-- 메인  끝-->


</body>
</html>