/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginService extends HttpServlet {

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String name=request.getParameter("uname");
        String pwd=request.getParameter("pwd");
        try {
            LoginHandler lh=new LoginHandler();
            boolean a=lh.authenticate(name, pwd);
            if(a){
                RequestDispatcher rd=request.getRequestDispatcher("Success.jsp");
                
                rd.forward(request, response);
                //response.sendRedirect("Success.jsp");
            }else{
                RequestDispatcher rd=request.getRequestDispatcher("login.html");
                out.println("<h1>Wrong info</h1>");
                rd.include(request,response);
                 }
            }catch(Exception e){} 
        finally {
            out.close();
        }
    }
}