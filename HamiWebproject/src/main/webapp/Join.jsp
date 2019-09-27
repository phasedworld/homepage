<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- �߰� -->
<% request.setCharacterEncoding("EUC-KR"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
<style>
body{
  margin:0px auto;
}
header{
  height:80px;
  margin-bottom:20px;
  box-shadow: 3px 4px 5px 0px rgba(0, 0, 0, 0.09);
}
#lineheader{
  margin:0 auto;
  display:table;
  width:1200px;
  height:80px;
}
#title{
  display:table-cell;
  vertical-align:middle;
  font-size:30px;
}
nav{
  display:table-cell;
  vertical-align: middle;
}
nav ul{
  float:right;
  margin:0px;
  list-style:none;
}
nav ul li{
  color:#333333;
  font-size:15px;
  float:left;
  margin:10px;
  padding:10px;
}
#container{
  margin:0px auto;
  border:1px solid black;
  width:1000px;
  height:800px;
}

.join{
  padding: 0;
  margin: 0;
  width: 600px;
  height: 800px;
  counter-reset:a;
  border-radius:10px 10px 10px 10px;
}

.join fieldset{
  position:relative;
  padding:0;
  line-height:50px;
  border:none;
}

.join fieldset legend{
  padding-left: 20px;
  font-size: 20px;
  font-weight: bold;
  color:#636363;
}

.join fieldset ol{
  position:relative; /* ������� ǥ�� */
  padding:0;
  line-height:50px; /* �ٰ��� */
  border:none;
  padding-left: 20px;
}
.join fieldset ol li{
  border-radius:10px 10px 10px 10px;
  width: 600px;
  border:2px;
  list-style-type: none;
  border-style:solid;
  margin-top: 2px;
}
.join fieldset ol li label{
  display: inline-block;
  width:150px;
  padding-left:20px;
}
.join fieldset ol li input[type="text"],[type="password"],[type="email"]{
  border-radius:5px 5px 5px 5px;
  width:300px;
  height: 20px;
}
.join fieldset ol li input[type="button"]{
  border-radius:15px 15px 15px 15px;
  width:100px;
  height: 30px;
  background-color: #000000;
  border:none;
  color:#fff;
  margin-left:8px;
}


.btn input{
 background-color: #000000;
 border:none;
 width:100px;
 height: 100px;
 border-radius:50px 50px 50px 50px;
 font-size: 20px;
 color:#fff;
 margin-left:180px;
}

</style>
<script language="javascript" src="./resources/javascript/script.js" charset="utf-8"></script>
</head>
<body>
  <header>
    <div id="lineheader">
    <div id="title"><img src="./resources/img/title.png"/></div>
      <nav>
        <ul>
          <a href="#"><li>���ô±�</li></a>
          <a href="#"><li>���� �ȳ�</li></a>
          <a href="#"><li>������ �Ұ�</li></a>
        </ul>
      </nav>
    </div>
  </header>
  <form class="join" name="join" method="POST" action="insertMember.do">
    <fieldset>
      <legend>ȸ������</legend>
      <ol>
        <li>
          <label for="id">���̵�</label>
          <input type="text" name="id" size=15>
          <input type="button" value="ID �ߺ�Ȯ��"
			onClick="idCheck(this.form.id.value)">
        </li>
        <li>
          <label for="passwd">��й�ȣ</label>
          <input type="password" name="passwd" size=15>
        </li>
        <li>
          <label for="passwd_check">��й�ȣ Ȯ��</label>
          <input type="password" name="passwd_check" size=15>
        </li>
        <li>
          <label for="email">�̸���</label>
          <input type="email" name="email" size=30>
        </li>
        <li>
          <label for="zipcode">�����ȣ</label>
          <input type="text" name= "zipcode" size="7">
					<input type="button" value="�����ȣã��" onClick="zipCheck()">
        </li>
        <li>
          <label for="address">�ּ�</label>
          <input type="text" name="address1" readonly>
          <input type="text" name="address2" size="40" placeholder="�� �ּҸ� �Է��ϼ���">
        </li>
      </ol>
    </fieldset>

    <ul class="btn">
      <input type="button" value="ȸ������" onClick="inputCheck()">
      <input type="reset" value="�ٽþ���">
    </ul>

  </form>
</body>
</html>
