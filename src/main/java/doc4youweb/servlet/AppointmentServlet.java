package doc4youweb.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.doc4you.dao.AppointmentDAO;
import in.fssa.doc4you.dto.AppointmentDTO;
import in.fssa.doc4you.model.User;

@WebServlet("/appointment")
public class AppointmentServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("appointment");
		User user = getUserIdFromSession(request);
		System.out.println("UserID from session:" + user);
		if (!userIsLoggedIn(request)  || user == null) {
			response.sendRedirect("login.jsp");
			return;
		}
		

		List<AppointmentDTO> appointments = findAllAppointmentByUserId(user.getId());
		System.out.println("Appointments" + appointments);
		request.setAttribute("appointments", appointments);

		request.getRequestDispatcher("/past_appointment.jsp").forward(request, response);
	}

	private boolean userIsLoggedIn(HttpServletRequest request) {

		return request.getSession(false).getAttribute("loggedUser") != null;
	}

	private User getUserIdFromSession(HttpServletRequest request) {

		User user = (User) request.getSession().getAttribute("loggedUser");
		return user;
	}

	private List<AppointmentDTO> findAllAppointmentByUserId(int userId) {
		List<AppointmentDTO> appointments = new ArrayList<>();

		try {
			AppointmentDAO appointmentDAO = new AppointmentDAO();

			appointments = appointmentDAO.findAllAppointmentByUserId(userId);


		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

		return appointments;
		
		
	}
}
