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
<legend ><font face=cursive color=#FFFF00 size=4>Room Details</font></legend>
<center> 
<form name="form1" method="post" action="./RoomSelect.jsp" >
  <%@ page import ="java.sql.*,dbconnection.*,bean.* " %>
    <%! ResultSet rs ; %>
    <%
  DBConnection con= new DBConnection();
    rs= con.executeQuery("select * from  room_types");
    %>
  
  <table border="0" align="center">
    <tr> 
      <td width="160"> <div align="left"><font color="#FFFF00"><strong>Select 
          Room Type</strong></font></div></td>
      <td width="72"> <div align="center"> 
          <select name="room_type" id="room_type" class="border">
		  <% while (rs.next())
		  {
		  %>
            <option class="border"><%=rs.getString(1)%></option>
			<% } %>
          </select>
        </div></td>
    </tr>
    <tr> 
      <td><div align="left"><font color="#FFFF00"></font></div></td>
      <td> <div align="left"> </div></td>
    </tr>
    <tr> 
      <td><div align="center"> </div></td>
      <td><div align="center"> </div></td>
    </tr>
    <tr> 
      <td colspan="2"> <div align="center">
          <input name="submit" type="submit" id="submit" value="Check Availability" class="cbutton">
        </div>
        <div align="right"> </div></td>
    </tr>
  </table>
   </form>
  </fieldset> </CENTER>
<p align="center"><strong><a href="Room_reg.htm"><font color="#FF0000"><em>Back</em></font></a></strong></p>
</body>
</html>
