package doc4youweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
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
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	RequestDispatcher dispatcher = request.getRequestDispatcher("sign_up.jsp");
	dispatcher.forward(request, response);

}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();
		

		try {
			boolean validationError = false;

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


			try {

				UserService userService = new UserService();
				userService.createUser(user);
				response.getWriter().print("<script>alert('User registered successfully !');");
				response.getWriter().print("window.location.href=\"" + request.getContextPath() + "/login\"");
				response.getWriter().print("</script>");
			} catch (ValidationException e) {
				PrintWriter out = response.getWriter();
				String jsCode = "<script>alert('" + e.getMessage() + "');</script>";
				out.println(jsCode);
				e.printStackTrace();
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

}
}
