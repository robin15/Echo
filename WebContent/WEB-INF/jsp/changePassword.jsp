<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
body {
background-image:url("http://www.westvalleyaquatics.com/css/pro/cust_stock_bg/twist_green.jpg");
}
.container h1 {
	font-family: Verdana, Geneva, sans-serif;
}

</style>
<style>
h1 {text-shadow:4px 4px 8px #99CC33;}
h1 {color:#000;}
p.ex {color:rgb(0,0,255);}
</style>
<table  cellspacing="0" cellpadding="0" align="center" style="background-color:#FF9"><tr><td  style="width:700px; height:100px;"><h1 align="center" style="margin-top:; font-weight: bold;text-shadow: ">ECHO</h1>
<p align="center" style="margine-bottom: 0; font-weight: bold; color:#360"><marquee scrolldelay="100">::::This web site allows you to post message called Echo::::</marquee></td></tr></p>
<tr><td  style="width:700px; height:45px;">


<div id="ButtonBar" style="text-align:center;width:700px;height:40px; background-color:#000">

<form action="">
<input type='button'  value=<%=session.getAttribute("userName")%> onclick="window.location.href='../Echo/home'"          style="height:40px; width:100px"/>
<input type="button"  value="My Echos" 							 onclick="window.location.href='../Echo/myEchos'"        style="height:40px; width:80px">
<input type="button"  value="Recent Echos" 						 onclick="window.location.href='../Echo/recentEchos'"    style="height:40px; width:120px">
<input type="button"  value="Home" 								 onclick="window.location.href='../Echo/home'"           style="height:40px; width:80px">
<input type="button"  value="ChangePassword" 					 onclick="window.location.href='../Echo/changePassword'" style="height:40px; width:130px">
<input type="button"  value="Log out" 							 onclick="window.location.href='../Echo/logOut'"         style="height:40px; width:100px">
</form>
</div>

</td></tr>

<form method="post" action="">
<tr><td  align="center" style="width:700px; height:168px;">
<br></br><br></br>
<label>Old Password</label> <input type="text" name="oldPassword" id="oldPassword"><br> </br>
<label>New Password</label> <input type="text" name="newPassword" id="newPassword"><br> </br>
<label>Re-Type New </label> <input type="text" name="reTypePassword" id="reTypePassword"><br> </br>

<div align="center" style="height:43px; width:660px;">
<input type="submit" value="Submit" accept="image/*" style="height:43px; width:80px">
<img src="#"width="80px;" height="43px;" id="img_prev" align="left"/>
</form>
</div>
</td></tr>
</table>
<body>
</body>
</html>
