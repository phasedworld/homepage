<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>HAMI �ع�</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
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
  <div class="bg_wrapper_1">
    <div class="bg_image_1"></div>
    <div class="bg_shadow_1"></div>
    <div class="main_content_1">�ع̴�<br>��� ��������<br>����մϴ�!</div>
  </div>
<footer>
  <div id="footer_wrap">
    <div id="company_name">Hamham Company</div>
    <div id="contact_us">
      Tel : 010-8612-1869<br>Add : ����� �������� ������� 63�� 7-2 5��
    </div>
  </div>
</footer>
</body>
</html>
