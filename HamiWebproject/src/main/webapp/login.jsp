<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ������</title>
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
          <a href="#"><li>���ô±�</li></a>
          <%
			String session_id = (String) session.getAttribute("id");
			if(session_id==null) {
			//user id�� �������� �Ѿ���� �ʾҴٸ� �α��� ���°� �ƴ�%>
				<a href="login.jsp"><li>�α���</li></a>
			<%}else{%>
				<a href="logout.do"><li>�α׾ƿ�</li></a>
			<%}%>
          <a href="#"><li>����������</li></a>
          <a href="reservation.jsp"><li>���� �ȳ�</li></a>
          <a href="#"><li>������ �Ұ�</li></a>
        </ul>
      </nav>
      </div>
  </header>
	<div id="container">
        <div id="loginForm">
           <h1>LOGIN</h1><hr>
              <fieldset>
                <legend>info</legend><br>
                  <div class="info">�α����� �ʿ��� ���� �Դϴ�.<br>
                    Hami�� ȸ���� �ƴϽø� ȸ�������� ���ּ���.</div><br>
                  <div class="login">
                    <form action="login.do" method="POST">
                      <p><label for="id">���̵�</label>
                        <input type="text" name="id" id="id" size="43"></p>
                      <p><label for="passwd">��й�ȣ</label>
                        <input type="password" name="passwd" id="passwd" size="43"></p>
                        <button type="submit">�α���</button>
                    </form>
                  </div>
                  <div class="join">
                    <button type="button" onclick="location.href=#">ȸ������</button>
                  </div>
              </fieldset>
          </div>
    </div>
</body>
</html>