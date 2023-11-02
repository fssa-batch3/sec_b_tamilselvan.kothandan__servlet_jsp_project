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
    String firstName = request.getParameter("first_name");
    String lastName = request.getParameter("last_name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    try {
        boolean validationError = false;

        // Validate first name
       
        if (firstName == null) {
            validationError = true;
            request.setAttribute("errorMessage", "First name cannot be null.");
        } else if (firstName.isEmpty()) {
            validationError = true;
            request.setAttribute("errorMessage", "First name cannot be empty.");
        } else {
            user.setFirstName(firstName);
        }

        // Validate last name
      
        if (lastName == null) {
            validationError = true;
            request.setAttribute("errorMessage", "Last name cannot be null.");
        } else if (lastName.isEmpty()) {
            validationError = true;
            request.setAttribute("errorMessage", "Last name cannot be empty.");
        } else {
            user.setLastName(lastName);
        }

        // Validate email
       
        if (email == null) {
            validationError = true;
            request.setAttribute("errorMessage", "Email cannot be null.");
        } else if (email.isEmpty()) {
            validationError = true;
            request.setAttribute("errorMessage", "Email cannot be empty.");
        } else {
            user.setEmail(email);
        }

        // Validate password
       
        if (password == null) {
            validationError = true;
            request.setAttribute("errorMessage", "Password cannot be null.");
        } else if (password.isEmpty()) {
            validationError = true;
            request.setAttribute("errorMessage", "Password cannot be empty.");
        } else {
            user.setPassword(password);
        }

        if (validationError) {
            request.getRequestDispatcher("/sign_in.jsp").forward(request, response);
        } else {
            UserService userService = new UserService();
            userService.createUser(user);
            request.setAttribute("errorMesssage", "User registered successfully!");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
    } catch (Exception e) {
        
        String errorMessage = "An error occurred: " + e.getMessage();
        request.setAttribute("errorMessage", errorMessage);
        request.setAttribute("first_name", firstName);
        request.setAttribute("last_name", lastName);
        request.setAttribute("email", email);
        request.setAttribute("password", password);

        // Forward to the login page
        request.getRequestDispatcher("/sign_in.jsp").forward(request, response);
    }
}

}
