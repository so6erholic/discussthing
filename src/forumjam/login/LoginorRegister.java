package forumjam.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import oracle.jdbc.driver.OracleDriver;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginorRegister")
public class LoginorRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
		//UserDAO ud = new UserDAOImp();
    	String name = request.getParameter("name");
		String user_name = request.getParameter("username");
		
		String password = request.getParameter("password_1");
		String password2 = request.getParameter("password_2");
		String gender = request.getParameter("gender");
		
		int id = Integer.parseInt(request.getParameter("id"));
		if(password.contentEquals(password2)) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@ee417.c7clh2c6565n.eu-west-1.rds.amazonaws.com:1521:EE417", "ee_user", "ee_pass");	
			PreparedStatement ps = con.prepareStatement("insert into users values(?,?,?,?,?)");
	    	ps.setString(1, name);
	    	ps.setString(2, user_name);
	    	ps.setString(3, password);
	    	ps.setString(4, gender);
	    	ps.setInt(5, id );
            ps.executeUpdate(); 
		        request.setAttribute("registeredMessage", "Registration Completed, Login to your account!!");
				request.getRequestDispatcher("loggedin.jsp").forward(request, response);
				con.close();
	    	
		}catch(Exception e) {
			response.getWriter().println(e);
			request.setAttribute("duplicateUsername", "User already exists. Please choose a different username");
			request.getRequestDispatcher("registration.jsp").forward(request, response);
		
		}
		}else {
			request.setAttribute("diffPasswords", "Passwords do not match. Please try again");
			request.getRequestDispatcher("registration.jsp").forward(request, response);
			
		}
		
	}

}

