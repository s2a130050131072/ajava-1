import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletConfig;
public class ServletInsertingDataUsingHtml extends HttpServlet {
	
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException{
		re.setContentType("text/html");
		Connection con=null;
		PreparedStatement ps=null;
		try{
			PrintWriter out=re.getWriter();
			String name=req.getParameter("name");
			String password=req.getParameter("pwd");
			Class.forName("org.postgresql.Driver");
			con=DriverManager.getConnection("jdbc:postgresql://localhost:5433/s2a130050131072","postgres","postgres");
			out.println("<h2>Enrollment No=130050131072</h2>");
			ps=con.prepareStatement("insert into h_table values(?,?)");
			ps.setString(1,name);
			ps.setString(2,password);
			
			int i=ps.executeUpdate();
			if(i!=0){
				out.println("<h2>Record has been inserted</h2>");
			}
			else{
				out.println("<h2>sorry! Failure</h2>");
			}
		}
		catch(IOException i){
			System.out.println("IOException");
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
}