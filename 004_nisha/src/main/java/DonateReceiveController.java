
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DonateReceiveController
 */
@WebServlet("/DonateReceiveController")
public class DonateReceiveController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DonateReceiveController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String donatebutton = request.getParameter("donatebutton");
		String receivebutton = request.getParameter("receivebutton");
		if (receivebutton == null) {
			// out.println("Donate was clicked");
			// RequestDispatcher dispatcher =
			// request.getRequestDispatcher("Update.jsp?username="+username);
			// dispatcher.forward(request, response);
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "root",
						"nisha");
				String sql = "update userinformation set status='Doner' where username='" + username + "'";
				Statement statement = connection.createStatement();
				int flag = 0;
				flag = statement.executeUpdate(sql);
				if (flag == 1) {					
					String sql2 = "select * from medicalreport where username = '"+username+"'";
					ResultSet resultset = statement.executeQuery(sql2);
					if(resultset.next()) {
						RequestDispatcher dispatcher = request.getRequestDispatcher("DonerInfoId.jsp?username="+username);
						dispatcher.forward(request, response);
						
						
					}else {
						RequestDispatcher dispatcher = request.getRequestDispatcher("medical.jsp?username="+username);
						dispatcher.forward(request, response);
					}
				} else {
					// System.out.println("Error occured");
					out.println("<script type='text/javascript'>");
					out.println("alert('Error occured while Updating');");
					out.println("location='user.jsp';");
					out.println("</script>");
					out.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		} else {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","nisha");
				String sql="update userinformation set status='Receiver' where username='"+username+"'";
				Statement statement = connection.createStatement();
				int flag =0;
				flag= statement.executeUpdate(sql);
				if(flag==1) {
					String blood_group = request.getParameter("blood_group");
					String pincode = request.getParameter("pincode");
					RequestDispatcher dispatcher = request.getRequestDispatcher("Receive.jsp?blood_group="+blood_group+"&pincode="+pincode);
					dispatcher.forward(request, response);
					System.out.println("Receive.jsp?blood_group='"+blood_group+"',pincode="+pincode);
				}else {
					//System.out.println("Error occured");
					out.println("<script type='text/javascript'>");
					out.println("alert('Error occured while Reciever');");
					out.println("location='user.jsp';");
					out.println("</script>");
					out.close();
				}
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
	}

}
