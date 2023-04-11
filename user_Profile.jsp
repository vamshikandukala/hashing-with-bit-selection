<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Profile</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style type="text/css">
<!--
.style1 {color: #7FB600}
.style2 {color: #DD5411}
.style3 {font-size: 15px}
.style4 {font-size: 14px}
.style5 {color: #000000}
-->
</style>
</head>
<body>
<center>
  <div id="wh_bg">
    <div id="bd_bg">
      <!--top panel starts-->
      <div id="main1">
<div id="top"> <span class="what"> <img src="images/what1.gif" width="0.1" height="0.1" alt="" class="wh_img" /> </span> <img src="images/logo1.jpg" width="284" height="60" alt="" class="logo" />
          <div class="menu"> 
<a href="index.html">HOME</a> <img src="images/line.gif" width="3" height="13" alt="" class="flt" style="margin-top:20px;" /> 
<a href="admin_Login.jsp">IMAGE SERVER </a> <img src="images/line.gif" width="3" height="13" alt="" class="flt" style="margin-top:20px;" /> 
<a href="user_Login.jsp" style="color:#7FB600;">USER</a> <img src="images/line.gif" width="3" height="13" alt="" class="flt" style="margin-top:20px;" /></div>
        </div>
      </div>
      <div id="main2">
        <div id="wel_bg">  </div>
      </div>
      <!--top panel ends-->
      <!--content panel starts-->
      <div id="main3">
        <div id="con">
          <div id="content">
            <div id="left"> <h2 class="style1">Sidebar Menu</h2>
              <div class="flt" style="width:260px;padding:15px 0px 0px 9px;"> 
			   
			    <li><a href="user_Main.jsp"style="color:#DD5411;">User Main</a> </li></br>
			    <li><a href="user_Login.jsp"style="color:#DD5411;">Log Out</a> </li></br>
                <p>&nbsp;</p>
              
              </div>
           
			  <h2 class="style1">Main </h2>
            </div>
            <div id="right"> <h2 class="style2" >User :<span class="style1"> <%=(String)application.getAttribute("user")%></span> Profile</h2>
              <div class="flt" style="width:590px;padding:15px 0px 0px 7px;"> 
                <p>
                 
               </p>
                
                <p></p>
                <p><table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
					
					
				
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						
						String user=(String )application.getAttribute("user");
						
						String s1,s2,s3,s4,s5;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s5=rs.getString(7);
								s4=rs.getString(10);
								
								
								
								
								
								
					%>
					<tr>
					<td width="230" rowspan="6" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;"  />
						 </a></div>					</td>
					</tr>
					
					<tr>
					  <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style20 style8 style9 style2 style3" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
					  <td  width="164" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10 style4 style5" style="margin-left:20px;"><%out.println(s1);%></div></td>
					</tr>
					<tr>
					  <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style20 style8 style9 style2 style3" style="margin-left:20px;"><strong>Mobile</strong></div></td>
					  <td  width="164" valign="middle" height="40"><div align="left" class="style23 style9 style10 style4 style5" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
<td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style20 style8 style9 style2 style3" style="margin-left:20px;"><strong>Address</strong></div> </td>                    	
<td  width="164" align="left" valign="middle" height="40"><div align="left" class="style23 style9 style10 style4 style5" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
<td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style20 style8 style9 style2 style3" style="margin-left:20px;"><strong>Date of Birth</strong></div> </td>                    	
<td  width="164" align="left" valign="middle" height="40"><div align="left" class="style23 style9 style10 style4 style5" style="margin-left:20px;"><%out.println(s5);%></div></td>
					</tr>
					<tr>
					  <td   width="145" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style20 style8 style9 style2 style3" style="margin-left:20px;"><strong>Status</strong></div                        ></td>
						<td  width="164" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
					  <div align="left" class="style23 style9 style10 style4 style5" style="margin-left:20px;"><%out.println(s4);%></div></td>
					</tr>
					 
				
					<%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>

					
				</table></p>
                <p>&nbsp;</p>
                <p align="right" class="style3"><a href="user_Main.jsp">Back</a></p>
                <p>&nbsp;</p>
                
              </div>
              <img src="images/cn_bar.gif" width="605" height="1" alt="" class="flt" style="margin-top:15px;" /> 
			  <br/>
			  <h2 class="style2" >Image </h2>
            </div>
          </div>
        </div>
      </div>
      <!--content panel ends-->
      <!--footer panel starts-->
      <div id="main4">
        
      </div>
      <!--footer panel ends-->
    </div>
  </div>
</center>
</body>
</html>
