<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Image Adding</title>
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
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style type="text/css">
<!--
.style1 {color: #7FB600}
.style2 {color: #DD5411}
.style3 {font-size: 15px}
.style4 {font-size: 14px}
.style5 {color: #DD5411; font-size: 14px; }
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
            <div id="right"> <h2 class="style2" >All Similar Hash_Sign Image  . <span class="style1"></span></h2>
              <div class="flt" style="width:590px;padding:15px 0px 0px 7px;"> 
                <p></p>
				<p>
				<%
				try
				{
				String str1 ="",title_HashSign="",hash_Code="",title="",name="",rank="";
				
				title_HashSign = request.getParameter("title+hash_Sign");
				
				String[] split = title_HashSign.split(" ");
				
				for(int i=split.length-1;i>0;i--)
				{
				 hash_Code = split[i];
				}
				String str = "Select * from image_details where hash_sign='"+hash_Code+"' ";
				Statement st = connection.createStatement();
				ResultSet rs = st.executeQuery(str);
				while(rs.next())
				{
				title = rs.getString(2);
				name = rs.getString(4);
				rank = rs.getString(10);
				
				String Decoded_Title = new String(Base64.decode(title.getBytes()));
				String Decoded_Name = new String(Base64.decode(name.getBytes()));
								
							         %>
									 
			   <tr>
			   <td><span class="style4">Title  : </span><span class="style15"> <%=Decoded_Title%> <span class="style2"><br/></span></td>
			    <td><span class="style4">Hash_Code :</span>  <span class="style5"><%=hash_Code%></span><span class="style15"> <span class="style2"><br/>
	  </span></span></td>
				 
			   <td><a class="#" id="img1" href="admin_Image_Details.jsp?name1=<%=name%>&name=<%=Decoded_Name%>">
			            <input  name="image" type="image" src="Image_Pic.jsp?s1=<%=name%>" style="width:145px; height:150px;"  /></a>
				 </td>
				 
				
				 
			   </tr>
				<p></p>					 
									 
               
			<%	}
				
			    }catch(Exception e)
				{
				out.print(e);
				}
				%>
				</p>
              
               </p>
                <p>&nbsp;</p>
                <p align="right" class="style3"><a href="admin_All_Images_Similar_HashSign.jsp">Back</a></p>
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
