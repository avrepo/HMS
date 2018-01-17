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
<form name="form1" method="post" action="./RoomBook" >

  <%@ page import ="java.sql.*,java.util.*,dbconnection.*,bean.* " %>
    <%! ResultSet rs,rs2 ; %>
	<%! String room_type,rent ;%>
		<%!ArrayList list=null;%>
		<% int i; %>
    <%
	room_type= request.getParameter("room_type");
RoomCustomerBean bean=	(RoomCustomerBean)session.getAttribute("ROOMBEAN");
bean.setRoomtype(room_type);
session.removeAttribute("ROOMBEAN");
session.setAttribute("ROOMBEAN",bean);
System.out.println(" Room Select ");

  DBConnection con= new DBConnection();
    rs= con.executeQuery("select room_number from  room where room_type='"+room_type+"' and status='empty'");
	rs2=con.executeQuery(" select rent from room_types where room_type='"+room_type+"'");
	if(rs2.next())
		rent =rs2.getString(1);
		
	 list= new ArrayList();
	boolean flag=false;
 while (rs.next())
	{
		String no=rs.getString(1);
 	    System.out.println("no "+ no);
	    list.add(no);
		flag=true;
	  
	  }//while
		if(!flag)
		{
			response.sendRedirect("RoomMessage.htm");
			}
	
    %>
  
  <table border="0" align="center">
    <tr> 
      <td width="160"> <div align="left"><font color="#66FFFF"><strong>Select 
          Room Number</strong></font></div></td>
      <td width="72"> <div align="left"> 
          <select name="room_number" id="room_number" class="border">
            <% 
			i=0;
			for(i=0;i<list.size();i++)
		  {
		  System.out.println("r "+ list.get(i).toString());
		  %>
            <option class="border"><%=list.get(i).toString()%></option>
            <% 
			} %>
          </select>
        </div></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>Rent per Day</strong></font></td>
      <td><font color="#FFFFCC"><%=rent%></font></td>
    </tr>
    <tr> 
      <td><div align="left"><font color="#66FFFF"><strong>In-Date</strong></font></div></td>
      <td> <div align="left"> 
          <input name="indate" type="text" id="indate" class="border">
        </div></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>In-Time</strong></font></td>
      <td><input name="intime" type="text" id="intime" class="border"></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>Out-Date</strong></font></td>
      <td><input name="outdate" type="text" id="outdate" class="border"></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>Out-time</strong></font></td>
      <td><input name="outtime" type="text" id="outtime" class="border"></td>
    </tr>
    <tr> 
      <td><div align="left"><font color="#66FFFF"><strong>Total Rent</strong></font></div></td>
      <td><div align="center"> 
          <input name="total_rent" type="text" id="total_rent" class="border">
        </div></td>
    </tr>
    <tr> 
      <td colspan="2"> <div align="center"> 
          <input name="submit" type="submit" id="submit" value="Book" class="cbutton">
        </div>
        <div align="right"> </div></td>
    </tr>
  </table>
   </form>
  </fieldset> </CENTER>
<p align="center"><strong><a href="Room_reg.htm"><font color="#FF0000"><em>Back</em></font></a></strong></p>
</body>
</html>
