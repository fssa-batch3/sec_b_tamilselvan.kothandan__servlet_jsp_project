package doc4youweb.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.doc4you.exception.ValidationException;
import in.fssa.doc4you.model.User;
import in.fssa.doc4you.service.UserService;

/**
 * Servlet implementation class CreateUSerServlet
 */
@WebServlet("/create")
public class CreateUSerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user = new User();

		try {

			String firstName = request.getParameter("first_name");

			if (firstName == null) {
				System.out.println("first_name cannot be null or empty");
			} else if (firstName.isEmpty()) {
				System.out.println("first_name cannot be empty");
			} else {
				user.setFirstName(firstName);
			}
String lastname = request.getParameter("last_name");

if (lastname == null) {
	System.out.println("last_name cannot be null or empty");
} else if (lastname.isEmpty()) {
	System.out.println("last_name cannot be empty");
} else {
	user.setLastName(lastname);
}

String email = request.getParameter("email");

if (email == null) {
	System.out.println("email cannot be null or empty");
} else if (email.isEmpty()) {
	System.out.println("email cannot be empty");
} else {
	user.setEmail(email);
}

String password = request.getParameter("password");

if (password == null) {
	System.out.println("password cannot be null or empty");
} else if (password.isEmpty()) {
	System.out.println("password cannot be empty");
} else {
	user.setPassword(password);
}
			

			System.out.println(user.toString());

			UserService userService = new UserService();
			userService.createUser(user);
			response.sendRedirect(request.getContextPath() + "/login.jsp");
		} catch (ValidationException e) {
			e.printStackTrace();
		}
	}

}
