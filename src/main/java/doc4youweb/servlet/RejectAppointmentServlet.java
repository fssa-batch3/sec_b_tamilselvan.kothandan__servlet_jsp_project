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
import in.fssa.doc4you.exception.ValidationException;
import in.fssa.doc4you.model.Appointment;

@WebServlet("/RejectAppointment")
public class RejectAppointmentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RejectAppointmentServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String appointmentIdStr = request.getParameter("appointmentId");

            if (appointmentIdStr == null) {
                throw new ValidationException("Appointment ID should not be empty");
            }

            int appointmentId = Integer.parseInt(appointmentIdStr);

            AppointmentDAO appointmentDAO = new AppointmentDAO();
            AppointmentDTO appointment = appointmentDAO.findAppointmentByAppointmentId(appointmentId);

            if (appointment != null) {
                Appointment app = new Appointment();
                app.setId(appointmentId);
                app.setStatus(appointment.getStatus());

                if (app.getStatus() == Status.Approved) {
                    System.out.println("Status Matches");
                } else {
                    System.out.println("Status Mis-Matches");
                }

                if (app.getStatus() == Status.On_process || app.getStatus() == Status.Approved) {
                    app.setStatus(Status.Rejected);

                    appointmentDAO.updateAppointmentStatus(app.getId(), app);
                    System.out.println("Appointment status: " + app.getStatus());
                    response.sendRedirect(request.getContextPath() + "/doctor_appointment");
                } else if (app.getStatus() == Status.Cancelled) {
                    String errorMessage = "Appointment is already Cancelled and cannot be Rejected.";
                    request.setAttribute("errorMessage", errorMessage);
                    response.getWriter().println("<script>alert('" + errorMessage + "');</script>");
                } else {
                    String errorMessage = "Appointment is not valid or has already been Rejected.";
                    request.setAttribute("errorMessage", errorMessage);
                    response.getWriter().println("<script>alert('" + errorMessage + "');</script>");
                }
            } else {
                String errorMessage = "Appointment not found";
                request.setAttribute("errorMessage", errorMessage);
                response.getWriter().println("<script>alert('" + errorMessage + "');</script>");
            }
        } catch (ValidationException e) {
            String errorMessage = e.getMessage();
            request.setAttribute("errorMessage", errorMessage);
            response.getWriter().println("<script>alert('" + errorMessage + "');</script>");
        } catch (NumberFormatException e) {
            String errorMessage = "Invalid Appointment ID format";
            request.setAttribute("errorMessage", errorMessage);
            response.getWriter().println("<script>alert('" + errorMessage + "');</script>");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
