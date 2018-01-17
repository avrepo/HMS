<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="adi_css.css" rel="stylesheet" type="text/css">
</head>
<BODY  'red' vlink='black' link='blue' bgcolor="#778CA4" topmargin=0 bottommargin=0 rightMargin=70 leftMargin=70  bgproperties=fixed >
<p class="bgcolor"> <font color="#547E7E">
  <marquee>
  <em><strong>HOTEL  MANAGEMENT  SYSTEM</strong></em> 
  </marquee>
  </font> </p> 
<fieldset align=center color="red"   >
<legend ><font color="#66FFFF" size="4" face="cursive">Room Bill View </font></legend>
<center> 
<form name="form1" method="post" action="RoomProcess" >
 <%@ page import ="java.sql.*,dbconnection.*,bean.* " %>
    <%! ResultSet rs,rs2,rs3; %>
	    <%! String  name,place,country,zip,phone,fax,email,roomtype,roomnumber,persons,intime,outtime,rent,status,rent_day; %>
		<%! java.sql.Date bdate,indate,outdate; %>
    <%
	RoomCustomerBean bean=(RoomCustomerBean)session.getAttribute("ROOMBEAN");
  DBConnection con= new DBConnection();
    rs= con.executeQuery("select * from  room_customer where name='"+bean.getName()+"' and room_number='"+bean.getRoomnumber()+"'");
	rs2=con.executeQuery("select * from  room_details where name='"+bean.getName()+"' and room_number='"+bean.getRoomnumber()+"'");   
	rs3=con.executeQuery("select rent from  room_types where  room_type='"+bean.getRoomtype()+"'");
	if(rs3.next())
	{
	rent_day=rs3.getString(1);
	}
		   while (rs.next())
		  {
		  bdate=rs.getDate(1);
		  name=rs.getString(2);
		  place=rs.getString(3);
		  country=rs.getString(4);
		  zip=rs.getString(5);
		  phone=rs.getString(6);
		  fax=rs.getString(7);
		  email=rs.getString(8);
		  roomtype=rs.getString(9);
		  roomnumber=rs.getString(10);
		  persons=rs.getString(11);
		  }
		  while(rs2.next())
		  	{
			indate=rs2.getDate(3);
			intime=rs2.getString(4);
			outdate=rs2.getDate(5);
			outtime=rs2.getString(6);
			status=rs2.getString(7);
			rent=rs2.getString(8);
			}
		  
		   %>
 
  <p align="left"><strong><font color="#CCCC33" size="4"><em><font color="#FFFFCC">Booking 
    Date : <%=bdate%></font></em></font></strong></p>
  <table border="0" align="left">
    <tr> 
      <td> <div align="left"><font color="#66FFFF"><strong>Name</strong></font></div></td>
      <td> <div align="center"><font color="#FFFFCC"><%=name%> </font></div></td>
    </tr>
    <tr> 
      <td><div align="left"><font color="#66FFFF"><strong>Place</strong></font></div></td>
      <td><div align="center"><font color="#FFFFCC"><%=place%> </font></div></td>
    </tr>
    <tr> 
      <td><div align="left"><font color="#66FFFF"><strong>Country</strong></font> 
        </div></td>
      <td><div align="center"><font color="#FFFFCC"><%=country%> </font></div></td>
    </tr>
    <tr> 
      <td><div align="left"><font color="#66FFFF"><strong>zip</strong></font> 
        </div></td>
      <td><div align="right"> <font color="#FFFFCC"><%=zip%></font></div></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>Phone</strong></font></td>
      <td><font color="#FFFFCC"><%=phone%></font></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>Fax</strong></font></td>
      <td><font color="#FFFFCC"><%=fax%></font></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>E-mail</strong></font></td>
      <td><font color="#FFFFCC"><%=email%></font></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>No of Persons</strong></font></td>
      <td><font color="#FFFFCC"><%=persons%></font></td>
    </tr>
  </table>
   
  <table border="0" align="center">
    <tr> 
      <td><font color="#66FFFF"><strong> Room Type</strong></font></td>
      <td><font color="#FFFFCC"><%=roomtype%></font></td>
    </tr>
    <tr> 
      <td width="160"> <div align="left"><font color="#66FFFF"><strong>Room Number</strong></font></div></td>
      <td width="72"> <div align="left"></div>
        <font color="#FFFFCC"><%=roomnumber%></font></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>Rent per Day</strong></font></td>
      <td><font color="#FFFFCC"><%=rent_day%></font></td>
    </tr>
    <tr> 
      <td><div align="left"><font color="#66FFFF"><strong>In-Date</strong></font></div></td>
      <td> <div align="left"> <font color="#FFFFCC"><%=indate%></font></div></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>In-Time</strong></font></td>
      <td><font color="#FFFFCC"><%=intime%></font></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>Out-Date</strong></font></td>
      <td><font color="#FFFFCC"><%=outdate%></font></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>Out-time</strong></font></td>
      <td><font color="#FFFFCC"><%=outtime%></font></td>
    </tr>
    <tr> 
      <td><div align="left"><font color="#66FFFF"><strong>Total Rent</strong></font></div></td>
      <td><font color="#FFFFCC"><%=rent%> </font> <div align="left"></div></td>
    </tr>
    <tr> 
      <td colspan="2"> <div align="center"> </div>
        <div align="right"> </div></td>
    </tr>
  </table>
  <p align="center"><strong><a href="Menu.htm"><font color="#FF0000"><em>Back</em></font></a></strong></p>
</form>
  </fieldset> </CENTER>
</body>
</html>
