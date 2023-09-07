package doc4youweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import in.fssa.doc4you.dto.DoctorDTO;
import in.fssa.doc4you.exception.ValidationException;
import in.fssa.doc4you.model.Doctor;
import in.fssa.doc4you.service.DoctorService;

/**
 * Servlet implementation class DoctorIdServlet
 */
@WebServlet("/doctor")
public class DoctorIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
DoctorService doctorService = new DoctorService();
DoctorDTO  doctorDTO = new DoctorDTO();
try {
	doctorDTO = DoctorService.getDoctorById(Integer.parseInt(request.getParameter("id")));
	Gson gson = new Gson();
	String json = gson.toJson(doctorDTO);
	response.setContentType("application/json");
	response.setCharacterEncoding("UTF-8");
	response.getWriter().write(json);
}
 catch (ValidationException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

	}



}

