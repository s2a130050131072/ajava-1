import java.sql.*;
class MyData72{
	public Connection SetConnection(String database){
		Connection con=null;
		try{
			Class.forName("org.postgresql.Driver");
			con=DriverManager.getConnection("jdbc:postgresql://localhost:5433/"+database,"postgres","postgres");
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return con;
	}
}