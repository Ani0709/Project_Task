package apple.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		String id = request.getParameter("txtemail");
		String pass = request.getParameter("txtpass");
		
		/* request.getParameter(); is like query Selector */
		/* System.out.println("id is "+id+" and password is "+pass); */
		
		if(id.equalsIgnoreCase("admin@123")&&pass.equals("admin")) {
			
			HttpSession hs = request.getSession();//a new session has been created
			System.out.println("Session id is "+hs.getId());
			//setting the value in the session attribute
			hs.setAttribute("session_adminId",id);
			hs.setAttribute("role", "admin");
						
			response.sendRedirect("/Apple/Welcome.jsp");
		}
		else {
			request.setAttribute("msg", "Invalid Credentials");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Apple/index.jsp");
			dispatcher.forward(request, response);
		}
	
	}

}
