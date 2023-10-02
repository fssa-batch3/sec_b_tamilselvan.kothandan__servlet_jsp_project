package doc4youweb.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.doc4you.exception.ValidationException;
import in.fssa.doc4you.model.Appointment;
import in.fssa.doc4you.model.User;
import in.fssa.doc4you.service.AppointmentService;

@WebServlet("/appointment/create")
public class CreateAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AppointmentService appointmentService = new AppointmentService();

		String id = request.getParameter("doctor_id");
		System.out.println("Doctor ID from servlet: " + id);

		if (id == null || id.isEmpty()) {
			response.getWriter().print("<script>alert('Doctor ID cannot be empty.');");
			response.getWriter().print("window.location.href=\"" + request.getContextPath() + "/appointment/booknew\"");
			response.getWriter().print("</script>");
			return;
		}

		try {
			int doctorId = Integer.parseInt(id);
			User user = (User) request.getSession().getAttribute("loggedUser");
			int userId = user.getId();
			Appointment appointment = new Appointment();
			String healthIssues = request.getParameter("health_issues");
			System.out.println("health " + healthIssues);
			String dateOfConsultation = request.getParameter("date_of_consultation");
			System.out.println("date " + dateOfConsultation);
			String startTime = request.getParameter("start_time");
			System.out.println("st " + startTime);
			String endTime = request.getParameter("end_time");
			System.out.println("et " + endTime);

			if (healthIssues == null || dateOfConsultation == null || startTime == null || endTime == null) {
				System.out.println("if condition failed");
				throw new ValidationException("Please fill in all appointment details.");
			}

			appointment.setDoctorId(doctorId);
			appointment.setPatientId(userId);
			appointment.setReasonForConsultation(healthIssues);
			appointment.setDateOfConsultation(dateOfConsultation);
			appointment.setStartTime(startTime + ":00");
			appointment.setEndTime(endTime + ":00");

			appointmentService.create(appointment);
			System.out.println("appointment form: " + appointment);
			response.getWriter().print("<script>alert('Appointment successfully booked!');");
			response.getWriter().print("window.location.href=\"" + request.getContextPath() + "/index\"");
			response.getWriter().print("</script>");
		} catch (NumberFormatException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			request.setAttribute("errorMessage", e.getMessage());
			request.getRequestDispatcher("<%=request.getContextPath()%>/appointment").forward(request, response);
		} catch (ValidationException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();	
			request.setAttribute("errorMessage", e.getMessage());
			request.getRequestDispatcher("<%=request.getContextPath()%>/appointment").forward(request, response);
		}
	}

}
