<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Images of Similar Hash Sign</title>
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
.style4 {color: #000000}
.style5 {font-size: 16px}
.style6 {color: #FF0000}
.style7 {color: #FF6600}
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
            <div id="right"> <h2 align="left" class="style2" >View All Images of Similar Hash_Sign . <span class="style1"></span></h2>
              <div class="flt" style="width:590px;padding:15px 0px 0px 7px;"> 
                <p></p>
				<p></p>
				<p>
			    <form action="admin_View_SimilarHashSign_Images.jsp" method="post">
                <table width="506" border="0"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
				
				
				<%
			try{	
			    String title="",hash_Sign="";
				
				ArrayList a1=new ArrayList();
				String str = " select * from titles ";
				Statement st = connection.createStatement();
				ResultSet rs = st.executeQuery(str);
				while(rs.next())
				{
				title = rs.getString(2);
				String keys1 = "ef50a0ef2c3e3a5f";
      		    KeyPairGenerator kg1 = KeyPairGenerator.getInstance("RSA");
				Cipher encoder1 = Cipher.getInstance("RSA");
				KeyPair kp1 = kg1.generateKeyPair();
				Key pubKey1 = kp1.getPublic();
				byte[] pub1 = pubKey1.getEncoded();
				String encrypted_Title = new String(Base64.encode(title.getBytes()));
				
				String str1 = "Select * from image_details where title='"+encrypted_Title+"' ";
				Statement st1 = connection.createStatement();
				ResultSet rs1 = st1.executeQuery(str1);
				if(rs1.next())
				{
				a1.add(title+(" ")+rs1.getString(3));
				}
				}
				%>
				
				<tr>
					  <td  width="210" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style3 style7 style1" style="margin-left:20px;"><strong> Select The Hashing with Bit </strong></div></td>
					  <td  width="295" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;">
  
				          
					      
        <select id="s1" name="title+hash_Sign">
         <option>--Select--</option>
        <% for(int i=0;i<a1.size();i++)
        	  {
        	  %>
           <option><%= a1.get(i)%></option>
           
           <%}%>
        </select>
		</div>
		
			             
                      </td>  
			             
					 <td width="1"></td>
				
					<div > <tr><td height="45" colspan="2" id="learn_more" align="center"  style="color:#FFFFFF;"><input type="submit" value="View" style="width:100px; height:25px; background-color:#000000; color:#FFFFFF;"/>
&nbsp;&nbsp;</td></tr></div>
			</table>
				</form>
				 <p>
                   <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
                 </p>
				 </p>
<p>&nbsp;</p>
				 <p>&nbsp;</p>
				 <p>&nbsp;                 </p>
				 <p>&nbsp;</p>
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
