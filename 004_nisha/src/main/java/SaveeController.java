import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SaveeController")
public class SaveeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SaveeController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String blood_group = request.getParameter("blood_group");
		String pincode = request.getParameter("pincode");
		System.out.println(username+" "+password+" "+name+" "+age+" "+dob+" "+email+" "+phone+" "+blood_group+" "+pincode);
		int flag=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","nisha");
			String sql="insert into userinformation values('"+username+"','"+password+"','"+name+"','"+age+"','"+dob+"','"+email+"','"+phone+"','"+blood_group+"','"+pincode+"','NA')";
			Statement statement = connection.createStatement();
			
			flag = statement.executeUpdate(sql);
			if(flag==1) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);
				
			}else {
				
			}
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLIntegrityConstraintViolationException e) {
			out.println("<script type='text/javascript'>");
			out.println("alert('User already exists');");
			out.println("location='register.jsp';");
			out.println("</script>");
			out.close();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

