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
<form name="form1" method="post" action="./RoomSelect.jsp" >

  <%@ page import ="java.sql.*,java.util.*,dbconnection.*,bean.* " %>
    <%! ResultSet rs ; %>
	<%! String room_type ;%>
		<%!ArrayList list=null;%>
		<% int i; %>
    <%
	room_type= request.getParameter("room_type");
  DBConnection con= new DBConnection();
    rs= con.executeQuery("select room_number from  room where room_type='"+room_type+"' and status='empty'");
	 list= new ArrayList();
	while(rs.next())
	{
	String no=rs.getString(1);
	  if(no==null)
			{
			response.sendRedirect("RoomMessage.htm");
			}
	  else{
	 
	    System.out.println("no "+ no);
	  list.add(no);
	  
	  			}
		}//while
    %>
  
  <table border="0" align="center">
    <tr> 
      <td width="160"><div align="left"><font color="#66FFFF"><strong>Room Number</strong></font></div></td>
      <td width="72"> <div align="center"> </div></td>
    </tr>
    <tr>
      <td><font color="#66FFFF"><strong>Rent per Day</strong></font></td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><div align="left"><font color="#66FFFF"><strong>In-Date</strong></font></div></td>
      <td> <div align="left"> </div></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>In-Time</strong></font></td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>Out-Date</strong></font></td>
      <td><input type="text" name="textfield3"></td>
    </tr>
    <tr> 
      <td><font color="#66FFFF"><strong>Out-time</strong></font></td>
      <td><input type="text" name="textfield4"></td>
    </tr>
    <tr> 
      <td><div align="center"></div></td>
      <td><div align="center"> </div></td>
    </tr>
    <tr> 
      <td colspan="2"> <div align="center"> 
          <input name="submit" type="submit" id="submit" value="CheckAvailability" class="cbutton">
        </div>
        <div align="right"> </div></td>
    </tr>
  </table>
   </form>
  </fieldset> </CENTER>
<p align="center"><strong><a href="Room_reg.htm"><font color="#FF0000"><em>Back</em></font></a></strong></p>
</body>
</html>
