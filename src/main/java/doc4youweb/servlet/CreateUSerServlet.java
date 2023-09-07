package doc4youweb.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.doc4you.model.User;

/**
 * Servlet implementation class CreateUSerServlet
 */
@WebServlet("/create_user")
public class CreateUSerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user = new User();

		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if (firstName == null || firstName.trim().isEmpty()) {
		   System.out.println("first name is required");;
		} else {
		    user.setFirstName(firstName);
		}

		if (lastName == null || lastName.trim().isEmpty()) {
			System.out.println("Last name is required.");
		} else {
		    user.setLastName(lastName);
		}

		if (email == null || email.trim().isEmpty()) {
			System.out.println("Email is required."); 
		} else {
		    user.setEmail(email);
		}

		    if (password.length() < 8) {
		    	System.out.println("Password must be at least 8 characters long.");
		    } else {
		       
		        user.setPassword(password);
		    }

		
		    
		    response.sendRedirect(request.getContextPath()+"/list.jsp");
	}

}
