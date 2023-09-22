package doc4youweb.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.doc4you.dto.AppointmentDTO;
import in.fssa.doc4you.dto.DoctorDTO;
import in.fssa.doc4you.service.AppointmentService;


@WebServlet("/DoctorAppointmentServlet")
public class DoctorAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        DoctorDTO doctorDTO = getDoctorFromSession(request);
	        System.out.println("after doctor login"+ doctorDTO);

	        if (!doctorIsLoggedIn(request) || doctorDTO == null) {
	            response.sendRedirect("doctor_signup.jsp");
	            return;
	        }

	        Set<AppointmentDTO> appointments = null;
			try {
				appointments = findAllAppointmentsByDoctorId(doctorDTO.getDoctorId());
			} catch (Exception e) {
				e.printStackTrace();
			}
	        request.setAttribute("appointments", appointments);

	        request.getRequestDispatcher("/DoctorAppointment.jsp").forward(request, response);
	    }

	    private boolean doctorIsLoggedIn(HttpServletRequest request) {
	        return request.getSession(false).getAttribute("logged_doctor") != null;
	    }

	    private DoctorDTO getDoctorFromSession(HttpServletRequest request) {
	        return (DoctorDTO) request.getSession().getAttribute("logged_doctor");
	        
	    }

	    private Set<AppointmentDTO> findAllAppointmentsByDoctorId(int doctorId) throws Exception {
	        Set<AppointmentDTO> appointments = new HashSet<>();

	        try {
	            AppointmentService appointmentService = new AppointmentService();
	            appointments = appointmentService.getAllAppointmentsByDoctorId(doctorId);
	            System.out.println("appointment list"+appointments);
	        } catch (Exception e) {
	        	System.out.println("hello t");
	            e.printStackTrace();
	            throw e;
	        }

	        return appointments;
	    }
	}

	


