package apple.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import apple.Dao.ContactUs;
import apple.beans.ContactUs_beans;


/**
 * Servlet implementation class Contact_Us
 */
@WebServlet("/Contact_Us")
public class Contact_Us extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact_Us() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("txtname");
		String email = request.getParameter("txtemail");
		String phone = request.getParameter("txtphone");
		String question = request.getParameter("txtquestion");
		
		java.util.Date dt= new java.util.Date();
		long d = dt.getTime();
		java.sql.Date sqlDate = new java.sql.Date(d);
		
		ContactUs_beans cub = new ContactUs_beans(name, email, phone, question, sqlDate);
		ContactUs ud= new ContactUs();
		int status = ud.addContact(cub);

		if(status>0) {
		request.setAttribute("msg", "Thankyou for contacting us");
		RequestDispatcher dispatcher = request.getRequestDispatcher("ContactUs.jsp");
		dispatcher.forward(request, response);
		     
		
		}
	
	}

		
	

}
