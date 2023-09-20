package doc4youweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.doc4you.dao.UserDAO;
import in.fssa.doc4you.model.User;

/**
 * Servlet implementation class EditProfileServlet
 */
@WebServlet("/profile/edit")
public class EditProfileServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int userId = Integer.parseInt(request.getParameter("id"));
		System.out.println("id"+userId);
		String firstName = request.getParameter("firstName");
		System.out.println("1"+firstName);
		String lastName = request.getParameter("lastName");
		System.out.println("2"+lastName);
		String password = request.getParameter("password");
		User updatedUser = null;
		String alertMessage = "";

		try {
			User us = new User();
			us.setId(userId);
			us.setFirstName(firstName);
			us.setLastName(lastName);
			us.setPassword(password);

			UserDAO userDAO = new UserDAO();

			updatedUser = userDAO.updateUsers(userId, us);

			response.sendRedirect(request.getContextPath() + "/profile");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			alertMessage = "An error occurred. Profile update failed. Please try again.";
		}

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><head><script>alert('" + alertMessage + "');</script></head><body></body></html>");
	}

}
