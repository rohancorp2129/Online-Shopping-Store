<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>

<form action="changeSecurityQuestionAction.jsp" method="post">

<h3>Select Your New Securtiy Question</h3>
 <select class="input-style" name="securityQuestion">
 			<option value="What Was Your School Name ? ">What Was Your First School Name ?</option>
    		<option value="What is the name of your childhood best friend ?  ">What is the name of your childhood best friend ?</option>
    		<option value="What is name of the town where you born ? ">What is name of the town where you born ?</option>
    		<option value="What is yout first pet name ? ">What is yout first pet name ?</option>
 
 </select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input class="input-style" type="text" name="newAnswer" placeholder="Enter Your New Answer" required="required">
<hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter Password(For Security)" required="required">
<hr>
 <button class="button" type="submit"> Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>