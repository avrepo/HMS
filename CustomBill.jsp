<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="adi_css.css" rel="stylesheet" type="text/css">
</head>
<BODY  'red' vlink='black' link='blue' bgcolor="#778CA4"  rightMargin=70 leftMargin=70  bgproperties=fixed >
<p class="bgcolor"> <font color="#547E7E">
  <marquee>
  <em><strong>HOTEL  MANAGEMENT  SYSTEM</strong></em> 
  </marquee>
  </font> </p> 
<fieldset align=center color="red">
<legend ><font face=cursive color=#66FFFF size=4>Food Bill</font></legend>
<center> 
<form name="form1" method="post" action="" >
    <%@ page import ="java.sql.*,dbconnection.*,bean.* " %>
    <%! ResultSet rs; %>
    <%! String no,total ; %>
    <%! String name[]= new String[8]; %>
    <%! String mesure[]= new String[8]; %>
    <%! String price[]= new String[8]; %>
    <%! String serve[]= new String[8]; %>
    <%! String quantity[]= new String[8]; %>
    <%
String id=(String)session.getAttribute("ORDERID");
no=(String)session.getAttribute("NUMBER");
  DBConnection con= new DBConnection();
  rs= con.executeQuery("select * from custom_food_details where order_number='"+id+"'");
    	 if(rs.next())
  		{
		
		
		name[1]=rs.getString(2);
		name[2]=rs.getString(3);
		name[3]=rs.getString(4);
		name[4]=rs.getString(5);
		name[5]=rs.getString(6);
		name[6]=rs.getString(7);
		name[7]=rs.getString(8);
		
		
		mesure[1]=rs.getString(9);
		mesure[2]=rs.getString(10);
		mesure[3]=rs.getString(11);
		mesure[4]=rs.getString(12);
		mesure[5]=rs.getString(13);
		mesure[6]=rs.getString(14);
		mesure[7]=rs.getString(15);
		
		
		price[1]=rs.getString(16);
		price[2]=rs.getString(17);
		price[3]=rs.getString(18);
		price[4]=rs.getString(19);
		price[5]=rs.getString(20);
		price[6]=rs.getString(21);
		price[7]=rs.getString(22);
		
		
		serve[1]=rs.getString(23);
		serve[2]=rs.getString(24);
		serve[3]=rs.getString(25);
		serve[4]=rs.getString(26);
		serve[5]=rs.getString(27);
		serve[6]=rs.getString(28);
		serve[7]=rs.getString(29);
		
		
		quantity[1]=rs.getString(30);
		quantity[2]=rs.getString(31);
		quantity[3]=rs.getString(32);
		quantity[4]=rs.getString(33);
		quantity[5]=rs.getString(34);
		quantity[6]=rs.getString(35);
		quantity[7]=rs.getString(36);
	   total=rs.getString(37);
	}	
  	    %>
    <p align="left"><strong><font color="#FF9900" size="4"><em>Order Number : 
      <%=id%> </em></font></strong></p>
    <table width="80%" border="0" align="center" class="border">
      <tr bgcolor="#99FFFF" class="border"> 
        <td class="border"><strong><font color="#660066">Category</font></strong></td>
        <td class="border"><strong><font color="#660066">Item Name</font></strong></td>
        <td class="border"><strong><font color="#660066">Price</font></strong></td>
        <td class="border"> <strong><font color="#660066">Can Serve</font></strong></td>
        <td  class="border"><strong><font color="#660066">Mesuring Unit</font></strong></td>
        <td class="border"><strong><font color="#660066">Quantity</font></strong></td>
      </tr>
      <tr > 
        <td >&nbsp;</td>
        <td >&nbsp;</td>
        <td  >&nbsp;</td>
        <td >&nbsp;</td>
        <td >&nbsp;</td>
        <td >&nbsp;</td>
      </tr>
      <tr > 
        <td ><strong><font color="#FFFFCC" size="5">Soup</font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=name[1]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=price[1]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=serve[1]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=mesure[1]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=quantity[1]%></font></strong></td>
      </tr>
      <tr > 
        <td ><strong><font color="#FFFFCC" size="5">Salad</font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=name[2]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=price[2]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=serve[2]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=mesure[2]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=quantity[2]%></font></strong></td>
      </tr>
      <tr > 
        <td ><strong><font color="#FFFFCC" size="5">Roti</font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=name[3]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=price[3]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=serve[3]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=mesure[3]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=quantity[3]%></font></strong></td>
      </tr>
      <tr > 
        <td ><strong><font color="#FFFFCC" size="5">Rice</font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=name[4]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=price[4]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=serve[4]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=mesure[4]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=quantity[4]%></font></strong></td>
      </tr>
      <tr > 
        <td ><strong><font color="#FFFFCC" size="5">Curry</font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=name[5]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=price[5]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=serve[5]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=mesure[5]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=quantity[5]%></font></strong></td>
      </tr>
      <tr > 
        <td ><strong><font color="#FFFFCC" size="5">Curd</font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=name[6]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=price[6]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=serve[6]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=mesure[6]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=quantity[6]%></font></strong></td>
      </tr>
      <tr > 
        <td ><strong><font color="#FFFFCC" size="5">Dessert</font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=name[7]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=price[7]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=serve[7]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=mesure[7]%></font></strong></td>
        <td ><strong><font color="#FFFFFF"><%=quantity[7]%></font></strong></td>
      </tr>
      <tr > 
        <td >&nbsp;</td>
        <td >&nbsp;</td>
        <td  >&nbsp;</td>
        <td >&nbsp;</td>
        <td >&nbsp;</td>
        <td >&nbsp;</td>
      </tr>
      <tr > 
        <td colspan="5" ><div align="left"><font color="#FFFFFF"><strong><em>Total 
            Amount</em></strong></font> <%=total%> <font color="#CCFFFF">(20 % 
            of Tax inclusive)</font></div></td>
        <td >&nbsp;</td>
      </tr>
    </table>
   <p align="center"><strong><a href="Menu.htm"><font color="#FF0000" size="4"><em>Back</em></font></a></strong></p>
</form>
  </center> </fieldset> 
</body>
</html>
