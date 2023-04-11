<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style type="text/css">
<!--
.style1 {color: #7FB600}
.style2 {color: #DD5411}
.style4 {
	color: #FF0000;
	font-weight: bold;
}
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
<a href="admin_Login.jsp" style="color:#7FB600;">IAMGE SERVER </a> <img src="images/line.gif" width="3" height="13" alt="" class="flt" style="margin-top:20px;" /> 
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
			   
			    <li><a href="admin_All_Users.jsp"style="color:#DD5411;">View All Users and Authorize </a> </li></br>
				<li><a href="admin_Add_Images.jsp"style="color:#DD5411;">Add Images</a> </li></br>
				<li><a href="admin_All_Images.jsp"style="color:#DD5411;">View All Added Images</a> </li></br>
				<li><a href="admin_All_Images_Similar_HashSign.jsp"style="color:#DD5411;">View All Images of Similar Hash Sign</a> </li>
				</br>
				<li><a href="admin_View_NonSimilarHashSign_Images.jsp"style="color:#DD5411;">View  All Images of Different Hashing and Bit</a> </li>
				</br>
				<li><a href="admin_View_Distance.jsp"style="color:#DD5411;">View The Distance between Images</a> </li></br>
				<li><a href="admin_All_Users_Transaction.jsp"style="color:#DD5411;">View All User Transaction</a> </li></br>
			    <li><a href="admin_Login.jsp"style="color:#DD5411;">Log Out</a> </li></br>
                <p>&nbsp;</p>
              
              </div>
           
			  <h2 class="style1">&nbsp;</h2>
              </div>
            <div id="right"> <h2 class="style2" >Welcome to Main of : <span class="style1"><%=(String)application.getAttribute("admin")%> </span></h2>
              <div class="flt" style="width:590px;padding:15px 0px 0px 7px;"> 
                <div align="justify" class="style4">Online hashing methods have been intensively investigated in semantic image retrieval due to their efficiency in learning the hash functions with one pass through the streaming data. Among the online hashing methods, those based on the target codes are usually superior to others. However, the target codes in these methods are generated heuristically in advance and cannot be learned online to capture the characteristics of the data. In this paper, we propose a new online hashing method in which the target codes are constructed according to the data characteristics and are used to learn the hash functions online. By designing a metric to select the effective bits online for constructing the target codes, the learned hash functions are resistant to the bit-flipping error. At the same time, the correlation between the hash functions is also considered in the designed metric. Hence, the hash functions have low redundancy. Extensive experiments show that our method can achieve comparable or better performance than other online hashing methods on both the static database and the dynamic database..                </div>
                <p>&nbsp;</p>
                
              </div>
              <img src="images/cn_bar.gif" width="605" height="1" alt="" class="flt" style="margin-top:15px;" /> 
			  <br/>
			  <h2 class="style2" >&nbsp;</h2>
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
