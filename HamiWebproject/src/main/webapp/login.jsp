<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 페이지</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css">
<script>
function nav_span(){
  document.getElementById('nav-icon').classList.toggle('open');
  document.getElementById('nav').classList.toggle('open');
}
</script>
</head>
<body>
	<header>
    <div id="lineheader">
    <div id="title"><a href="index.jsp"><img src="${pageContext.request.contextPath}/resources/img/title.png"/></a></div>
    <div id="nav-icon" onClick="nav_span()">
      <span></span>
      <span></span>
      <span></span>
    </div>
      <nav id="nav">
        <ul>
          <a href="#"><li>오시는길</li></a>
          <%
			String session_id = (String) session.getAttribute("id");
			if(session_id==null) {
			//user id가 세션으로 넘어오지 않았다면 로그인 상태가 아님%>
				<a href="login.jsp"><li>로그인</li></a>
			<%}else{%>
				<a href="logout.do"><li>로그아웃</li></a>
			<%}%>
          <a href="#"><li>마이페이지</li></a>
          <a href="reservation.jsp"><li>예약 안내</li></a>
          <a href="#"><li>선생님 소개</li></a>
        </ul>
      </nav>
      </div>
  </header>
	<div id="container">
        <div id="loginForm">
          <div class="info">
            <h1 id="login_header">LOGIN</h1>
            로그인이 필요한 서비스 입니다.<br>
            Hami의 회원이 아니시면 회원가입을 해주세요.
          </div>
          <div class="login">
              <form action="login.do" method="POST">
                <div class="form_wrap">
                  <div class="input_wrap">
                    <input type="text" name="id" id="id" value placeholder="아이디를 입력해주세요">
                  </div>
                  <div class="input_wrap">
                    <input type="password" name="passwd" id="passwd" value placeholder="비밀번호를 입력해주세요">
                  </div>
                    <input type="submit" class="submit_btn" value="로그인">
                </div>
              </form>
        </div>
      </div>
      <div id="signinForm">
        <div class="info">
          <h1 id="signin_header">아직 해미의<br>회원이 아니신가요?</h1>
        </div>
        <div class="login">
          <input type="submit" class="signin_btn" onClick="location.href='Join.jsp';" value="회원 가입" ><!--회원가입 페이지로 이동!-->
      </div>
    </div>
</div>
</body>
</html>
