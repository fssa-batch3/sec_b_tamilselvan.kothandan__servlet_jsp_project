package doc4youweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.doc4you.dao.UserDAO;
import in.fssa.doc4you.model.User;


@WebServlet("/profile/edit")
public class EditProfileServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("edit_profile.jsp");
		dispatcher.forward(request, response);

//		doPost(request, response);
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
	        response.getWriter().print("<script>alert('profile updated successfully !');");
				response.getWriter().print("window.location.href=\"" + request.getContextPath() + "/profile\"");
				response.getWriter().print("</script>");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
	        response.getWriter().print("<script>alert('An error occurred. Profile update failed. Please try again.");
				response.getWriter().print("window.location.href=\"" + request.getContextPath() + "/profile\"");
				response.getWriter().print("</script>");
		}

		
	}

}
