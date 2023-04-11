<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Image Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style type="text/css">
<!--
.style1 {color: #7FB600}
.style2 {color: #DD5411}
.style3 {font-size: 15px}
.style4 {font-size: 16px}
.style5 {color: #000000}
.style6 {color: #FFFF00}
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
<a href="admin_Login.jsp" style="color:#7FB600;">IMAGE SERVER </a> <img src="images/line.gif" width="3" height="13" alt="" class="flt" style="margin-top:20px;" /> 
<a href="user_Login.jsp">USER</a> <img src="images/line.gif" width="3" height="13" alt="" class="flt" style="margin-top:20px;" /> 
<a href="project_Details.html"></a> </div>
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
			   
			    <li><a href="admin_Main.jsp"style="color:#DD5411;">Admin Main</a> </li></br>
			    <li><a href="admin_Login.jsp"style="color:#DD5411;">Log Out</a> </li></br>
                <p>&nbsp;</p>
              
              </div>
           
			  <h2 class="style1">Main </h2>
            </div>
            <div id="right"> <h2 class="style2" ><span class="style1"><%= request.getParameter("I_Names")%></span> Images Details</h2>
              <div class="flt" style="width:590px;padding:15px 0px 0px 7px;"> 
                <p>
               
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
           

				<%
	
      	
	

      	try 
	{
      		
      	   
      	String Decoded_Title="",Decoded_Name="",Decoded_Desc="",sign="",Decoded_Uses="",color="",rank="";
      	   String I_Name = request.getParameter("I_Name");
           
           String str="select * FROM image_details where name='"+I_Name+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(str);
          
	   if( rs.next() )
	   {
			String title = rs.getString(2);
			 sign = rs.getString(3);
			String desc = rs.getString(6);
			String uses = rs.getString(7);
		 color = rs.getString(5);
		 rank = rs.getString(10);
			
				 
				  String keys = "ef50a0ef2c3e3a5f";
			      byte[] keyValue = keys.getBytes();
      			  Key key = new SecretKeySpec(keyValue,"AES");
      			  Cipher c = Cipher.getInstance("AES");
      			  c.init(Cipher.ENCRYPT_MODE,key);
				  String keyy = String.valueOf(keyValue);
				  Decoded_Title = new String(Base64.decode(title.getBytes()));
				  Decoded_Name = new String(Base64.decode(I_Name.getBytes()));
      	          Decoded_Desc = new String(Base64.decode(desc.getBytes()));
				   Decoded_Uses = new String(Base64.decode(uses.getBytes()));
		
	   }
	   
		
		
%>

 <table border="1" align="center" cellpadding="0" cellspacing="0" >
				 				<tr >
								    <td width="217" rowspan="7" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > 
									    <div align="center"><a class="#" id="img1" href="#" >
		                                <input  name="image" type="image" src="Image_Pic.jsp?s1=<%=I_Name%>" style="width:180px; height:185px;"  />
								                                  </a> </div>
								  </div></td>
								  	<td width="163" height="35" bgcolor="#FF0000" >
								  <div align="center" class="style4 style6"><span class="style17">Title</span> </div></td>
							      <td width="179"><div align="center" class="style7 style5"><span class="style17"><%= Decoded_Title%></span></div></td>
		  						<tr/>
				    
				    
				    			<tr>
									<td width="163" height="35" bgcolor="#FF0000">
						  		  <div align="center" class="style4 style6"><span class="style17">Image Name</span> </div></td>
								    <td><div align="center" class="style7 style5"><span class="style17"><%= Decoded_Name%></span></div></td>
								</tr>
								<tr>
									<td width="163" height="35" bgcolor="#FF0000">
								  <div align="center" class="style4 style6"><span class="style17">color </span> </div></td>
								    <td><div align="center" class="style7 style5"><span class="style17"><%=color%></span></div></td>
				    			</tr>
								<tr>
										<td width="163" height="35" bgcolor="#FF0000">
								  <div align="center" class="style4 style6"><span class="style17">Uses</span></div></td>
								        <td><div align="center" class="style7 style5"><span class="style17"><%= Decoded_Uses%></span></div></td>
								</tr>
								<tr>
										<td width="163" height="50" bgcolor="#FF0000">
								  <div align="center" class="style4 style6"><span class="style17">Image_Description</span></div></td>
								        <td><div align="center" class="style7 style5"><span class="style17"><%= Decoded_Desc%></span></div></td>
								</tr>
								<tr>
										<td width="163" height="35" bgcolor="#FF0000">
								  <div align="center" class="style4 style6"><span class="style17">Rank</span></div></td>
								        <td><div align="center" class="style7 style5"><span class="style17"><%=rank%></span></div></td>
								</tr>
				</table>
<%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		
			</p>
                <p>&nbsp;</p>
                <p align="right" class="style3"><a href="admin_All_Images.jsp">Back</a></p>
                <p align="right" class="style3">&nbsp;</p>
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
