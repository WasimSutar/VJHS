package com.vjhs.web.schedule;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ScheduleServlet
 */
@WebServlet("*.schedule")
public class ScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		if (uri.endsWith("academic_calander.schedule")) {
			request.getRequestDispatcher("upload_academic_calender2.jsp").forward(request, response);
		} else if (uri.endsWith("school_timings.schedule")) {
			request.getRequestDispatcher("upload_school_timings2.jsp").forward(request, response);
		} else if (uri.endsWith("class_tt.schedule")) {
			request.getRequestDispatcher("classtt.jsp").forward(request, response);
		} else if (uri.endsWith("events.schedule")) {
			request.getRequestDispatcher("").forward(request, response);
		} else if (uri.endsWith("holidays.schedule")) {
			request.getRequestDispatcher("upload_holiday_list2.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
