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
@WebServlet("/homepage/doctorlogin")
public class DoctorLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DoctorService doctorService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher rd = request.getRequestDispatcher("/login_for_doctor.jsp");
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
			doctorLogin.setAttribute("logged email", email);
//			application.setAttribute("logged email" , email);
			System.out.println(email);
			doctorLogin.setAttribute("logged doctor", doctor);
			System.out.println(doctor);
			doctorLogin.setAttribute("logged doctor's user id", doctor.getId());
			System.out.println(doctor.getId());
			doctorLogin.setAttribute("logged doctor's doctor id", doctor.getId());
			System.out.println(doctor.getId());
			
			
			response.getWriter().println("<script>alert('Doctor logged in successfully!');");
			response.getWriter().println("window.location.href=\""+request.getContextPath()+"/home\"");
			response.getWriter().println("</script>");
//			response.sendRedirect(request.getContextPath()+"/homepage");
		}else {
			response.getWriter().println("<script>alert('Incorrect password!');");
			response.getWriter().println("window.location.href=\""+request.getContextPath()+"/homepage/doctorlogin\"");
			response.getWriter().println("</script>");
		}
		
	}
}
