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
       response.setContentType("application/json");        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
	} catch (ServiceException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		PrintWriter out = response.getWriter();
		out.println(e.getMessage());
	}

       }




}
