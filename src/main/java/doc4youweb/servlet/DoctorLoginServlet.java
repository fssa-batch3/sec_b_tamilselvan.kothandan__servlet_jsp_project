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
		RequestDispatcher rd = request.getRequestDispatcher("/doctor_dashboard.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		DoctorService doctorService = new DoctorService();
		DoctorDTO doctor;
		
		try {
			doctor = doctorService.getDoctorByEmail(email);
		}catch(ValidationException e) {
			throw new RuntimeException("no user exists");
		}
		
		HttpSession doctorLogin = request.getSession();
		if(password.equals(doctor.getPassword())) {
			doctorLogin.setAttribute("logged_email", email);
			System.out.println(email);
			doctorLogin.setAttribute("logged_doctor", doctor);
			System.out.println(doctor);
			doctorLogin.setAttribute("logged_doctor_user_id", doctor.getId());
			System.out.println(doctor.getId());
			doctorLogin.setAttribute("logged_doctor_doctor_id", doctor.getDoctorId());
			System.out.println(doctor.getDoctorId());
			
			
			response.getWriter().println("<script>alert('Doctor logged in successfully!');");
			String pageName = request.getContextPath() + "/DoctorAppointmentServlet";
			response.sendRedirect(pageName);

			response.getWriter().println("</script>");
		}else {
			response.getWriter().println("<script>alert('Incorrect password!');");
			response.getWriter().println("window.location.href=\""+request.getContextPath()+"/Doctor_signup.jsp");
			response.getWriter().println("</script>");
		}
		
	}
}
