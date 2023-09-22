package doc4youweb.servlet;

import java.io.IOException;
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
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AppointmentService appointmentService = new AppointmentService();
		String id = request.getParameter("doctor_id");
		System.out.println("doctor id from servlet"+id);
		if(id==null || "".equals(id)) {
			throw new RuntimeException("id cannot be empty");
		}
		int doctorId = Integer.parseInt(id);
		User user = (User)request.getSession().getAttribute("loggedUser");
		int userId = user.getId();
		System.out.print(userId);
		
		Appointment appointment = new Appointment();
		appointment.setDoctorId(doctorId);
		appointment.setPatientId(userId);
		appointment.setReasonForConsultation(request.getParameter("health issues"));
		
		
		appointment.setDateOfConsultation(request.getParameter("date of consultation"));
		appointment.setStartTime(request.getParameter("start time")+":00");
		appointment.setEndTime(request.getParameter("end time")+":00");
		
		try {
			appointmentService.create(appointment);
			response.getWriter().println("<script>alert('Appointment booked successfully!');</script>");
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		} catch (ValidationException e) {
			e.printStackTrace();
			response.getWriter().print("<script>alert('"+e.getMessage()+"');</script>");
			response.sendRedirect(request.getContextPath()+"/appointment/booknew");
		}
	}
	}


