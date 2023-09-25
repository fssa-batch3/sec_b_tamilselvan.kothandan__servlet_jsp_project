package doc4youweb.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.doc4you.exception.ValidationException;
import in.fssa.doc4you.model.User;
import in.fssa.doc4you.service.UserService;


@WebServlet("/DeleteAccountServlet")
public class DeleteAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAccountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("deleteAccount") != null) {
            
            UserService userService = new UserService();
            User user = (User) request.getSession().getAttribute("loggedUser"); // Get the logged-in user
            try {
				userService.deleteUser(user.getId());
			} catch (ValidationException e) {
				e.printStackTrace();
			} 
            
            request.getSession().invalidate();
            
            request.setAttribute("message", "Your account has been successfully deleted.");
        }
        request.getRequestDispatcher("/deleted_confirmation.jsp").forward(request, response);
	}

}
