package hms;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdmDocRetreveServlet")
public class AdmDocRetreveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String username = request.getParameter("username");
		    
		    try {
	        	  List<AdmDoctor> docDetails = AdmDoctorDBUtil.validate(username);
	        	  request.setAttribute("docDetails", docDetails);
		    }
		    catch (Exception e) {
		    	
			e.printStackTrace();
		    }
		    
		    
		    
		    RequestDispatcher dis = request.getRequestDispatcher("AdmDoctorProfiles.jsp");
		    dis.forward(request, response);    
	}

}
