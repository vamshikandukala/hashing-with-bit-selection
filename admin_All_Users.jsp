<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Users </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style type="text/css">
<!--
.style1 {color: #7FB600}
.style2 {color: #DD5411}
.style3 {font-size: 15px}
.style4 {color: #000000}
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
            <div id="right"> <h2 class="style2" >All Users &amp; User Status. <span class="style1"></span></h2>
              <div class="flt" style="width:590px;padding:15px 0px 0px 7px;"> 
                <p></p>
               <table width="574" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="26" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style2">ID</div></td>
              <td  width="116" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style2">User Image</div></td>
              <td  width="102" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style2">User Name</div></td>
			  <td  width="107" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style2">Email</div></td>
			  <td  width="106" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style2">Date Of Birth</div></td>
              <td  width="83" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style21 style7 style6 style5 style2">Status</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(7);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(10);
							
								
								
								
								
							
						
					%>
            <tr>
              <td  valign="baseline" height="0"><p class="style22 style5 style3 style4">&nbsp;</p>
                  <div align="center" class="style22 style5 style3 style4">
                   
                      <%out.println(i);%>
                    
                    <p>&nbsp; </p>
                  </div></td>
				  
              <td width="116" rowspan="1" ><div class="style22 style5 style3 style4" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;"  />
              </a> </div></td>
			  <td  valign="baseline" height="0"><p class="style22 style5 style3 style4">&nbsp;</p>
                  <div align="center" class="style22 style5 style3 style4">
                   
                      <%out.println(s1);%>
                   
                    <p>&nbsp; </p>
                  </div></td>
				  <td  valign="baseline" height="0"><p class="style22 style5 style3 style4">&nbsp;</p>
                  <div align="center" class="style22 style5 style3 style4">
                  
                      <%out.println(s2);%>
                   
                    <p>&nbsp; </p>
                  </div></td>
				  <td  valign="baseline" height="0"><p class="style22 style5 style3 style4">&nbsp;</p>
                  <div align="center" class="style22 style5 style3 style4">
                    
                      <%out.println(s3);%>
                  
                    <p>&nbsp; </p>
                  </div></td>
    
          
              <%
						if(s6.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td  width="83" valign="baseline" height="0" style="color:#000000;"align="center"><div align="center" class="style22 style5 style3 style4">
                
                <p>&nbsp;</p>
       <a href="admin_Status.jsp?id=<%=i%>">waiting</a>
           
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="18" height="0"  valign="baseline"><p class="style22 style5 style3 style4">&nbsp;</p>
                  <div align="center" class="style22 style5 style3 style4">
                    <%out.println(s6);%>
              </div></td>
              <%
						}
						%>
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
            <tr>
              
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
			  <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
            </tr>
          </table>
               </p>
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
