

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserloginController
 */
@WebServlet("/UserloginController")
public class UserloginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserloginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "root",
					"nisha");
			String EnteredUsername = request.getParameter("username");
			String EnteredPassword = request.getParameter("password");

			PreparedStatement ps = connection.prepareStatement("select * from userinformation where username = ?");
			ps.setString(1, EnteredUsername);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				// String ActualUsername = rs.getString("username");
				String ActualPassword = rs.getString("password");
				if (EnteredPassword.equals(ActualPassword)) {
					RequestDispatcher rd = request.getRequestDispatcher("user.jsp?username="+EnteredUsername);
					rd.forward(request, response);
				} else {
					out.println("<script type='text/javascript'>");
					out.println("alert('Invalid Uname or Password');");
					out.println("location='index.jsp';");
					out.println("</script>");
					out.close();
				}
			} else {
				out.println("<script type='text/javascript'>");
				out.println("alert('User Does not Exists.');");
				out.println("location='index.jsp';");
				out.println("</script>");
				out.close();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
