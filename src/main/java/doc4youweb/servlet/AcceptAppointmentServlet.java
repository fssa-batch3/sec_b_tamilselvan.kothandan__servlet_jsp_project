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

@WebServlet("/AcceptAppointment")
public class AcceptAppointmentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AcceptAppointmentServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Remove the unnecessary response.getWriter() line
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Accept an appointment
        String appointmentIdStr = request.getParameter("appointmentId");

        if (appointmentIdStr != null && !appointmentIdStr.isEmpty()) {
            try {
                int appointmentId = Integer.parseInt(appointmentIdStr);

                System.out.println(appointmentId);

                AppointmentDAO appointmentDAO = new AppointmentDAO();
                AppointmentDTO appointment = appointmentDAO.findAppointmentByAppointmentId(appointmentId);

                if (appointment != null) {
                    Appointment acceptAppointment = new Appointment();
                    acceptAppointment.setId(appointmentId);
                    acceptAppointment.setStatus(appointment.getStatus());
                    System.out.println("if " + acceptAppointment.getStatus());
                    
                    if (acceptAppointment.getStatus() == Status.On_process) {
                        acceptAppointment.setStatus(Status.Approved);
                        
                        appointmentDAO.updateAppointmentStatus(acceptAppointment.getId(), acceptAppointment);

                        response.sendRedirect(request.getContextPath() + "/doctor_appointment");
                    } else {
                        response.getWriter().print("<script>alert('Appointment is already Cancelled and cannot be Rejected or Approve.');");
                        response.getWriter().print("window.location.href=\"" + request.getContextPath() + "/doctor_appointment\"");
                        response.getWriter().print("</script>");
                    }
                } else {
                    // Handle the case when the appointment is not found
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
