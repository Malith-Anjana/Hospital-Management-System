package hms;

import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginValidator
 */
@WebServlet("/LoginValidator")
public class LoginValidator extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginValidator() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		try
		{
			String uname = request.getParameter("username");
			String pword = request.getParameter("password");
			int rowcount =0;
			HttpSession session = request.getSession();
			session.setAttribute("name",uname);
			
			dbConn conn = new dbConn();
			Connection dbConnection = conn.returnConn();
			
			Statement stmt = (Statement) dbConnection.createStatement();
			String sqlStatement="SELECT * FROM user WHERE username='"+uname+"' AND password ='"+pword+"'";
			ResultSet rs= stmt.executeQuery(sqlStatement);

			rs.last();
			rowcount = rs.getRow();
			//System.out.println(rowcount);
			if(rowcount == 1)
			{
				session.setAttribute("userName",uname);
				session.setAttribute("userid",rs.getString("uid"));
				session.setAttribute("userType",rs.getString("type"));
				System.out.println(session.getAttribute("userName"));
				//System.out.println(session.getAttribute("uid"));
				response.sendRedirect("home.jsp");
			}
			else
			{
				response.sendRedirect("login.jsp");
			}
			
			dbConnection.close();
			//session = null;
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		finally
		{
			
		}
		
		
		
	}

}
