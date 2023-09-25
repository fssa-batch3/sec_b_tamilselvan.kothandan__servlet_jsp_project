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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserService userService;

	public LoginServlet() {
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
	        User user = userService.loginUser(email, password);

	        HttpSession session = request.getSession();
	        session.setAttribute("loggedUser", user);

	        response.getWriter().print("<script>alert('User logged in  successfully !');");
			response.getWriter().print("window.location.href=\"" + request.getContextPath() + "/index\"");
			response.getWriter().print("</script>");
	    } catch (DAOException e) {
	        e.printStackTrace(); 
	        response.getWriter().print("<script>alert('An error occurred while logging in.');");
				response.getWriter().print("window.location.href=\"" + request.getContextPath() + "/login\"");
				response.getWriter().print("</script>");
	    } catch (ValidationException | ServiceException e) {
	        request.setAttribute("errorMessage", e.getMessage());
	        request.getRequestDispatcher("/login").forward(request, response);
	    }
	}

}