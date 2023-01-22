//비밀번호 재설정

function resetPw(password) {
	const pw = password;
	console.log(pw)
	if (document.getElementById("pw").value === pw) {
		alert("기존 비밀번호와 같습니다.")
	}
	else if (pw_Check() && pw_Regular_Check() && document.getElementById("pw").value != pw) {
		document.getElementById('resetPwForm').submit();
	}
	else {
		alert("비밀번호 양식을 확인해주세요.")
	}
}
// 비밀번호 동일한지 체크하는 메소드
function pw_Check() {
	/* 비밀번호, 비밀번호 확인 입력창에 입력된 값을 비교해서 같다면 비밀번호 일치, 그렇지 않으면 불일치 라는 텍스트 출력.*/
	/* document : 현재 문서를 의미함. 작성되고 있는 문서를 뜻함. */
	/* getElementByID('아이디') : 아이디에 적힌 값을 가진 id의 value를 get을 해서 password 변수 넣기 */
	const password = document.getElementById('pw');					//비밀번호 
	const passwordConfirm = document.getElementById('pwCheck');	//비밀번호 확인 값
	const pwMsg = document.getElementById('pwMsg');				//확인 메세지
	const correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
	const wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
		
		if(password.value == pwCheck.value){//password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
			pwCheckMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
			pwCheckMsg.innerHTML ="비밀번호 일치";/* innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것. */
			return true;
		}else{
			pwCheckMsg.style.color = wrongColor;
			pwCheckMsg.innerHTML ="비밀번호 불일치";
		
		}
	}


//비밀번호 글자 수 체크
//비밀번호 정규식 체크 ^[a-zA-Z\\d`~!@#$%^&*()-_=+]{8,24}$
//비밀번호 안먹으니 나중에
function pw_Regular_Check(){

	const password =  document.getElementById("pw");
	const pwMsg = document.getElementById("pwMsg");
	const correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
	const wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
	  const  pattern = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/; // 특수문자 / 문자 / 숫자 포함 형태의 8~15자리 이내의 암호 정규식 ( 3 가지 조합)
	  
	  if(pattern.test(password.value)){
		  pwMsg.style.color = correctColor;
		  pwMsg.innerHTML = "OK";
			return true;
		  
	  }
	  else{
		  pwMsg.style.color = wrongColor;
		  pwMsg.innerHTML = "특수문자, 숫자, 영어 포함<br> 8-15자리 이내로 작성해주세요.";	
	      
	}
	}

//아이디 정규식
function id_Check(){

	const id =  document.getElementById("userId");
	const idMsg = document.getElementById("idMsg");
	const correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
	const wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
	const pattern =/^[A-Za-z]{1}[A-Za-z0-9]{4,20}$/; // 첫글자는 문자만 가능 뒤는 상관 없고 글자수는 5-20
	  if(pattern.test(id.value)){
		  	idMsg.style.color = correctColor;
			idMsg.innerHTML = "OK!";
			return true;
	  }else{
		  	idMsg.style.color = wrongColor;
			idMsg.innerHTML = "첫글자는 영어로 하고 , 5 ~ 20 글자 특수문자 제외 입력";
			return false;
			
	  }
	}
//아이디 중복체크 누르면 id를 컨트롤러로 보내서 확인함
function id_overlap() {
	if (id_Check()) {
		const id =  document.getElementById("userId");
		document.location.href = "idCheck?userId="+id.value;
		
	}else {

		alert("아이디 글자수를 확인해주세요.");
	}
	
}

