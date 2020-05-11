package forumjam.login;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/onlylogin")
public class onlyLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		
			String user_name = request.getParameter("username");
			Cookie cookie = new Cookie("username", user_name + "");
			
			String password = request.getParameter("password_1");
			HttpSession session = request.getSession();
			Integer count = (Integer)session.getAttribute("count");
			if(count==null) {
				count = new Integer(1);
		
			}
			else {
				count = new Integer(count.intValue()+1);
	
			}
			session.setAttribute("count", count);
			session.setAttribute("username", user_name);
			String dbName = null;
			String dbPassword = null;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@ee417.c7clh2c6565n.eu-west-1.rds.amazonaws.com:1521:EE417", "ee_user", "ee_pass");
			PreparedStatement ps = con.prepareStatement("select * from users where username = ? and password = ?");
			ps.setString(1, user_name);
	    	ps.setString(2, password);
	    	ResultSet rs = ps.executeQuery();
	    	while(rs.next()) {
	    		dbName = rs.getString(2);
	    		dbPassword = rs.getString(3);
	    	}
	    	if(user_name.equals(dbName) && password.equals(dbPassword))
	    	{
	    		session.setAttribute("username", dbName);
	    		request.setAttribute("message", session.getAttribute("username"));
	    		request.setAttribute("message1", count);
	    		response.addCookie(cookie);
				request.getRequestDispatcher("index.jsp").forward(request, response);
				
	    	}
	    	else {
	    		
	    		request.setAttribute("noUser", "User not found, please register!!");
				request.getRequestDispatcher("loggedin.jsp").forward(request, response);
	    	}
	    	con.close();
		}catch(Exception e){
			
			e.printStackTrace();
		}

	}

}
