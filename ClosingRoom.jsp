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
<legend ><font face=cursive color=#66FFFF size=4>Room Details</font></legend><center> 
<form name="form1" method="post" action="./ClosingRoom" >

  <%@ page import ="java.sql.*,java.util.*,dbconnection.*,bean.* " %>
    <%! ResultSet rs,rs2 ; %>
	<%! String room_number,name,rent,total,room_type,intime,outtime,status;%>
	<% java.sql.Date indate=null,outdate=null; %>
    <%
room_number= request.getParameter("room_number");
name=request.getParameter("name");
System.out.println(" Closing Room ");

  DBConnection con= new DBConnection();
    rs= con.executeQuery("select * from  room_details where name='"+name+"' and room_number='"+room_number+"'");
	rs2=con.executeQuery(" select rent,room_type from room_types where room_type=(select room_type from room where room_number='"+room_number+"')");
	while(rs2.next())
	{
	rent =rs2.getString(1);
	room_type=rs2.getString(2);
	}
while(rs.next())
		  	{
			indate=rs.getDate(3);
			intime=rs.getString(4);
			outdate=rs.getDate(5);
			outtime=rs.getString(6);
			status=rs.getString(7);
			total=rs.getString(8);
			}
			
	
    %>
  
  <table border="0" align="center">
    <tr> 
      <td><font color="#66FFFF"><strong>Room Type</strong></font></td>
      <td><font color="#FFFFCC"><strong>
        <input name="room_type" type="text" class="border" id="room_type" value="<%=room_type %>" readonly="yes">
        </strong></font></td>
    </tr>
    <tr> 
      <td width="160"> <div align="left"><font color="#66FFFF"><strong>Room Number</strong></font></div></td>
      <td width="72"> <div align="left"><font color="#FFFFCC"><strong>
          <input name="room_number" type="text" class="border" id="room_number" value="<%=room_number %> " readonly="yes">
          </strong></font></div></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>Rent per Day</strong></font></td>
      <td><strong><font color="#FFFFCC">
        <input name="rent" type="text" class="border" id="rent" value="<%=rent%>" readonly="yes">
        </font></strong></td>
    </tr>
    <tr> 
      <td><div align="left"><font color="#66FFFF"><strong>In-Date</strong></font></div></td>
      <td> <div align="left"><font color="#FFFFCC"><strong> 
          <input name="indate" type="text" class="border" id="indate" value="<%=indate%>" readonly="yes">
          </strong></font></div></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>In-Time</strong></font></td>
      <td><font color="#FFFFCC"><strong>
        <input name="intime" type="text" class="border" id="intime" value="<%=intime%>" readonly="yes">
        </strong></font></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>Out-Date</strong></font></td>
      <td><font color="#FFFFCC"><strong> 
        <input name="outdate" type="text" id="outdate" class="border" value="<%=outdate%>">
        </strong></font></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>Out-time</strong></font></td>
      <td><font color="#FFFFCC"><strong> 
        <input name="outtime" type="text" id="outtime" class="border" value="<%=outtime%>">
        </strong></font></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>Total Rent</strong></font></td>
      <td><font color="#FFFFCC"><strong> 
        <input name="total" type="text" id="total" class="border" value="<%=total%>">
        </strong></font></td>
    </tr>
    <tr> 
      <td><div align="left"><font color="#66FFFF"></font></div></td>
      <td><div align="center"><font color="#FFFFCC"></font> </div></td>
    </tr>
    <tr> 
      <td colspan="2"> <div align="center"> 
          <input name="submit" type="submit" id="submit" value="Close" class="cbutton">
        </div>
        <div align="right"> </div></td>
    </tr>
  </table>
  <input type="hidden" name="name" value="<%=name%>">
   </form>
  </fieldset> </CENTER>
<p align="center"><strong><a href="RoomClosing.htm"><font color="#FF0000"><em>Back</em></font></a></strong></p>
</body>
</html>
