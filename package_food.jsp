<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="adi_css.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
function select2()
{

var no= document.form1.soup.selecteditems;
if(no>2)
{
alert ('selected is '+no );
}
}
</script>
</head>
<BODY  'red' vlink='black' link='blue' bgcolor="#778CA4" rightMargin=70 leftMargin=70  bgproperties=fixed ><p class="bgcolor"> <font color="#547E7E">
  <marquee>
  <em><strong>HOTEL  MANAGEMENT  SYSTEM</strong></em> 
  </marquee>
  </font> </p> 
  <fieldset align=center color="red"   >
<legend ><font face=cursive color=#66FFFF size=4>Package Food Details</font></legend>
<form name="form1" method="post" action="./PackageProcess" >
  <%@ page import ="java.sql.*,dbconnection.*,bean.* " %>
  <%! ResultSet rs,rs1,rs2,rs3,rs4,rs5,rs6,rs7 ; %>
  <%! Connection con; %>
  <%! Statement s,s1,s2,s3,s4,s5,s6,s7; %>
  <%! String price; %>
  <%
  DBConnection db= new DBConnection();
   con=db.getConnection();
     %>
	 <% s= con.createStatement();
					rs=s.executeQuery("select * from package_price");
			   if (rs.next())
			   { price=rs.getString(1);}
			   %>
			   
  <p><em><font color="#FFFFCC">The price per Head would be <strong>Rs. 
    <input type="text" name="price" class="border" size="7" readonly="yes" value="<%=price%>" >
    </strong></font></em></p>
  <table width="76%" border="0" align="center" class="border">
    <tr> 
      <td><em><strong><font color="#FFFFFF">Choose Any One</font></strong></em></td>
      <td><table width="75%" border="0" align="center" >
          <tr> 
            <td><div align="left"><strong><font color="#FFFF99" size="5">Soups</font></strong></div></td>
          </tr>
          <tr> 
            <td> <div align="left">
                <select name="soup" class="border" id="soup">
                  <% s1= con.createStatement();
					rs1=s1.executeQuery("select * from soups");
			   while (rs1.next())
			   {
			    %>
                  <option><%= rs1.getString(1)%></option>
                  <%
				  }
				  %>
                </select>
              </div></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td><em><strong><font color="#FFFFFF">Choose Any Two</font></strong></em></td>
      <td><table width="75%" border="0" align="center">
          <tr> 
            <td><div align="left"><strong><font color="#FFFF99" size="5">Salads</font></strong></div></td>
          </tr>
          <tr> 
            <td> <div align="left">
                <select name="salad" size="5" multiple id="salad" class="border" onBlur="select2()">
                  <% s2= con.createStatement();
					rs2=s2.executeQuery("select * from salads");
			   while (rs2.next())
			   {
			    %>
                  <option><%= rs2.getString(1)%></option>
                  <%
				  }
				  %>
                </select>
              </div></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td><em><strong><font color="#FFFFFF">Choose Any One</font></strong></em></td>
      <td><table width="75%" border="0" align="center">
          <tr> 
            <td><div align="left"><strong><font color="#FFFF99" size="5">Roti</font></strong></div></td>
          </tr>
          <tr> 
            <td> <div align="left">
                <select name="roti" class="border">
                  <% s3= con.createStatement();
					rs3=s3.executeQuery("select * from roti");
			   while (rs3.next())
			   {
			    %>
                  <option><%= rs3.getString(1)%></option>
                  <%
				  }
				  %>
                </select>
              </div></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td><em><strong><font color="#FFFFFF">Choose Any One</font></strong></em></td>
      <td><table width="75%" border="0" align="center">
          <tr> 
            <td><div align="left"><strong><font color="#FFFF99" size="5">Rice</font></strong></div></td>
          </tr>
          <tr> 
            <td> <div align="left">
                <select name="rice" class="border">
                  <% s4= con.createStatement();
					rs4=s4.executeQuery("select * from rice");
			   while (rs4.next())
			   {
			    %>
                  <option><%= rs4.getString(1)%></option>
                  <%
				  }
				  %>
                </select>
              </div></td>
                    </tr>
        </table></td>
    </tr>
    <tr> 
      <td><em><strong><font color="#FFFFFF">Choose Any Three</font></strong></em></td>
      <td><table width="75%" border="0" align="center">
          <tr> 
            <td><div align="left"><strong><font color="#FFFF99" size="5">Curries</font></strong></div></td>
          </tr>
          <tr> 
             
            <td> <div align="left">
                <select name="curry" size="5" multiple  class="border" id="curry">
                  <% s5= con.createStatement();
					rs5=s5.executeQuery("select * from curries");
			   while (rs5.next())
			   {
			    %>
                  <option><%= rs5.getString(1)%></option>
                  <%
				  }
				  %>
                </select>
              </div></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td><em><strong><font color="#FFFFFF">Choose Any One</font></strong></em></td>
      <td><table width="75%" border="0" align="center">
          <tr> 
            <td><div align="left"><strong><font color="#FFFF99" size="5">Curd</font></strong></div></td>
          </tr>
          <tr> 
            <td> <div align="left">
                <select name="curd" class="border">
                  <% s6= con.createStatement();
					rs6=s6.executeQuery("select * from curd");
			   while (rs6.next())
			   {
			    %>
                  <option><%= rs6.getString(1)%></option>
                  <%
				  }
				  %>
                </select>
              </div></td>
                    </tr>
        </table></td>
    </tr>
    <tr> 
      <td><em><strong><font color="#FFFFFF">Choose Any One</font></strong></em></td>
      <td><table width="75%" border="0" align="center">
          <tr> 
            <td><div align="left"><strong><font color="#FFFF99" size="5">Dessert</font></strong></div></td>
          </tr>
          <tr> 
            <td> <div align="left">
                <select name="desert" class="border" id="desert">
                  <% s7= con.createStatement();
					rs7=s7.executeQuery("select * from dessert");
			   while (rs7.next())
			   {
			    %>
                  <option><%= rs7.getString(1)%></option>
                  <%
				  }
				  %>
                </select>
              </div></td>
                    </tr>
        </table></td>
    </tr>
  </table>
  <table width="75%" border="0" align="center">
    <tr>
      <td><div align="center">
          <input type="submit" name="Submit" value="Submit"  class="cbutton">
        </div></td>
      <td><div align="center">
          <input type="submit" name="Submit2" value="Cancel"  class="cbutton">
        </div></td>
    </tr>
  </table>
  <p align="center"><strong><a href="Menu.htm"><font color="#FF0000" size="4"><em>Back</em></font></a></strong></p>
</form>
  </fieldset> </CENTER>
</body>
</html>
