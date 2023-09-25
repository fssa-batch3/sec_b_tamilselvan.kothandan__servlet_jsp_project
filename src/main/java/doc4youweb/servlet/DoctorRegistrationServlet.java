package doc4youweb.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.doc4you.dto.DoctorDTO;
import in.fssa.doc4you.exception.ValidationException;
import in.fssa.doc4you.service.DoctorService;


@WebServlet("/doctor_create")
public class DoctorRegistrationServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("doctor_registration.jsp");
		dispatcher.forward(request, response);

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DoctorService doctorService = new DoctorService();
		DoctorDTO doctor = new DoctorDTO();
		doctor.setFirstName(request.getParameter("first name"));
		doctor.setLastName(request.getParameter("last name"));
		doctor.setEmailId(request.getParameter("email"));
		doctor.setPassword(request.getParameter("password"));
		doctor.setQualifications(request.getParameter("qualifications"));
		doctor.setExperience(Double.parseDouble(request.getParameter("experience")));
		doctor.setDepartment(request.getParameter("department"));
		doctor.setDoctorImage(request.getParameter("doctor image"));
		
		try {
	        doctorService.createDoctor(doctor);
	        response.getWriter().print("<script>alert('Doctor registered sucessfully  !');");
			response.getWriter().print("window.location.href=\"" + request.getContextPath() + "/doctorlogin\"");
			response.getWriter().print("</script>");;
	    } catch (ValidationException e) {
	        response.getWriter().print("<script>alert('" + e.getMessage() + "');");
	        response.getWriter().print("window.location.href=\"" + request.getContextPath() + "/doctor_create\";");
	        response.getWriter().print("</script>");
	    }
		
		
		
	}
}
