import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletConfig;
public class ServletNaturalJoiningTables extends HttpServlet {
	
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException{
		res.setContentType("text/html");
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			PrintWriter out=re.getWriter();
			Class.forName("org.postgresql.Driver");
			con=DriverManager.getConnection("jdbc:postgresql://localhost:5433/s2a130050131072","postgres","postgres");
			String query="select * from h_table natural join remoteregistration;";
			ps=con.prepareStatement(query);
			out.println("<h1>Natural Left Join</h1><br/>");
			out.println("<h2>Enrollment No=130050131072</h2>");
			out.println("<html><body>");
			out.println("<table border='3'>");
			out.println("<tr><th>Roll no</th><th>Name</th><th>Password</th><th>Branch</th><tr>");
			rs=ps.executeQuery();
			while(rs.next()){
				String id=rs.getInt("rollno");
				String name = rs.getString("name");
				String password = rs.getString("pwd");
				String br=rs.getString("branch");
				out.println("<tr><td>" + id + "</td><td>" + name + "</td><td>"+ password +"</td><td>"+ br+"</td></tr>"); 
			}
			out.println("</table>");
            out.println("</html></body>");
		}
		catch(IOException i){
			System.out.println("IOException");
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
}