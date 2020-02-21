package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import helpers.DateTimeTransformer;

@WebServlet(urlPatterns = "/homepage")

public class DashboardServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	DateTimeTransformer dateTimeTransformer = new DateTimeTransformer();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		performTask(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		performTask(request, response);
	}

	private void performTask(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/views/dashboard.jsp").forward(request, response);

	}
}