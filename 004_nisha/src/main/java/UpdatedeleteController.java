

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdatedeleteController
 */
@WebServlet("/UpdatedeleteController")
public class UpdatedeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatedeleteController() {
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
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String deletebutton = request.getParameter("deletebutton");
		String updatebutton = request.getParameter("updatebutton");
		//out.println(username);
		//out.println("Update : "+updatebutton+" Delete : "+deletebutton);
		if(deletebutton==null) {
			//out.println("Update was clicked");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Update.jsp?username="+username);
			dispatcher.forward(request, response);
		}else {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","nisha");
				String sql="delete from userinformation where username='"+username+"'";
				String sql2="delete from medicalreport where username='"+username+"'";
				Statement statement = connection.createStatement();
				int flag =0;
				flag= statement.executeUpdate(sql2);
				flag= statement.executeUpdate(sql);
				if(flag==1) {
					RequestDispatcher dispatcher = request.getRequestDispatcher("updatedeletejsp.jsp");
					dispatcher.forward(request, response);
					
				}else {
					//System.out.println("Error occured");
					out.println("<script type='text/javascript'>");
					out.println("alert('User not deleted');");
					out.println("location='updatedeletejsp.jsp';");
					out.println("</script>");
					out.close();
				}
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
			//out.println("Delete was clicked");
		}
	}

}
