<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
	
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	
	if("admin@gmail.com".equals(email) && "Admin".equals(password)){
		
		session.setAttribute("email",email);
		response.sendRedirect("admin/adminHome.jsp");		
	}
	else{
		
		int z=0;
		try{
			
			Connection con=ConnectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+password+"' ");
			
			while(rs.next())
			{
				z=1;
				session.setAttribute("email",email);
				response.sendRedirect("home.jsp");
			}
			if(z==0){
				session.setAttribute("email", email);
				response.sendRedirect("login.jsp?msg=notexist");
			}
		}catch(Exception ex){
			System.out.println(ex);
			response.sendRedirect("login.jsp?msg=invalid");
		}
	}
%>