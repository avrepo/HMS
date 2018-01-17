<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="adi_css.css" rel="stylesheet" type="text/css">
</head>
<BODY  'red' vlink='black' link='blue' bgcolor="#778CA4" topmargin=0 bottommargin=0 rightMargin=60 leftMargin=80  bgproperties=fixed >
<p class="bgcolor"> <font color="#547E7E">
  <marquee>
  <em><strong>HOTEL  MANAGEMENT  SYSTEM</strong></em> 
  </marquee>
  </font> </p> 
 <fieldset align=center color="red"   >
<legend ><font color="#FFFF00" size="4" face="cursive">Food Bill</font></legend>
<center> 
<form name="form1" method="post" action="" >
  <table width="348" height="20%" border="1" align="center" class="border">
    <%@ page import ="java.sql.*,dbconnection.*,bean.* " %>
    <%! ResultSet rs; %>
    <%! String no; %>
    <%
String id=(String)session.getAttribute("ORDERID");
no=(String)session.getAttribute("NUMBER");
  DBConnection con= new DBConnection();
  rs= con.executeQuery("select * from PACKAGE_FOOD_DETAILS where order_id='"+id+"'");
    	 while(rs.next())
  		{
  	    %>
    <tr bgcolor="#99FFFF" class="border"> 
      <td width="94" height="50%" class="border"><strong><font color="#660066">OrderNumber</font></strong></td>
      <td width="72" class="border"><strong><%=id%></strong></td>
    </tr>
    <tr bgcolor="#99FFFF" class="border"> 
      <td height="50%" class="border"><strong><font color="#660066">Price per 
        Head </font></strong></td>
      <td class="border"><%=rs.getString(2)%></td>
    </tr>
    <tr bgcolor="#99FFFF" class="border"> 
      <td height="50%" class="border"><strong><font color="#660066">Nuber of Attendees</font></strong></td>
      <td class="border"><%=no%></td>
    </tr>
    <tr bgcolor="#99FFFF" class="border"> 
      <td height="50%" class="border"><strong><font color="#660066">Soups</font></strong></td>
      <td class="border"><%=rs.getString(3)%></td>
    </tr>
    <tr bgcolor="#99FFFF" class="border"> 
      <td height="50%" class="border"><strong><font color="#660066">Salads</font></strong></td>
      <td class="border"><%=rs.getString(4)%></td>
    </tr>
    <tr bgcolor="#99FFFF" class="border"> 
      <td height="50%" class="border"><strong><font color="#660066">Roti</font></strong></td>
      <td class="border"><%=rs.getString(5)%></td>
    </tr>
    <tr bgcolor="#99FFFF" class="border"> 
      <td height="50%" class="border"><strong><font color="#660066">Rice</font></strong></td>
      <td class="border"><%=rs.getString(6)%></td>
    </tr>
    <tr bgcolor="#99FFFF" class="border"> 
      <td height="50%" class="border"><strong><font color="#660066">Curries</font></strong></td>
      <td class="border"><%=rs.getString(7)%></td>
    </tr>
    <tr bgcolor="#99FFFF" class="border"> 
      <td height="50%" class="border"><strong><font color="#660066">Curd</font></strong></td>
      <td class="border"><%=rs.getString(8)%></td>
    </tr>
    <tr bgcolor="#99FFFF" class="border"> 
      <td height="50%" class="border"><strong><font color="#660066">Desert</font></strong></td>
      <td class="border"><%=rs.getString(9)%></td>
    </tr>
    <tr bgcolor="#99FFFF" class="border">
      <td height="50%" class="border"><strong><font color="#660066">Total Amount</font></strong></td>
      <td class="border"><%=rs.getString(10)%></td>
    </tr>
    <% 
	}//outer while con
	%>
  </table>
    </form>
  </fieldset> </CENTER>
<p align="center"><strong><a href="Menu.htm"><font color="#FF0000"><em>Back</em></font></a></strong></p>
</body>
</html>
