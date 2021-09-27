 package hms;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdmDocUpdateServlet")
public class AdmDocUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid = request.getParameter("uid");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String lname = request.getParameter("lname");
		String type = request.getParameter("type");
		String address = request.getParameter("address");
		String birthday = request.getParameter("birthday");
		//String specialization = request.getParameter("specialization");
		
		boolean isTrue;
		
		isTrue = AdmDoctorDBUtil.updatedoctor(uid, username, password, name, lname, type, address, birthday); //,specialization
		
		if(isTrue == true) {
			List<AdmDoctor> docDetails = AdmDoctorDBUtil.validate(username);
			request.setAttribute("docDetails", docDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("AdmDoctorProfiles.jsp");
			dis.forward(request, response);
		}
		else {
			List<AdmDoctor> docDetails = AdmDoctorDBUtil.validate(username);
			request.setAttribute("docDetails", docDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("AdmDoctorProfiles.jsp"); 
			dis.forward(request, response);
		}
		
	}

}
