package doc4youweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.protobuf.ServiceException;

import in.fssa.doc4you.dto.DoctorDTO;
import in.fssa.doc4you.service.DoctorService;

/**
 * Servlet implementation class DoctorList
 */
@WebServlet("/doctorlist")
public class DoctorList extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Create a Doctor object with sample data
      DoctorService doctorService = new DoctorService();
      Set<DoctorDTO> doctors;
	try {
		doctors = doctorService.findAllByDoctors();
		Gson gson = new Gson();
        String json = gson.toJson(doctors);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
	} catch (ServiceException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		PrintWriter out = response.getWriter();
		out.println(e.getMessage());
	}

       }



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // Retrieve form data for a single doctor
//        String description = request.getParameter("description");
//        String startTime = request.getParameter("startTime");
//        String endTime = request.getParameter("endTime");
//        String fullName = request.getParameter("fullName");
//        String doctorImage = request.getParameter("doctorImage");
//        String location = request.getParameter("location");
//
//        // Create a Doctor object for the submitted data
//        Doctor doctor = new Doctor();
//        doctor.setDescription(description);
//        doctor.setStartTime(startTime);
//        doctor.setEndTime(endTime);
//        doctor.setFullName(fullName);
//        doctor.setDoctorImage(doctorImage);
//        doctor.setLocation(location);
//
//        // Get or create a list to store multiple doctor objects
//        List<Doctor> doctors = (List<Doctor>) request.getSession().getAttribute("doctors");
//        if (doctors == null) {
//            doctors = new ArrayList<>();
//            request.getSession().setAttribute("doctors", doctors);
//        }
//
//        // Add the doctor object to the list
//        doctors.add(doctor);
//
//        // Convert the list of doctors to JSON
//        Gson gson = new Gson();
//        String json = gson.toJson(doctors);
//
//        // Set response content type to JSON
//        response.setContentType("application/json");
//
//        // Write the JSON response to the client
//        response.getWriter().write(json);
   // }

}
