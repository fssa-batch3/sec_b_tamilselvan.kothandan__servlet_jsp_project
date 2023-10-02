package doc4youweb.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.doc4you.dao.AppointmentDAO;
import in.fssa.doc4you.dto.AppointmentDTO;
import in.fssa.doc4you.enumfiles.Status;
import in.fssa.doc4you.model.Appointment;

@WebServlet("/cancelAppointment")
public class CancelAppointmentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public CancelAppointmentServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String appointmentIdStr = request.getParameter("appointmentId");

        if (appointmentIdStr != null && !appointmentIdStr.isEmpty()) {
            try {
                int appointmentId = Integer.parseInt(appointmentIdStr);

                System.out.println(appointmentId);

                AppointmentDAO appointmentDAO = new AppointmentDAO();
                AppointmentDTO appointment = appointmentDAO.findAppointmentByAppointmentId(appointmentId);

                if (appointment != null) {
                    Appointment app = new Appointment();
                    app.setId(appointmentId);
                    app.setStatus(appointment.getStatus());

                    if (app.getStatus() == Status.On_process || app.getStatus() == Status.Approved) {
                        app.setStatus(Status.Cancelled);
                        appointmentDAO.updateAppointmentStatus(app.getId(), app);
                        String errorMessage1 = "Appointment is  cancelled.";
                        request.setAttribute("successMessage", errorMessage1);
                        response.getWriter().println("<script>alert('" + errorMessage1 + "');</script>");
                        response.sendRedirect(request.getContextPath() + "/appointment");
                    } else {
                        String errorMessage = "Appointment is not valid or has already been cancelled.";
                        request.setAttribute("errorMessage", errorMessage);
                        response.getWriter().println("<script>alert('" + errorMessage + "');</script>");
                        response.sendRedirect(request.getContextPath() + "/appointment");
                    }
                } 
            } catch (NumberFormatException e) {
                // Handle the case when appointmentIdStr is not a valid integer
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
