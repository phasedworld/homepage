<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Calendar cal = Calendar.getInstance(); //�̹� �� ������ ����
	Calendar cal2 = Calendar.getInstance(); //���� �� ������ ���� ���� ��¥�� ����
	cal2.set(Calendar.MONTH,-1); //���� �޷� �̵�
	
	int cal_last = cal.getActualMaximum(Calendar.DATE); //�̹� ���� ��ü ��¥
	int cal2_last = cal2.getActualMaximum(Calendar.DATE); //������ ��ü ��¥
	
	int year = cal.get(Calendar.YEAR); //2019 : ���� �⵵
	int month = cal.get(Calendar.MONTH)+1;	//9 : ���� ��
	int date = cal.get(Calendar.DATE);	//25 : ���� ��
	
	cal.set(Calendar.DATE,1);	//1�Ϸ� ��
	int first_day = cal.get(Calendar.DAY_OF_WEEK); //�Ͽ��� 1, ����� 7
	
	int cal2_days = first_day-2; //�Ͽ��� -1, ����� 5
	int prev_index = cal2_days; //�ε����� �޾ƿ� �ϳ��� ���̸� ���̳ʽ��Ѵ�.
	int cur_index = 1; //�̹����� ������
	int next_index = 1; //�������� ������
	
	String[] month_eng = {"JANUARY","FEBRUARY","MARCH","APRIL","MAY","JUNE","JULY","AUGUST","SEPTEMBER","OCTOBER","NOVEMBER","DECEMBER"};
	
	int index = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>HAMI - �����ϱ�</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<style> /*�޷� css*/
.month{
  color: black;
  font-size: 25px;
  line-height:50px;
  font-weight: bold;
  text-align:center;
}
#calendar-wrap{
  margin:0 auto;
  width: 709px;
}
body {
font-family: Tahoma;
}
.form_title{
text-align: center;
}
#calendar {
width: 720px;
height: auto;
}
/*#calendar a {
color: #8e352e;
text-decoration: none;
}*/
#calendar ul{
list-style: none;
padding: 0;
margin: 0;
width: 100%;
}
#calendar .days{
  height:85px;
}
#calendar li {
display: block;
float: left;
width: 14.342%;
padding: 5px;
box-sizing: border-box;
border: 1px solid #ddd;
margin-right: -1px;
margin-bottom: -1px;
}
#calendar ul.weekdays { /*���� ��ü ��*/
width: 708px;
height: 23px;
background: black;
}
#calendar ul.weekdays li { /*����*/
text-align: center;
text-transform: uppercase;
line-height: 20px;
border: none !important;
padding: 1px 6px;
color: white;
font-size: 13px;
}
#calendar .days li { /*��¥ �� */
width: 102px;
height: 85px;
}
#calendar .days li:hover { /*��¥ �� ȣ�� */
background: #e4f2f2;
}
#calendar .date { /*��¥ */
text-align: center;
margin-bottom: 5px;
padding: 4px;
color: #333;
width: 20px;
float: right;
}
#calendar .other-month {
background: #f5f5f5;
color: #666;
}
/* ============================
      Mobile Responsiveness
 ============================*/
@media screen and (min-width: 631px) and (max-width: 1200px) {
  #container{
    width:100%;
  }
}
/*phone*/
@media screen and (max-width:630px){
  #container{
    width:100%;
  }
  #calendar-wrap{
    width:100%;
  }
  #calendar{
    width:100%;
  }
  #calendar ul.weekdays { /*���� ��ü ��*/
  width: 100%;
  height: 23px;
  background: black;
  }
  #calendar .days{ /*��¥ �� */
  display:flex;
  height: 70px;
  }
  #calendar .days li { /*��¥ �� */
  flex-grow:1;
  height: 70px;
  }
}
</style>
<script>
function nav_span(){
  document.getElementById('nav-icon').classList.toggle('open');
  document.getElementById('nav').classList.toggle('open');
}
function selectDate(year,month,date){
	document.getElementById('year').value=year;
	document.getElementById('month').value=month;
	document.getElementById('date').value=date;
	alert("����� ������ "+year+"�� "+month+"�� "+date+"��");
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
  <div id="calendar-wrap">
           <div class="form_title">
               <h1> RESERVATION</h1>
           </div>
           <div id="calendar">
                 <div class="month"><%=month_eng[month]%> <%=year%></div>
               <ul class="weekdays">
                   <li>Sunday</li>
                   <li>Monday</li>
                   <li>Tuesday</li>
                   <li>Wednesday</li>
                   <li>Thursday</li>
                   <li>Friday</li>
                   <li>Saturday</li>
               </ul>
               <!-- Days from previous month -->
               <%
               for (int i=0;i<6;i++){%>
            	   <ul class="days">
            	  <%for (int j=0;j<7;j++){
            	  		if(index<cal2_days){%>
            		  	<li class="day other-month">
                       		<div class="date"><%=cal2_last-prev_index%></div>
                   		</li>
            	   <%	prev_index--;
            	  		}else if(index<(cal2_days+cal_last)+1){%>
            	  			<li class="day" onclick="selectDate(<%=year%>,<%=month%>,<%=cur_index%>)">
                            	<div class="date"><%=cur_index %></div>
                        	</li>
                        	
            	  	<%cur_index++;
            	  		}else{%>
            	  			<li class="day other-month">
                       			<div class="date"><%=next_index%></div>
                   			</li>
            	  	<%	next_index++;
            	  		}
            	  		index++;
            	  	}
            	  %>
            	  </ul>
             <% }
               %>
           </div><!-- /. calendar -->
       </div><!-- /. wrap -->
       <br><br>
       <div class="reservation_form">
         <form action="makereservation.do" method="POST">
         <input type="text" id="year"/>
         <input type="text" id="month"/>
         <input type="text" id="date"/>
         <input type="submit" value="��������ʹ���¥�ƾƾ�"/>
        </form>
       </div>
      <fieldset>
        <legend>notice</legend>
            <div class="notice">
              <h3>����ȳ�</h3>
                    �� ������ ȸ������ ����˴ϴ�.<br>
                    �� �ùٸ� ���๮ȭ�� ���� ������� �ްڽ��ϴ�.<br>
                    �� ���ຯ��� �����ϼ��� �ָ��� HTML ����§�� ��������
                    </div><br>
      </fieldset>
    </div>
</body>
</html>