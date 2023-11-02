package doc4youweb.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.doc4you.exception.ValidationException;
import in.fssa.doc4you.model.User;
import in.fssa.doc4you.service.UserService;


@WebServlet("/profile")
public class UserProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get the logged-in user from the session
		User user = (User) request.getSession().getAttribute("loggedUser");
		
		User user1 = null;
		try {
			user1 = UserService.getByUserEmail(user.getEmail());
		} catch (ValidationException e) {
			e.printStackTrace();
		}
        // Set the user object as an attribute to pass to the JSP
        request.setAttribute("userProfile", user1);
    	
    	
        // Forward the request to the viewProfile.jsp page
        request.getRequestDispatcher("/profile.jsp").forward(request, response);
	}

	
	

}
