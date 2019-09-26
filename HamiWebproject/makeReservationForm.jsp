<%@ page language="java" contentType="text/html; charset=EUC-KR"
    	 pageEncoding="EUC-KR"%>
<%@ page import="com.company.hami.booking.BookingDAO" %>
<%@ page import="com.company.hami.booking.BookingVO" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/makeReservationForm.css">
<script>
    function form_verifing(){
    	if(document.bookingForm.id.value!=""){
    		document.bookingForm.submit();
    	}
    }
</script>
</head>
<body>
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
        <div id="info">
           <h1>Hami ����ȳ�</h1><hr>
                    <ul>
                      <li>* &nbsp; Hami�� �ùٸ� ���๮ȭ�� ���� <span>�����</span>�� �ް� �ֽ��ϴ�.</li>
	            			  <li>* &nbsp; ������� ��ü �̿�ݾ׿��� <span>����</span>�˴ϴ�. </li>
	            			  <li>* &nbsp; <span>���� ��ҳ� ����</span>�� Hami�� �����ּ���.</li>
                    </ul>
                  </div>

                  <div id="bookingForm">
                    <form name="bookingForm" action="makereservation.do" method="post">
    	            		<input type="hidden" name="res_year">
    	            		<input type="hidden" name="res_date">
    	            		<input type="hidden" name="res_time">
    	            		
    	             <p><label for="prepayment">������</label>
                        <input type="text" name="prepayment" id="prepayment" size="43"></p>	
                      <p><label for="id">��ȣ�� ID</label>
                        <input type="text" name="id" id="id" size="43"></p>
                      <p><label for="d_name">�ݷ��� �̸�</label>
                        <input type="text" name="d_name" id="d_name" size="43"></p>
                      <p><label for="passwd">�ݷ��� ������ </label>
                        <select name="d_weight">
                          <option selected>--�������ּ���--</option>
                          <option value="1"> ~5kg </option>
                          <option value="2"> 5kg ~ 10kg </option>
                          <option value="3"> 10kg ~ 15kg </option>
                        </select></p>
                      <p><label style="display:block;" for="demend">��û����</label>
                        <textarea name="demend" id="demend" rows="10" cols="50"></textarea>

                  <div class="rsvt">
                    <button type="button" onclick="form_verifing()">�����ϱ�</button>
                  </div>
			</form>
          </div>
    </div>  
    </body>
</body>
</html>
