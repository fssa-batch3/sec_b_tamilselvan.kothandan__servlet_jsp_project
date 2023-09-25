package doc4youweb.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.doc4you.dao.UserDAO;
import in.fssa.doc4you.exception.ServiceException;
import in.fssa.doc4you.exception.ValidationException;
import in.fssa.doc4you.service.UserService;


@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
		int id = Integer.parseInt(request.getParameter("id"));

		UserService userService = new UserService();

		try {
			userService.deleteUser(id);
			response.sendRedirect(request.getContextPath() + "index");
		} catch (ValidationException e) {
			e.printStackTrace();
    }
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
