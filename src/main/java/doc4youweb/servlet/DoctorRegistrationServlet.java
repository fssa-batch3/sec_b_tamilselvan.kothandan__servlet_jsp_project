package doc4youweb.servlet;

import java.io.IOException;
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
			String alert = "<script>alert('Doctor created successfully');</script>";
			response.getWriter().println(alert);
			response.sendRedirect(request.getContextPath()+"/doctor_singup.jsp");
		} catch (ValidationException e) {
			String alert = "<script>alert('" + e.getMessage() +"');</script>";
			response.getWriter().println(alert);
			e.printStackTrace();
		}
		
		
		
	}
}
