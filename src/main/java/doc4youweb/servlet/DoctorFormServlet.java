package doc4youweb.servlet;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.doc4you.dto.DoctorDTO;
import in.fssa.doc4you.exception.ValidationException;
import in.fssa.doc4you.model.Doctor;
import in.fssa.doc4you.service.DoctorService;
import in.fssa.doc4you.util.EmailGenerator;

/**
 * Servlet implementation class DoctorFormServlet
 */
@WebServlet("/DoctorFormServlet")
public class DoctorFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Doctor doctor = new Doctor();
String firstName = request.getParameter("first_name");
String lastName = request.getParameter("last_name");
String department = request.getParameter("department");
String doctorImage = request.getParameter("doctor_image");
String experience = request.getParameter("experience");
String qualifications = request.getParameter("qualifications");
String email = request.getParameter("email");
String password = request.getParameter("Password");

DoctorService ds = new DoctorService();

DoctorDTO ddto = new DoctorDTO();
ddto.setFirstName(firstName);
ddto.setLastName(lastName);
ddto.setEmailId(email);
ddto.setPassword(password);
ddto.setQualifications(qualifications);
ddto.setExperience(10);
ddto.setDepartment(department);
ddto.setDoctorImage(doctorImage);

	try {
	ds.createDoctor(ddto);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	System.out.println(ddto);
	response.sendRedirect("Doctors.jsp");
	}


	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
