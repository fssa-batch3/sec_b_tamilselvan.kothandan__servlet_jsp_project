package doc4youweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.doc4you.exception.DAOException;
import in.fssa.doc4you.exception.ServiceException;
import in.fssa.doc4you.exception.ValidationException;
import in.fssa.doc4you.model.User;
import in.fssa.doc4you.service.UserService;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserService userService;

	public LoginServlet() {
		// Initialize your UserService here
		userService = new UserService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		try {
		    // Attempt to log in the user
		    User user = userService.loginUser(email, password);

		    // Authentication successful, store the user object in the session
		    HttpSession session = request.getSession();
		    session.setAttribute("loggedUser", user);

		    // Redirect to the profile.jsp page
		    response.sendRedirect(request.getContextPath() + "/profile");
		} catch (DAOException e) {
		    // Handle database-related errors
		    e.printStackTrace(); // You can log the exception for debugging
		    request.setAttribute("errorMessage", "An error occurred while logging in.");
		    request.getRequestDispatcher("/login.jsp").forward(request, response);
		} catch (ValidationException | ServiceException e) {
		    // Handle validation or service exceptions
		    request.setAttribute("errorMessage", e.getMessage());
		    request.getRequestDispatcher("/login.jsp").forward(request, response);
		}

}
}