<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Image Adding</title>
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
			   
			    <li><a href="admin_Main.jsp"style="color:#DD5411;">Admin Main</a> </li></br>
			    <li><a href="admin_Login.jsp"style="color:#DD5411;">Log Out</a> </li></br>
                <p>&nbsp;</p>
              
              </div>
           
			  <h2 class="style1">Main </h2>
            </div>
            <div id="right"> <h2 class="style2" >Upload Image Details . <span class="style1"></span></h2>
              <div class="flt" style="width:590px;padding:15px 0px 0px 7px;"> 
                <p></p>
               <form action="admin_Add_Images1.jsp" method="post" enctype="multipart/form-data">
                <table width="506" border="0"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
				
				<%@ page import ="java.util.*" %>
                <%@ include file="connect.jsp" %>
				<%
			try{	
				ArrayList a1=new ArrayList();
				String str = " select * from titles ";
				Statement st = connection.createStatement();
				ResultSet rs = st.executeQuery(str);
				while(rs.next())
				{
				a1.add(rs.getString(2));
				}
				%>
				
				<tr>
					  <td  width="188" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style3 style7 style1" style="margin-left:20px;"><strong> Select Title </strong></div></td>
					  <td  width="318" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;">
  
				          
					      
        <select id="s1" name="title">
         <option>--Select--</option>
        <% for(int i=0;i<a1.size();i++)
        	  {
        	  %>
           <option><%= a1.get(i)%></option>
           
           <%}%>
        </select>
		</div>
		
			             
                        <div align="right"> New <a href="admin_Add_Titles.jsp">Titles</a>?</div></td>  
			             
					 </td>
					</tr>
				
				
					<tr>
					  <td  width="188" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style3 style7 style1" style="margin-left:20px;"><strong> Name </strong></div></td>
					  <td  width="318" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="name"></div></td>
					</tr>
					<tr>
					  <td  width="188" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style3 style7 style1" style="margin-left:20px;"><strong>  Color </strong></div></td>
					  <td  width="318" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="color"></div></td>
					</tr>
					<tr>
  						<td  width="188" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style3 style7 style1" style="margin-left:20px;"><strong> Description <br />
			            </strong></div></td>
						<td  width="318" valign="middle" height="45"><div align="left" style="margin-left:20px;">
						  <textarea name="desc"></textarea>
					  </div></td>
					</tr>
					<tr>
					  <td  width="188" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style3 style7 style1" style="margin-left:20px;"><strong> Uses </strong></div></td>
					  <td  width="318" align="left" valign="middle" height="45"><div align="left" style="margin-left:20px;"><input type="text" name="uses"></div></td>
					</tr>
					
					  
			            <span class="style8 style1"><strong>
		                </tr>
				          </strong></span>
				      
				    
					
					<tr>
					  <td   width="188" align="left" valign="middle" height="74" style="color: #2c83b0;"><div align="left" class="style3 style8 style1" style="margin-left:20px;"><strong>Select Image </strong></div></td>
						<td  width="318" align="left" valign="middle" height="74" style="color: #2c83b0;">
					  <div align="left" style="margin-left:20px;"><input type="file" name="pic"></div></td>
					</tr>
					<div > <tr><td height="45" colspan="2" id="learn_more" align="center"  style="color:#FFFFFF;"><input type="submit" value="Submit" style="width:100px; height:25px; background-color:#000000; color:#FFFFFF;"/>&nbsp;&nbsp;<input type="reset" name="Reset" style="width:100px; height:25px; background-color:#000000; color:#FFFFFF;"/></td></tr></div>
			</table>
				</form>
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
                <p align="right" class="style3"><a href="admin_Main.jsp">Back</a></p>
                <p align="right" class="style3">&nbsp;</p>
              </div>
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
