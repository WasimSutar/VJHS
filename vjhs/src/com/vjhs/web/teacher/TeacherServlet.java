package com.vjhs.web.teacher;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vjhs.imp.TeacherAttendanceOperImp;
import com.vjhs.imp.TeacherOperImp;
import com.vjhs.interfaces.TeacherAttendanceOperations;
import com.vjhs.pojo.Teacher;
import com.vjhs.pojo.TeacherAttendance;

/**
 * Servlet implementation class TeacherServlet
 */
@WebServlet("*.teacher")
public class TeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SimpleDateFormat formatter = new SimpleDateFormat("dd/mm/yyyy");
	private static final Logger LOGGER = Logger.getLogger(TeacherServlet.class.getName());
	private TeacherOperImp teacherOperImp = new TeacherOperImp();
	private TeacherAttendanceOperations teacherAtnOprImp = new TeacherAttendanceOperImp();

	private Teacher getTeacherDetails(HttpServletRequest request) {

		Teacher teacher = new Teacher();
		String employeeId = request.getParameter("employee_id");
		teacher.setEmployeeId(employeeId);
		String teacherName = request.getParameter("name_of_teacher");
		teacher.setTeacherName(teacherName);
		String fatherOrHusbandName = request.getParameter("father_name");
		teacher.setFatherOrHusbundName(fatherOrHusbandName);
		String religion = request.getParameter("religion");
		teacher.setReligion(religion);
		String caste = request.getParameter("caste");
		teacher.setCaste(caste);
		String gender = request.getParameter("gender");
		teacher.setGender(gender);
		String maritalStatus = request.getParameter("marStatus");
		teacher.setMaritalStatus(maritalStatus);
		Date dateOfBirth;
		try {
			dateOfBirth = (Date) formatter.parse(request.getParameter("dob"));
			teacher.setDateOfBirth(dateOfBirth);
		} catch (ParseException e) {
			LOGGER.info("While parsing DOB: " + e.getMessage());
		} catch (Exception e) {
			LOGGER.info("While parsing DOB: " + e.getMessage());
		}
		Date dateOfJoining;
		try {
			dateOfJoining = (Date) formatter.parse(request.getParameter("doj"));
			teacher.setDateOfJoining(dateOfJoining);
		} catch (ParseException e) {
			LOGGER.info("While parsing DOJ: " + e.getMessage());
		} catch (Exception e) {
			LOGGER.info("While parsing DOJ: " + e.getMessage());
		}
		String address = request.getParameter("address");
		teacher.setAddresss(address);
		String city = request.getParameter("city");
		teacher.setCity(city);
		String state = request.getParameter("state");
		teacher.setState(state);
		String nationality = request.getParameter("nationality");
		teacher.setNationality(nationality);
		try {
			String phoneNo = request.getParameter("phone_no");
			teacher.setPhone(Long.parseLong(phoneNo));
		} catch (Exception e) {

		}
		String qualification = request.getParameter("qualification");
		teacher.setQualification(qualification);
		try {
			String experiance = request.getParameter("experience");
			teacher.setExperiance(Long.parseLong(experiance));
		} catch (Exception e) {
		}
		String subjects = request.getParameter("subjects");
		teacher.setSubjects(subjects);
		String classes = request.getParameter("classes");
		teacher.setClasses(classes);
		String class_teacher = request.getParameter("class_teacher");
		teacher.setClass_teacher(class_teacher);
		String designation = request.getParameter("designation");
		teacher.setDesignation(designation);
		String loginId = request.getParameter("login_id");
		teacher.setUser_id(loginId);
		String password = request.getParameter("password");
		teacher.setPassword(password);

		return teacher;
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String uri = request.getRequestURI();
		if (uri.endsWith("add.teacher")) {
			request.getRequestDispatcher("add_teacher.jsp").forward(request, response);
		} else if (uri.endsWith("attendance.teacher")) {
			List<Teacher> teacherList = teacherOperImp.getTeachers();
			request.setAttribute("teacherList", teacherList);
			request.getRequestDispatcher("view_teacher_attendance2.jsp").forward(request, response);
		} else if (uri.endsWith("addTeacherAtten.teacher")) {
			TeacherAttendance teacherAttendance = new TeacherAttendance();
			List<TeacherAttendance> teachAttenList = new ArrayList<TeacherAttendance>();
			List<Teacher> teacherList = teacherOperImp.getTeachers();
			for (Teacher teacher : teacherList) {
				teacherAttendance.setAttendanceStatus(request.getParameter("attSta" + teacher.getEmployeeId()));
				try {
					teacherAttendance.setAttendanceDate((Date) formatter.parse(request.getParameter("teacherAtDate")));
				} catch (ParseException e1) {
					LOGGER.info("While parsing DOA : " + e1.getMessage());
				}
				teacherAttendance.setEmployeeId(teacher.getEmployeeId());
				teacherAttendance.setEmployeeName(teacher.getTeacherName());
				teachAttenList.add(teacherAttendance);
			}
			teacherAtnOprImp.addTeacherAttandance(teachAttenList);
			request.getRequestDispatcher("teacher_attendance.jsp").forward(request, response);
		} else if (uri.endsWith("getTeacherStatus.teacher")) {
			TeacherAttendance teacherAttendance = new TeacherAttendance();
			System.out.println(request.getParameter("selectedDate"));
			List<TeacherAttendance> attList = null;
			try {
				teacherAttendance.setAttendanceDate((Date) formatter.parse(request.getParameter("selectedDate")));
				attList = teacherAtnOprImp.getAttenStatus(teacherAttendance);
			} catch (ParseException e1) {
				LOGGER.info("While parsing DOA : " + e1.getMessage());
			}
			out.print("<LIST>");
			for (TeacherAttendance attLisVal : attList) {
				out.print("<EMP><EMP_ID>" + attLisVal.getEmployeeId() + "</EMP_ID><EMP_NAME>"
						+ attLisVal.getEmployeeName() + "</EMP_NAME><EMP_STATUS>" + attLisVal.getAttendanceStatus()
						+ "</EMP_STATUS></EMP>");
			}
			out.print("</LIST>");
		} else if (uri.endsWith("view.teacher")) {
			List<Teacher> teacherList = teacherOperImp.getTeachers();
			request.setAttribute("teacherList", teacherList);
			request.getRequestDispatcher("view_teachers2.jsp").forward(request, response);
		} else if (uri.endsWith("addtt.teacher")) {
			request.getRequestDispatcher("teachertt.jsp").forward(request, response);
		} else if (uri.endsWith("viewtt.teacher")) {
			request.getRequestDispatcher("view_teachertt2.jsp").forward(request, response);
		} else if (uri.endsWith("regform.teacher")) {
			Teacher teacher = getTeacherDetails(request);
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("teacher", teacher);
			request.getRequestDispatcher("confirm_teacher.jsp").forward(request, response);
		} else if (uri.endsWith("confirmYes.teacher")) {
			boolean isAdded;
			HttpSession httpSession = request.getSession(false);
			Teacher teacher = (Teacher) httpSession.getAttribute("teacher");
			isAdded = teacherOperImp.addTeacher(teacher);
			httpSession.invalidate();
			if (isAdded) {
				request.setAttribute("messageTeacher", "Teacher: " + teacher.getTeacherName() + " added Successfully");
			} else {
				request.setAttribute("messageTeacher",
						"Getting Error while adding Teacher: " + teacher.getTeacherName());
			}
			request.getRequestDispatcher("add_teacher.jsp").forward(request, response);
		} else if (uri.endsWith("confirmNo.teacher")) {
			request.getRequestDispatcher("add_teacher.jsp").forward(request, response);
		} else if (uri.endsWith("viewAttendance.teacher")) {
			List<Teacher> teacherList = teacherOperImp.getTeachers();
			request.setAttribute("teacherList", teacherList);
			request.getRequestDispatcher("view_teacher_attendance.jsp").forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}