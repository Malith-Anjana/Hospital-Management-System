package hms;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Roominsertservlet")
public class Roominsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//catch passed data by creating variable=save that data by "get" ("name of para")
		 String RoomNo=request.getParameter("roomid");
	     String Patientname=request.getParameter("rpname"); 
	     String Patientid=request.getParameter("rpid"); 
	     String Availability=request.getParameter("avilability");
	     String Date=request.getParameter("admitdate");
	     //connection catch the insertroomdetails return  
	     boolean isture;
	     isture=Repdbutill.Insertroomdetails(RoomNo, Patientname, Patientid, Availability, Date);
	     
	     if (isture==true) {
	    	 //redirect into jsp page
	    	 //use requestdispatcher
	    	 RequestDispatcher dis= request.getRequestDispatcher("success.jsp");
	    	 dis.forward(request, response);
	     }else {
	    	 RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
	    	 dis2.forward(request, response);
	     }
	}

}
