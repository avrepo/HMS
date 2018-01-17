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
<legend ><font face=cursive color=#FFFF00 size=4>Venue Details</font></legend>
<center> 
<form name="form1" method="post" action="./VenueProcess" >
  <table width="682" height="20%" border="1" align="center" class="border">
    <%@ page import ="java.sql.*,dbconnection.*,bean.* " %>
    <%! ResultSet rs,rs2 ; %>
    <%! String vcode,vname; %>
    <%
  DBConnection con= new DBConnection();
  DBConnection con2= new DBConnection();
  rs= con.executeQuery("select * from VENUE_DETAILS");
    %>
    <tr bgcolor="#99FFFF" class="border"> 
      <td width="96" height="50%" class="border"><strong><font color="#660066">Venue</font></strong></td>
      <td width="70" class="border"><strong><font color="#660066">Capacity</font></strong></td>
      <td width="45" class="border"><strong><font color="#660066">Area</font></strong></td>
      <td width="101" class="border"> <strong><font color="#660066">Special Features</font></strong></td>
      <td width="145"  class="border"><strong><font color="#660066">Description</font></strong></td>
      <td width="137" class="border"><strong><font color="#660066">Slots</font></strong></td>
    </tr>
    <%
	 while(rs.next())
  		{
  	%>
    <tr class="border"> 

      <td height="50%" class="border"><font color="#FFFFFF">
      <% vcode = rs.getString(1);
	     vname =rs.getString(2); %>
        <input type="radio" name="venue" value="<%=vname%>">
        <%=vname%></font></td>
      <td class="border"><font color="#FFFFFF"><%= rs.getString(3)%></font></td>
      <td  class="border"><font color="#FFFFFF"><%= rs.getString(4)%></font></td>
      <td class="border"><font color="#FFFFFF"><%= rs.getString(5)%></font></td>
      <td class="border"><font color="#FFFFFF"><%= rs.getString(6)%></font></td>
      <% System.out.println("vcode:= "+vcode);
			rs2= con2.executeQuery("select slot_code ,slot from slot where  slot_code in(select slot_code from venue_time_slot_details where venue_code='"+vcode+"')" ); 
			%>
      <td class="border"><font color="#99FF66">
        <table>
          <% while(rs2.next())
	  	{ System.out.println("in inner loop");
		String slot_code=rs2.getString(1);
		String slot=rs2.getString(2);
		%>
          <tr>
            <td><font color="#FFFFFF">
              <input type="checkbox" name="slot" value="<%=slot%>">
              </font></td>
            <td><font color="#FFFFFF"><%=slot%></font></td>
          </tr>
          <% 
		}
		 System.out.println("in outer loop");
		%>
        </table>
        </font></td>
    </tr>
    <% 
	}//outer while con
	%>
  </table>
    <table border="0" align="left">
    <tr> 
      <td> <div align="left"><font color="#FFFF00"><strong>Enter Date </strong></font></div></td>
      <td> <div align="center"> 
          <input name="functiondate" type="text" class="border" id="functiondate">
        </div></td>
    </tr>
    <tr> 
      <td><div align="left"><font color="#FFFF00"><strong>Payement Mode</strong></font></div></td>
      <td> <div align="left">
          <select name="paymentmode" id="paymentmode">
            <option selected>Cash</option>
            <option>DD</option>
            <option>Cheque</option>
          </select>
        </div></td>
    </tr>
    <tr> 
      <td><div align="center"> </div></td>
      <td><div align="center"> </div></td>
    </tr>
    <tr>
      <td><div align="left">
          <input name="submit" type="submit" id="submit" value="CheckAvailability" class="cbutton">
        </div></td>
      <td><div align="right">
          <input type="reset" name="Submit2" value="cancel" class="cbutton">
        </div></td>
    </tr>
  </table>
   </form>
  </fieldset> </CENTER>
<p align="center"><strong><a href="Menu.htm"><font color="#FF0000"><em>Back</em></font></a></strong></p>
</body>
</html>
