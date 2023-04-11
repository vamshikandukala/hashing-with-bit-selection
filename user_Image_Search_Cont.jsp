<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search By Content</title>
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
.style6 {font-size: 16px}
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
<a href="user_Login.jsp" style="color:#7FB600;">USER</a> <img src="images/line.gif" width="3" height="13" alt="" class="flt" style="margin-top:20px;" /> 
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
			   
			    <li><a href="user_Main.jsp"style="color:#DD5411;">User Main</a> </li></br>
			    <li><a href="user_Login.jsp"style="color:#DD5411;">Log Out</a> </li></br>
                <p>&nbsp;</p>
              
              </div>
           
			  <h2 class="style1">Main </h2>
              </div>
            <div id="right"> <h2 class="style2" >Search Image By Content Keyword </h2>
              <div class="flt" style="width:590px;padding:15px 0px 0px 7px;"> 
                <p>
                <DIV CLASS="article">
              <H2>&nbsp;</H2>
            <FORM ACTION="user_Image_Search_Cont.jsp" METHOD="post">
                
                <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="139"><div align="center" class="style3">
                        <div align="right" class="style12">
                          <div align="center">Keyword</div>
                        </div>
                      </div></TD>
                      <TD width="187">
                        <div align="left"><INPUT TYPE="text" name="keyword" /></div></TD>
						<TD width="83"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3"><div class="style2"><div align="center" class="style13">( searching content Based on Image Description)</div></div></TD>
                    </TR>
                  </TABLE>
                </DIV>
                <P>&nbsp; </P>
            </FORM>
          </DIV>
                <p>

                  <%
							try
							{
							
							
								
								String title="",desc="",l_Desc="",name="",rank="",Encoded_Title="",Decoded_Desc="",Decoded_Name="",hash_Sign="";
								String input= request.getParameter("keyword");	
								String l_Input = input.toLowerCase();
								
								%><p class="style6">Searched Keyword :<span class="style1"> <%=input%></span></p>
                  <%
								 
								
								String str = "select * from titles";
								Statement st=connection.createStatement();
								ResultSet rs = st.executeQuery(str);
								while(rs.next())
								{
								    title = rs.getString(2);
									
									String keys = "ef50a0ef2c3e3a5f";
			                        byte[] keyValue = keys.getBytes();
      			                    Key key = new SecretKeySpec(keyValue,"AES");
      			                    Cipher c = Cipher.getInstance("AES");
      			                    c.init(Cipher.ENCRYPT_MODE,key);
				                    String keyy = String.valueOf(keyValue);
				                    Encoded_Title = new String(Base64.encode(title.getBytes()));
								   
								   
								   
								   String str1 = "Select * from image_details where title='"+Encoded_Title+"' ";
								   Statement st1 = connection.createStatement();
								   ResultSet rs1 =st1.executeQuery(str1);
								   
								   int count = 1; 
								  
								   while(rs1.next())
								   {
								   hash_Sign = rs1.getString(3);
								   desc = rs1.getString(6);
								   
								   Decoded_Desc = new String(Base64.decode(desc.getBytes()));
								   l_Desc=Decoded_Desc.toLowerCase();
								   
								   
								
									if ( l_Desc.indexOf(l_Input)>=0 && count==1)
									{
									
								     count=count+1;
									 String str2 = "select * from image_details where title='"+Encoded_Title+"' order by rank desc ";
									 Statement st2 = connection.createStatement();
									 ResultSet rs2 = st2.executeQuery(str2);
									 while (rs2.next())
									 {
									 name = rs2.getString(4);
									 rank = rs2.getString(10);
									 
									 Decoded_Name = new String(Base64.decode(name.getBytes()));
								
							         %>
									 <tr>
									<td>
								<a class="#" id="img1" href="user_Image_Details.jsp?name1=<%=name%>&name=<%=Decoded_Name%>&searched_Type=<%="Content Search"%>&type=<%=input%>" >
			                    <input  name="image" type="image" src="Image_Pic.jsp?s1=<%=name%>" style="width:100px; height:110px;"/><%=Decoded_Name%></a>
									</td>
								
									<tr>
									 
									 
		
				
				<%
				
						  	}
						 }
				
	
				}}
						
					}catch(Exception e){						  
						e.printStackTrace();
						out.print(e.getMessage());
					}
						  
				%>
               </p>
                
                
                <p align="right" class="style3">&nbsp;</p>
                <p align="right" class="style3">&nbsp;</p>
                <p align="right" class="style3">&nbsp;</p>
                <p align="right" class="style3">&nbsp;</p>
                <p align="right" class="style3"><a href="user_Image_Search.jsp">Back</a></p>
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
