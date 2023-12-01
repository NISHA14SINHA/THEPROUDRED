

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

/**
 * Servlet implementation class MedicalHistory
 */
@WebServlet("/MedicalHistory")
public class MedicalHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MedicalHistory() {
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
		String weight = request.getParameter("weight");
		String haemoglobin = request.getParameter("haemoglobin");
		String currentbp = request.getParameter("currentbp");
		String pulserate = request.getParameter("pulserate");
		String cancer = request.getParameter("cancer-history");
		String heartdisease = request.getParameter("heart-disease-history");
		String hypertension = request.getParameter("hypertension-history");
		String diabetes = request.getParameter("diabetes-history");
		String stroke = request.getParameter("stroke-history");
		String antibiotic = request.getParameter("anti-biotic");
		String bleedingdisorder = request.getParameter("bleed-disorder");
		String alcohol = request.getParameter("alcohol");
		String hepatitis = request.getParameter("hepatitis");
		String tattoss = request.getParameter("tattoos");
		String vaccination= request.getParameter("vaccination");
		String username = request.getParameter("username");
		System.out.println(weight+" "+haemoglobin+" "+currentbp+" "+pulserate+" "+cancer+" "+heartdisease+" "+hypertension+" "+diabetes+" "+stroke+" "+antibiotic+" "+bleedingdisorder+" "+alcohol+" "+hepatitis +" "+tattoss+" "+vaccination+" "+username);
		int flag=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","nisha");
			String sql="insert into medicalreport(weight,haemoglobin,bloodpressure,pulserate,cancer,heart,bphistory,diabates,stroke,antibiotic,bleedingdisorder,alcohol,hepatitis,tattoos,vaccination,username)values('"+weight+"','"+haemoglobin+"','"+currentbp+"','"+pulserate+"','"+cancer+"','"+heartdisease+"','"+hypertension+"','"+diabetes+"','"+stroke+"','"+antibiotic+"','"+bleedingdisorder+"','"+alcohol+"','"+hepatitis+"','"+tattoss+"','"+vaccination+"','"+username+"')";
			out.println(sql);
			Statement statement = connection.createStatement();
			
			flag = statement.executeUpdate(sql);
			if(flag==1) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("thankyoupgdoner.jsp");
				dispatcher.forward(request, response);
				
			}else {
				
			}
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch (SQLIntegrityConstraintViolationException e) {
			out.println("<script type='text/javascript'>");
			out.println("alert('PROBLEMMMMMM ');");
			out.println("location='medical.jsp';");
			out.println("</script>");
			out.close();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}


