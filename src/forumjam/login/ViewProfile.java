package forumjam.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ViewProfile
 */
@WebServlet("/ViewProfile")
public class ViewProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String user_name = request.getSession().getAttribute("username").toString();
		String topic = request.getParameter("newDiscussionTopic_1");
		String description = request.getParameter("newDiscussion_1");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@ee417.c7clh2c6565n.eu-west-1.rds.amazonaws.com:1521:EE417", "ee_user", "ee_pass");
			PreparedStatement ps = con.prepareStatement("insert into threads values(?,?,?)");
			HttpSession session = request.getSession();
			ps.setString(1, user_name);
	    	ps.setString(2, topic);
	    	ps.setString(3, description);
	        ps.executeUpdate();
	        request.setAttribute("postMessage", session.getAttribute("username"));
			response.sendRedirect("thread.jsp");
			con.close();
			
		}catch(Exception e) {
			response.getWriter().println(e);
	}

	}
}
