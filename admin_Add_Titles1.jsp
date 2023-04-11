<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>

<%
			       
					
	ArrayList list = new ArrayList();
					
	ServletContext context = getServletContext();
					
	String dirName =context.getRealPath("Gallery/");
					
	String title=null,categorie=null,location1=null,sk=null,bin = "", paramname=null;
					
	FileInputStream fs=null;
					
	File file1 = null;	
		try {
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
			Enumeration params = multi.getParameterNames();
		while (params.hasMoreElements()) 
			{
			paramname = (String) params.nextElement();
							
		if(paramname.equalsIgnoreCase("title"))
			{
			title=multi.getParameter(paramname);
			}
			}
				
			String str  = "Select * from titles where title='"+title+"' ";	
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(str);
			if(rs.next())
			{
			%>
<style type="text/css">
<!--
.style4 {font-size: 16px}
.style6 {color: #42ac1f}
-->
</style>
<p class="style4">The name of the Title<span class="style6"> <%=title%></span> already Exists</p>
<p align="left" class="style7"><a href="admin_Add_Titles.jsp">Back</a>
<%
			}
			else
			{
			String strQuery2 = "insert into titles(title) values('"+title+"')";
			connection.createStatement().executeUpdate(strQuery2);
			response.sendRedirect("admin_Add_Images.jsp");  
			}		
			}
			catch (Exception e) 
			{
			out.println(e.getMessage());
			}
			
%>
