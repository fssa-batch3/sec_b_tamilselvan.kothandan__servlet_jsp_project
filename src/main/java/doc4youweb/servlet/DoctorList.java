package doc4youweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.protobuf.ServiceException;

import in.fssa.doc4you.dto.DoctorDTO;
import in.fssa.doc4you.exception.ValidationException;
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
    	DoctorService doctorService = new DoctorService();
		try {
			Set<DoctorDTO> doctors = doctorService.listAllDoctor();
			request.setAttribute("Doctors", doctors);
			RequestDispatcher rd = request.getRequestDispatcher("/list_doctor.jsp");
			rd.forward(request, response);
		} catch (ValidationException e) {
			e.printStackTrace();
			throw new RuntimeException("no doctors exists");
		} 
	}



}
