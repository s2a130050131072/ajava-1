import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;

public class MyTagHandler extends SimpleTagSupport {

  @Override
  public void doTag() throws JspException, IOException {
    JspWriter out = getJspContext().getOut();
	Date date = new Date();
	out.print("<h2 align=\"center\">" +date.toString()+"</h2>");
    out.println("Hello Custom Tag!");
  }
}