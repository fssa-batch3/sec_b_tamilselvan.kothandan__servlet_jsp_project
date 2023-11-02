package doc4youweb.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.doc4you.dao.DoctorDAO;
import in.fssa.doc4you.dto.DoctorDTO;
import in.fssa.doc4you.exception.DAOException;
import in.fssa.doc4you.exception.ServiceException;
import in.fssa.doc4you.exception.ValidationException;
import in.fssa.doc4you.model.Doctor;
import in.fssa.doc4you.model.User;
import in.fssa.doc4you.service.DoctorService;
import in.fssa.doc4you.service.UserService;

/**
 * Servlet implementation class DoctorLoginServlet
 */
@WebServlet("/doctorlogin")
public class DoctorLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DoctorService doctorService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher rd = request.getRequestDispatcher("/Doctor_signup.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve user input from the login form
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Create a service to handle doctor-related operations
        DoctorService doctorService = new DoctorService();
        DoctorDTO doctor;
        
        String errorMessage = ""; // Initialize the error message

        try {
            doctor = doctorService.getDoctorByEmail(email);
            HttpSession doctorLogin = request.getSession();

            if (doctor == null) {
                throw new ValidationException("Doctor Details Not Found");
            }

            if (password.equals(doctor.getPassword())) {
                // Successful login
                doctorLogin.setAttribute("logged_email", email);
                doctorLogin.setAttribute("logged_doctor", doctor);
                doctorLogin.setAttribute("logged_doctor_user_id", doctor.getId());
                doctorLogin.setAttribute("logged_doctor_doctor_id", doctor.getDoctorId());

                response.getWriter().print("<script>alert('Doctor logged in  Successfully !');");
    			response.getWriter().print("window.location.href=\"" + request.getContextPath() + "/doctor_appointment\"");
    			response.getWriter().print("</script>");;
            } else {
                // Incorrect credentials
                errorMessage = "Incorrect email or password";
                request.setAttribute("errorMessage", errorMessage);
                request.setAttribute("email", email);
                request.setAttribute("password", password);

                // Forward to the login page
                request.getRequestDispatcher("/Doctor_signup.jsp").forward(request, response);
            }
        
        } catch (Exception e) {
            // Handle other exceptions
            errorMessage = "An error occurred: " + e.getMessage();
         // Set the error message in request attribute
            request.setAttribute("errorMessage", errorMessage);
            request.setAttribute("email", email);
            request.setAttribute("password", password);

            // Forward to the login page
            request.getRequestDispatcher("/Doctor_signup.jsp").forward(request, response);
        }

        
    }


}





