/**
 * ID 중복체크 검사하는 함수
 */
function idCheck(id){
	if(id == ""){
		alert('아이디를 입력해 주세요');
	}else{
		url = "idCheck.jsp?id="+id;
		window.open(url, "post", "width=300, height=180");
	}
}


/*
 * 우편번호 검색하는
 */
function zipCheck(){
	url = "ZipCheck.jsp?check=y";	//Get 방식으로 전송
	window.open(url, "windowZipcode", "width=500, height=700, scrollbars=yes");
}

/*
 * 데이터 입력 유무 체크 함수
 */
function inputCheck(){
	if(document.join.id.value==""){
		alert('아이디를 입력하세요');
		document.join.id.focus();
	}
	else if(document.join.passwd.value==""){
		alert('비밀번호를 입력하세요');
		document.join.passwd.focus();
	}
	else if(document.join.passwd.value != document.join.passwd_check.value){
		alert('비밀번호 재확인을 입력하세요')
		document.join.passwd_check.select();
	}
	else if(document.join.email.value==""){
		alert('이메일을 입력하세요');
		document.join.email.focus();
	}
	else if(document.join.zipcode.value==""){
		alert('우편번호를 입력하세요');
		document.join.zipcode.focus();
	}else if(document.join.address2.value==""){
		alert('상세주소를 입력하세요');
		document.join.address2.focus();
	}else{
	//서버로 데이터 전송(submit 버튼을 누른 효과)
	document.join.submit();
	}
}


function isSame() {
	//alert('isSame start');
	var passwd = document.join.passwd.value;
	var passwd_check = document.join.passwd_ck.value;
	if (passwd.length<8 || passwd.length > 16){
		document.getElementById('pwd').innerHTML='비밀번호는 6글자 이상, 16글자 이하로 입력하세요';
		document.getElementById('pwd').style.color='red';
		document.getElementById('passwd').value=document.getElementById("passwd_ck").value='';
		document.getElementById('same').innerHTML='';
	}
	if(document.getElementById('passwd').value != '' && document.getElementById('passwd_ck').value != ''){
		if(document.getElementById('passwd').value == document.getElementById('passwd_ck').value){
		document.getElementById('same').innerHTML='비밀번호가 일치합니다.';
		document.getElementById('same').style.color='green';
		}else{
			document.getElementById('same').innerHTML='비밀번호가 일치하지 않습니다.';
			document.getElementById('same').style.color='red';
		}
	}
}
