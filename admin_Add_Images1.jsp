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
            <div id="right"> <h2 class="style2" >Uploaded Image Details . <span class="style1"></span></h2>
              <div class="flt" style="width:590px;padding:15px 0px 0px 7px;"> 
                <p></p>
              <%
				try {
					
					ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null;
					
					String file=null;
					
					
					String title=null,name=null,color=null,desc=null,uses=null,image=null;
					
					
					String checkBok=" ";
					int ff=0;
					String bin = "";
					FileInputStream fs=null;
					File file1 = null;	
					
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("title"))
							{
								title=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("name"))
							{
								name=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("color"))
							{
								color=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("desc"))
							{
								desc=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("uses"))
							{
								uses=multi.getParameter(paramname);
							}
							
							
							
						}
					
					
							
			        	  int f = 0;
							Enumeration files = multi.getFileNames();	
							while (files.hasMoreElements()) 
							{
								paramname = (String) files.nextElement();
								
								if(paramname != null)
								{
									f = 1;
									image = multi.getFilesystemName(paramname);
									String fPath = context.getRealPath("Gallery\\"+image);
									file1 = new File(fPath);
									fs = new FileInputStream(file1);
									list.add(fs);
								
									
								}
						 }		
							
					FileInputStream fs1 = null;
							//name=dirName+"\\Gallery\\"+image;
							int lyke=0;
							//String as="0";
							//image = image.replace(".", "_b.");
			if(title.equals("--Select--"))
			{
			%>
			<p class="style4">Please select the Title Because <span class="style2"> <%=title%></span> is not a proper title</p>
			<p align="right" class="style3"><a href="admin_Add_Images.jsp">Back</a></p>
			<%
			}	
			else
			{	
				
                String keys1 = "ef50a0ef2c3e3a5f";
      		    KeyPairGenerator kg1 = KeyPairGenerator.getInstance("RSA");
				Cipher encoder1 = Cipher.getInstance("RSA");
				KeyPair kp1 = kg1.generateKeyPair();
				Key pubKey1 = kp1.getPublic();
				byte[] pub1 = pubKey1.getEncoded();
				String encryptedTitle1 = new String(Base64.encode(title.getBytes()));
			    String encryptedName1 = new String(Base64.encode(name.getBytes()));
				
String str = " Select * from image_details where name='"+encryptedName1+"' and title='"+encryptedTitle1+"' ";
Statement st = connection.createStatement();
ResultSet rs = st.executeQuery(str);
if(rs.next())
{
%><p class="style4">Image<span class="style2"> <%=name%></span> already Exixts in<span class="style2"> <%=title%></span></p>
  <p align="right" class="style3"><a href="admin_Add_Images.jsp">Back</a></p>
<%
}
else
{

            String keys = "ef50a0ef2c3e3a5f";
      		String h1="";
      		String filename="filename.txt";
      			
      		    KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
				Cipher encoder = Cipher.getInstance("RSA");
				KeyPair kp = kg.generateKeyPair();
				Key pubKey = kp.getPublic();
				byte[] pub = pubKey.getEncoded();
				String encryptedTitle = new String(Base64.encode(title.getBytes()));
			    String encryptedName = new String(Base64.encode(name.getBytes()));
			    String encryptedDesc = new String(Base64.encode(desc.getBytes()));
				String encryptedUses = new String(Base64.encode(uses.getBytes()));
			
				
      		    PrintStream p = new PrintStream(new FileOutputStream(filename)); 
			    p.print(new String(title));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(filename);        
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
 
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
 
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			
			h1 = bi1.toString(16);
			
			

				String key = String.valueOf(pub);

String rank = "0";
PreparedStatement ps=connection.prepareStatement("insert into image_details(title,hash_sign,name,color,img_desc,uses,img_file,image,rank) values(?,?,?,?,?,?,?,?,?)");
							ps.setString(1,encryptedTitle);
							ps.setString(2,h1);
							ps.setString(3,encryptedName);
							ps.setString(4,color);	
							ps.setString(5,encryptedDesc);
							ps.setString(6,encryptedUses);
							ps.setString(7,image);
							ps.setBinaryStream(8, (InputStream)fs, (int)(file1.length()));
							ps.setString(9,rank);
							ps.executeUpdate();
							
					
					%>
					<p class="style4">Image<span class="style2"> <%=name%></span> with title <span class="style2"> <%=title%></span> Added Sucessfully </p>
					<p align="right" class="style3"><a href="admin_Add_Images.jsp">Back</a></p><%
						} 
						}}
						catch (Exception e) 
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
