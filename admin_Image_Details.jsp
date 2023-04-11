<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Image Details</title>
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
<%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
<%@ page import ="java.math.BigInteger" %>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style type="text/css">
<!--
.style1 {color: #7FB600}
.style2 {color: #DD5411}
.style3 {font-size: 15px}
.style4 {font-size: 16px}
.style5 {color: #000000}
.style7 {color: #FFFF00}
.style9 {color: #FF0000; font-weight: bold; }
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
            <div id="right"> <h2 class="style2" > Image <span class="style1"><%=request.getParameter("name")%></span> Details . </h2>
              <div class="flt" style="width:590px;padding:15px 0px 0px 7px;"> 
                <p></p>
              <p>   <%
      	try 
	{
           String name="",name1="",searched_Type="",type="",user="";
		   String title="",hash_sign="",color="",desc="",uses="";
		   int rank = 0,i=0,rank1=0;
		   
	       String strDate="",strTime="",dt="";
		   
		    
			name1 = request.getParameter("name1");
			
			
		   String str="select * from image_details where name='"+name1+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(str);
		   
	if ( rs.next() )
	   {
		i = rs.getInt(1);
		title = rs.getString(2);
		hash_sign = rs.getString(3);
		color = rs.getString(5);
		desc = rs.getString(6);
		uses = rs.getString(7);
		rank = rs.getInt(10);
		rank1 = rank+1;
		
		
		   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

		   Date now = new Date();

		   strDate = sdfDate.format(now);
		   strTime = sdfTime.format(now);
		   dt = strDate + "   " + strTime;
		   
		
	
		        String keys1 = "ef50a0ef2c3e3a5f";
      		    KeyPairGenerator kg1 = KeyPairGenerator.getInstance("RSA");
				Cipher encoder1 = Cipher.getInstance("RSA");
				KeyPair kp1 = kg1.generateKeyPair();
				Key pubKey1 = kp1.getPublic();
				byte[] pub1 = pubKey1.getEncoded();
				String Decrypted_Title = new String(Base64.decode(title.getBytes()));
				String Decrypted_Name = new String(Base64.decode(name1.getBytes()));
				String Decrypted_Desc = new String(Base64.decode(desc.getBytes()));
				String Decrypted_Uses = new String(Base64.decode(uses.getBytes()));
									
	   
	
%>
          </p>
          
 <table border="1" align="center" cellpadding="0" cellspacing="0" >
				 				<tr >
								    <td width="217" rowspan="7" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > 
									    <div align="center"><a class="#" id="img1" href="#" >
		                                <input  name="image" type="image" src="Image_Pic.jsp?s1=<%=name1%>" style="width:180px; height:185px;"  />
								                                  </a> </div>
								  </div></td>
								  	<td width="163" height="35" bgcolor="#FF0000" >
								  <div align="center" class="style4 style7"><span class="style17">Title</span> </div></td>
							      <td width="179"><div align="center" class="style9"><span class="style17"><%= Decrypted_Title%></span></div></td>
		  						<tr/>
				    
				    
				    			<tr>
									<td width="163" height="35" bgcolor="#FF0000">
						  		  <div align="center" class="style4 style7"><span class="style17">Image Name</span> </div></td>
								    <td><div align="center" class="style9"><span class="style17"><%= Decrypted_Name%></span></div></td>
								</tr>
								<tr>
									<td width="163" height="35" bgcolor="#FF0000">
								  <div align="center" class="style4 style7"><span class="style17">color </span> </div></td>
								    <td><div align="center" class="style9"><span class="style17"><%=color%></span></div></td>
				    			</tr>
								<tr>
										<td width="163" height="35" bgcolor="#FF0000">
								  <div align="center" class="style4 style7"><span class="style17">Uses</span></div></td>
								        <td><div align="center" class="style9"><span class="style17"><%= Decrypted_Uses%></span></div></td>
								</tr>
								<tr>
										<td width="163" height="50" bgcolor="#FF0000">
								  <div align="center" class="style4 style7"><span class="style17">Image_Description</span></div></td>
								        <td><div align="center" class="style9"><span class="style17"><%= Decrypted_Desc%></span></div></td>
								</tr>
								<tr>
										<td width="163" height="35" bgcolor="#FF0000">
								  <div align="center" class="style4 style7"><span class="style17">Rank</span></div></td>
								        <td><div align="center" class="style9"><span class="style17"><%=rank%></span></div></td>
								</tr>
				</table>
      
  
						<%
						
						
						}
						connection.close();
						
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
 
               </p>
                <p>&nbsp;</p>
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
