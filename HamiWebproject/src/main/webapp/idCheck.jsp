<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.company.hami.user.UserDAO"%>
    
<%
    	request.setCharacterEncoding("EUC-KR");
    %>
<%
	String id = request.getParameter("id");
	UserDAO manager = UserDAO.getInstance();
	int idCheck = manager.confirmId(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="0" align="center">
		<tr>
			<td align="center">
			<%
				if(idCheck == 1){	//ID�� �ߺ��� ���
			%>
			<br>
			<%= id %> �� �̹� �����ϴ� ID �Դϴ�.(ID�ߺ�)&nbsp;<br><br>
			
			<input type="button" value="�ݱ�" onClick="javascript:self.close();
						opener.document.join.id.foucus();">
			<%	}else{ %>
			<br>
			<%= id %>�� ��� ������ ID �Դϴ�. &nbsp;<br><br>
			<input type="button" value="�ݱ�" onClick="javascript:self.close();
						opener.document.join.passwd.foucus();">
			<%}%>
			</td>
		</tr>
	</table>
</body>
</html>