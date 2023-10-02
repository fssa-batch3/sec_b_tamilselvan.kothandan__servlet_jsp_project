package doc4youweb.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.doc4you.dto.DoctorDTO;
import in.fssa.doc4you.exception.ValidationException;
import in.fssa.doc4you.model.User;
import in.fssa.doc4you.service.DoctorService;
import in.fssa.doc4you.service.UserService;

/**
 * Servlet implementation class DoctorProfileServlet
 */
@WebServlet("/doctor_profile")
public class DoctorProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    DoctorDTO loggedInDoctor = (DoctorDTO) request.getSession().getAttribute("logged_doctor");

		
	    DoctorDTO user1 = null;
		try {
			user1= DoctorService.getDoctorById(user1.getDoctorId());
			
		} catch (ValidationException e) {
			e.printStackTrace();
		}
        // Set the user object as an attribute to pass to the JSP
        request.setAttribute("doctorProfile", user1);
    	System.out.println("hello world");
        // Forward the request to the viewProfile.jsp page
        request.getRequestDispatcher("/doctor_profile.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
