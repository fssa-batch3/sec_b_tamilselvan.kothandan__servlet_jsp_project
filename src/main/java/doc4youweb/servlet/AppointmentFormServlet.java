package doc4youweb.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.doc4you.model.User;

@WebServlet("/appointment/booknew")
public class AppointmentFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = (User) request.getSession(false).getAttribute("loggedUser");
		System.out.println(user);

		String id = request.getParameter("doctor_id");
		System.out.println("AppointmentFormServlet - doctorId:  " + id);

		if (user != null) {
			if (id != null && !id.equals("")) {
				Integer doctorId = Integer.parseInt(id);
				System.out.println("After if parse" + doctorId);

				HttpSession session = request.getSession();
				session.setAttribute("doctor_id", doctorId);
				System.out.println("Session Id:" + session.getId());
			}
			request.setAttribute("loggedUser", user);
			RequestDispatcher rd = request.getRequestDispatcher("/appointment_page.jsp");
			rd.forward(request, response);
		} else {
			response.getWriter().println("<script>alert('you have not been logged in);</script>");
			response.sendRedirect(request.getContextPath() + "login.jsp");
			throw new RuntimeException("you have not been logged in.");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
