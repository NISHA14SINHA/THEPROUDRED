

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


@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String oldusername = request.getParameter("oldusername");
		System.out.println(oldusername);
		String newusername = request.getParameter("newusername");
		String newpassword = request.getParameter("newpassword");
		String newname = request.getParameter("newname");
		String newage = request.getParameter("newage");
		String newdob = request.getParameter("newdob");
		String newemail = request.getParameter("newemail");
		String newphone = request.getParameter("newphone");
		String newblood_group = request.getParameter("newblood_group");
		String newpincode = request.getParameter("newpincode");
		try {
			PrintWriter out = response.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","nisha");
			String sql="update userinformation set username='"+newusername+"',password='"+newpassword+"',name='"+newname+"',age='"+newage+"',email='"+newemail+"',blood_group='"+newblood_group+"',pincode='"+newpincode+"' where username='"+oldusername+"';";
			String sql2 = "update medicalreport set username='"+newusername+"' where username='"+oldusername+"'";
			
			
			Statement statement = connection.createStatement();
			int flag =0;
			flag= statement.executeUpdate(sql2);
			flag= statement.executeUpdate(sql);
			if(flag==1) {
				out.println("<script type='text/javascript'>");
				out.println("alert('User updated');");
				out.println("location='updatedeletejsp.jsp';");
				out.println("</script>");
				out.close();
				
			}else {
				//System.out.println("Error occured");
				out.println("<script type='text/javascript'>");
				out.println("alert('User not updated');");
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

	}

}
