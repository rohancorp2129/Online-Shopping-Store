<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("insert into product values(?,?,?,?,?)");
	
	pst.setString(1, id);
	pst.setString(2, name);
	pst.setString(3, category);
	pst.setString(4, price);
	pst.setString(5, active);
	
	pst.executeUpdate();
	response.sendRedirect("addNewProduct.jsp?msg=done");
	
}catch(Exception e)
{
	response.sendRedirect("addNewProduct.jsp?msg=wrong");

}
%>