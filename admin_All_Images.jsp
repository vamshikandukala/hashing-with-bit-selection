<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Images</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style type="text/css">
<!--
.style1 {color: #7FB600}
.style2 {color: #DD5411}
.style3 {font-size: 15px}
.style4 {font-size: 16px}
.style6 {font-size: 16px; color: #000000; }
.style7 {font-size: 16px; color: #DD5411; }
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
            <div id="right"> <h2 class="style2" >View All Images With It's Ranks(Click on Image)<span class="style1"></span></h2>
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
					  
						String s1,s2,s3,s4,s5,s6;
						int i=1;
						try 
						{
						String str1 ="Select * from titles ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						
						while(rs1.next())
						{
						String title=rs1.getString(2);
						
						String keys = "ef50a0ef2c3e3a5f";
			            byte[] keyValue = keys.getBytes();
      			        Key key = new SecretKeySpec(keyValue,"AES");
                        Cipher c = Cipher.getInstance("AES");
      			        c.init(Cipher.ENCRYPT_MODE,key);
				        String keyy = String.valueOf(keyValue);
      	                String Decripted_title = new String(Base64.encode(title.getBytes()));
						
						
						   	String query="select * from image_details where title='"+Decripted_title+"' order by rank desc"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count = 1;
								
					   		while ( rs.next() )
					   		{
							
							if(count==1)
			{
			%>
			<p class="style6"><span class="style2"><%=title%> </span>Related Details</p>
			<%
			}
			count=count+1;
							
							    s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(7);
								s4=rs.getString(10);
			
							
						String keys1 = "ef50a0ef2c3e3a5f";
			            byte[] keyValue1 = keys1.getBytes();
      			        Key key1 = new SecretKeySpec(keyValue,"AES");
                        Cipher c1 = Cipher.getInstance("AES");
      			        c1.init(Cipher.ENCRYPT_MODE,key1);
				        String keyy1 = String.valueOf(keyValue1);
      	                String Decripted_Name = new String(Base64.decode(s1.getBytes()));
						String Decripted_Uses = new String(Base64.decode(s3.getBytes()));
						
							
						
					%>
					
					
            <tr> <td><a class="#" id="img1" href="admin_All_Images_Delails.jsp?I_Name=<%=s1%>&I_Names=<%=Decripted_Name%>" >
			     <input  name="image" type="image" src="Image_Pic.jsp?s1=<%=s1%>" style="width:145px; height:150px;"/></a>						 
				 </td>
				 <td class="style4">Rank : <span class="style2"><%=s4%></span></td>
				 <td class="style7"></td>
            </tr>
			
            <%
				
						}
					}
				
						
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
           
          
			</p>
               
                <p align="right" class="style3"><a href="admin_Main.jsp">Back</a></p>
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