//아이디 중복 체크 후 수정 버튼 누르면 readOnly 속성 지우고 id값도 초기화 
function id_edit() {
	
	const sure = confirm("아이디를 수정하시겠습니까?");
	const button = document.getElementById("editIdBbutton");
	const idMsg = document.getElementById("idMsg");
	if (sure) {
		// 리드 온리 속성 해제
		const id = document.getElementById("userId");
		id.readOnly = false;
		// 세션에서 불러온 id 값 초기화
		id.value = "";
		// 아이디 required 선언
		id.required = true;
		//버튼 텍스트 수정에서 중복체크로 변경
		button.value = "중복체크";
		//기존 클릭 이벤트 메소드 삭제
		button.onclick = null;
		//새로운 클릭 이벤트 메소드(아이디 중복체크) 설정   
		button.addEventListener("click",id_overlap);
		//키입력시 실시간 아이디 글자수 체크
		id.addEventListener("keyup",id_Check);
	}
}
//회원가입용 
//닉네임 중복 체크 후 수정 버튼 누르면 readOnly 속성 지우고 id값도 초기화 
function nickName_edit() {
	
	const sure = confirm("닉네임을 수정하시겠습니까?");
	const button = document.getElementById("editNickNameBbutton");
	if (sure) {
		// 리드 온리 속성 해제
		const nickName = document.getElementById("nickName");
		nickName.readOnly = false;
		// 세션에서 불러온 닉네임 값 초기화
		nickName.value = "";		
		// 아이디 required 선언
		nickName.required = true;
		//버튼 텍스트 수정에서 중복체크로 변경
		button.value = "중복체크";
		//기존 클릭 이벤트 메소드 삭제
		button.onclick = null;
		//새로운 클릭 이벤트 메소드(닉네임 중복체크) 설정  
		button.addEventListener("click",nickName_overlap);
		//키입력시 실시간 닉네임 글자수 체크
		nickName.addEventListener("keyup",nick_Check);
	}
}
//마이페이지용
////닉네임 중복 체크 후 수정 버튼 누르면 readOnly 속성 지우고 id값도 초기화 
function nickName_edit_MyPage() {
	
	const sure = confirm("닉네임을 수정하시겠습니까?");
	const button = document.getElementById("editNickNameBbutton");
	if (sure) {
		// 리드 온리 속성 해제
		const nickName = document.getElementById("nickName");
		nickName.readOnly = false;
		// 세션에서 불러온 닉네임 값 초기화
		nickName.value = "";		
		// 아이디 required 선언
		nickName.required = true;
		//버튼 텍스트 수정에서 중복체크로 변경
		button.value = "중복체크";
		//기존 클릭 이벤트 메소드 삭제
		button.onclick = null;
		//새로운 클릭 이벤트 메소드(닉네임 중복체크) 설정  
		button.addEventListener("click",nickName_MyPage);
		//키입력시 실시간 닉네임 글자수 체크
		nickName.addEventListener("keyup",nick_Check);
	}
}
//닉네임 2글자 이상 확인
function nick_Check(){

	const nickName =  document.getElementById("nickName");
	const nickNameMsg = document.getElementById("nickNameMsg");
	const correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
	const wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔

	const pattern =/^[A-Za-z]{1}[A-Za-z0-9]{1,20}$/; // 첫글자는 문자만 가능 뒤는 상관 없고 글자수는 5-20
	  if(pattern.test(nickName.value)){
		  nickNameMsg.style.color = correctColor;
		  nickNameMsg.innerHTML = "OK!";
			return true;
	  }else{
		  nickNameMsg.style.color = wrongColor;
		  nickNameMsg.innerHTML = "첫글자는 영어로 하고 , 2 ~ 20 글자 특수문자 제외 입력";
			return false;
			
	  }
	}
//회원가입용
function nickName_overlap() {
	
	if (nick_Check()) {
		const nickName =  document.getElementById("nickName");
		document.location.href = "nickNameCheck?nickName="+nickName.value+"&page=join";

	}else {
		alert("닉네임 글자수를 확인해주세요.");
	}
}
//마이페이지용
function nickName_MyPage() {
	
	if (nick_Check()) {
		const nickName =  document.getElementById("nickName");
		document.location.href = "nickNameCheck?nickName="+nickName.value+"&page=mypage";

	}else {
		alert("닉네임 글자수를 확인해주세요.");
	}
}

//이름 길이 체크
function name_Check(){

	const userName =  document.getElementById("userName");
	const userNameMsg = document.getElementById("userNameMsg");
	const correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
	const wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
	const regKor = /^[가-힣]{2,20}$/;//한글이름 2~10글자
	const regEng = /^[a-zA-Z]{2,20}$/;//영어이름 2~20글자
	
	  if(regKor.test(userName.value)){ //한글이름 체크
		  userNameMsg.style.color = correctColor;
		  userNameMsg.innerHTML = "Ok!";
		  return true;
		  
	  }else if (regEng.test(userName.value)) { // 영어 이름 체크
		  userNameMsg.style.color = correctColor;
		  userNameMsg.innerHTML = "Ok!";
		  return true;			
	  }else {
		  userNameMsg.style.color = wrongColor;
		  userNameMsg.innerHTML = "영어, 한글 중 택해서 2~20글자 이내로 입력해주세요.";
		  return false;
	  }
	}
