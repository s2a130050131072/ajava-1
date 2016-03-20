import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ServletInsertingData extends HttpServlet{
  public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{  
  response.setContentType("text/html");
  PrintWriter out = response.getWriter();
  String url = "jdbc:postgresql://localhost:5433/s2a130050131072";
  Connection con;
  try{
  Class.forName("org.postgresql.Driver");
  con = DriverManager.getConnection(url,"postgres","postgres");
  Statement stmt = con.createStatement();
  out.println("Enrollment No:130050131072<br/>");
  String sql;
      sql = "insert into student values(3,'Paul','Electrical')";
  
  int i = stmt.executeUpdate(sql);
  if(i!=0){
  out.println("The record has been inserted.");
  }
  else{
  out.println("Sorry! Failure");
  }
  stmt.close();
  }
  catch (Exception e){
  System.out.println(e);
  }
  }
}