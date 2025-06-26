package project;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {

	public static Connection getCon()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshop","root","");
			return con;
		}
		catch(Exception ex) {
			System.out.println(ex);
			return null;
		}
	}
}