//이메일 주소 정규식 
function eMail_Check() {
	const correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
	const wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
	const eMail = document.getElementById("eMail");
	const eMailMsg = document.getElementById("eMailMsg");
	const regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	if (regExp.test(eMail.value)) {
		eMailMsg.style.color = correctColor;
		eMailMsg.innerHTML = "OK!";
		return true;
	}else {
		eMailMsg.style.color = wrongColor;
		eMailMsg.innerHTML = "이메일을 확인해주세요.";
	}
}

//전화 번호 정규식
function tel_Check() {
	const correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
	const wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
	const telNumber = document.getElementById("telNumber");
	const telMsg = document.getElementById("telMsg");
	const regExp = /01[016789]-?[0-9]{4}-?[0-9]{4}/; // 전화번호 정규식 
	if (regExp.test(telNumber.value)) {
		telMsg.style.color = correctColor;
		telMsg.innerHTML = "OK!";
		return true;
	}else {
		telMsg.style.color = wrongColor;
		telMsg.innerHTML = "전화번호를 확인해주세요.";
	}
}
//회원가입에서 최종 확인시 쓰는 메소드 다른 메소드가 전부 참이면 인서트 컨트롤러로 값 넘김
function final_Check() {
	
	const idCheck = document.getElementById("userId");
	const nickCheck =document.getElementById("nickName");
	

	if (idCheck.readOnly  != true ) {
		alert("아이디 중복체크를 해주세요");
	}else if(nickCheck.readOnly  != true ){
		alert("닉네임 중복체크를 해주세요");
	}else if(pw_Check() && pw_Regular_Check()&& eMail_Check() && tel_Check() && name_Check() &&
			idCheck.readOnly  == true && nickCheck.readOnly  ==  true ){
		alert("회원가입에 성공하였습니다.");
		document.getElementById('joinForm').submit();
	}else {
		alert("모든 항목을 입력해주세요");
	}
}

//마이페이지에서 수정 시 쓰는 메소드
function myPage_final_Check() {

	const nickCheck =document.getElementById("nickName");
	
	if (pw_Check() && pw_Regular_Check()  && name_Check() && eMail_Check() && tel_Check()
		&& nickCheck.readOnly  ==  true) {
		
		alert("정보수정이 완료되었습니다.");
		document.getElementById('editForm').submit();
	}else {
		alert("모든 항목을 입력해주세요");
	}
}

//아이디 검색 메소드
function searchId() {
	if (name_Check() && eMail_Check() && document.getElementById('telNumber').value == "") {
		
		document.getElementById('searchIdForm').submit();
		
	}else if (name_Check() && tel_Check() && document.getElementById('eMail').value == "") {
		
		document.getElementById('searchIdForm').submit();
		
	}else if (name_Check() && eMail_Check() && tel_Check()) {
		alert("전화번호, 이메일중 1개만 입력해주세요")
	}
	else {
		alert("내용을 입력해주세요");
	}
}
//비밀번호 검색 메소드
function searchPw() {
	if (id_Check() && eMail_Check() && document.getElementById('telNumber').value == "") {
		
		document.getElementById('searchPwForm').submit();
		
	}else if (id_Check() && tel_Check() && document.getElementById('eMail').value == "") {
		
		document.getElementById('searchPwForm').submit();
		
	}else if (id_Check() && eMail_Check() && tel_Check()) {
		alert("전화번호, 이메일중 1개만 입력해주세요")
	}
	else {
		alert("내용을 입력해주세요");
	}
}

function loginCheck() {
	
	let id = document.getElementById("userId").value.length;
	let pw = document.getElementById("pw").value.length;
	
	if (id == 0 || pw == 0 || id > 20 || pw >15 ) {
		alert("아이디 비밀번호를 확인해주세요.");
	} else {
		document.getElementById("loginForm").submit();
	}
}