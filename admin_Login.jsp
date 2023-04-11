<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Login  Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style type="text/css">
<!--
.style1 {color: #7FB600}
.style2 {color: #DD5411}
.style3 {font-size: 15px}
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
			   
			    <li><a href="index.html"style="color:#DD5411;">HOME</a> </li></br>
			    <li><a href="admin_Login.jsp"style="color:#DD5411;">ADMIN</a> </li></br>
			    <li><a href="user_Login.jsp"style="color:#DD5411;">USER</a></li>
			    </br>
                <p>&nbsp;</p>
              
              </div>
           
			  <h2 class="style1">Main </h2>
            </div>
            <div id="right"> <h2 class="style2" >Image Server  Login  Page...!<img src="images/Login.png" width="105" height="150" /> </h2>
              <div class="flt" style="width:590px;padding:15px 0px 0px 7px;"> 
                <p>
                
                <form action="authentication.jsp?type=<%="admin"%>" method="post" id="leavereply">
        	
        	<table width="313" border="0" align="center">
              <tr>
                <td width="140" height="30" class="style1"><div align="center" class="style13 style4 style3 style1">  Name </div></td>
                <td width="163"><div align="center"><input type="text" name="userid" /></div></td>
              </tr>
              <tr>
                <td height="35" class="style1"><div align="center" class="style13 style4 style3 style1">Password</div></td>
                <td><div align="center"><input type="password" name="pass" /></div></td>
              </tr>
              <tr>
			    <td>&nbsp;</td>
                <td height="45">
                  
                  <div align="left">
                    <input type="image" name="imageField" id="imageField" src="images/submit.gif" class="send" />
                  </div></td></tr>
            </table>
			<p>&nbsp;</p>
			
        </form></p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
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
