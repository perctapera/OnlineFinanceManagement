<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="ofm.beans.*" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Connection Details</title>
</head>
<% 	
	User user = (User) request.getAttribute("user");
	Connection connection = (Connection) request.getAttribute("connection");
	DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
%>
<body>
<form  action="\OFM\UserRegistrationServlet" method="post">
<h2 align="center"> Update Connection Details</h2>
<table align="center">

<tr>
<td colspan="2" align="right"><b> Welcome <%=user.getFirstName()%>  <%=user.getLastName()%>,</b></td>
</tr>


<tr>
<td>
<label for="type">Type of Connection</label>
</td>
<td>
<select name="type" id="type">
<option value="gas">Gas</option>
<option value="electricity">Electricity</option>
<option value="phone">Phone</option>
<option value="internet">Internet</option>
</select>
</td>
</tr>

<tr>
<td>
<label for="supplierName">Name Of Supplier</label>
</td>
<td>
<input type="text" name="supplierName" id="supplierName" size="30" value="<%=connection.getSupplierName()%>"/>
</td>
</tr>

<tr>
<td>
<label for="startDate">Starting date of connection</label>
</td>
<td>
<input type="text" name="startDate" id="startDate" size="30" value="<%=df.format(connection.getStartDate())%>"/>
</td>
</tr>

<tr>
<td>
<label for="registrationNo">Registration Number</label>
</td>
<td>
<input type="text" name="registrationNo" id="registrationNo" size="30" value="<%=connection.getRegistrationNo()%>"/>
</td>
</tr>

<tr> <td align="center" colspan="2">
<input type="submit" name="button1" value="Update"/>
<input type="hidden" name="userId" id="userId" value="<%=user.getId()%>"/>
<input type="hidden" name="connectionId" id="connectionId" value="<%=connection.getId()%>"/>
<input type="hidden" name="conType" id="conType" value="<%=connection.getType()%>"/>
<input type="hidden" id="actionField" name="actionField" value="updateConnection"/>
</td> </tr>

<tr>
<td align="center" colspan="2">
<a href="\OFM\UserRegistrationServlet?actionField=goToHome&userId=<%=user.getId()%>">Go To Home</a>
</td>
</tr>

</table>
</form>
<script>
document.getElementById("type").value=document.getElementById("conType").value;
</script>
</body>
</html>

