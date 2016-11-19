package com.vjhs.web.examinations;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vjhs.imp.ExamSheduleClassOperImp;
import com.vjhs.imp.StudentAttendanceOperImp;
import com.vjhs.imp.StudentOperImp;
import com.vjhs.imp.SubjectOperImp;
import com.vjhs.interfaces.ExamSheduleClassOperations;
import com.vjhs.interfaces.StudentAttendanceOperation;
import com.vjhs.interfaces.StudentOperations;
import com.vjhs.interfaces.SubjectOperation;
import com.vjhs.pojo.ExamSheduleClass;
import com.vjhs.pojo.StudentAttendance;
import com.vjhs.pojo.Subject;

/**
 * Servlet implementation class Examinations
 */
@WebServlet("*.examinations")
public class Examinations extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
	private static final Logger LOGGER = Logger.getLogger(Examinations.class.getName());

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SubjectOperation subjectOperations = new SubjectOperImp();
		PrintWriter out = response.getWriter();
		String uri = request.getRequestURI();
		if (uri.endsWith("attendance.examinations")) {
			request.getRequestDispatcher("student_attendance2.jsp").forward(request, response);
		} else if (uri.endsWith("schedule.examinations")) {
			request.getRequestDispatcher("exam2.jsp").forward(request, response);
		} else if (uri.endsWith("subjects.examinations")) {
			List<Subject> subjectsList = subjectOperations.getSubjects();
			request.setAttribute("subjectList", subjectsList);
			request.getRequestDispatcher("subjects2.jsp").forward(request, response);
		} else if (uri.endsWith("addSubjects.examinations")) {
			Subject subject = new Subject();
			String subId = request.getParameter("SubId");
			subject.setSubjectId(subId);
			String subName = request.getParameter("newSub");
			subject.setSubjectName(subName);
			boolean isSubAdded = subjectOperations.addSubject(subject);
			List<Subject> subjectsList = subjectOperations.getSubjects();
			request.setAttribute("subjectList", subjectsList);
			if (isSubAdded) {
				request.setAttribute("message", "Subject Added Successfully");
			} else {
				request.setAttribute("message", "Error While Adding Subject");
			}
			request.getRequestDispatcher("subjects2.jsp").forward(request, response);
		} else if (uri.endsWith("updateSubjects.examinations")) {
			Subject subject = new Subject();
			String subId = request.getParameter("editSubId");
			subject.setSubjectId(subId);
			String subName = request.getParameter("editSubName");
			subject.setSubjectName(subName);
			boolean isSubUpdated = subjectOperations.updateSubject(subject);
			if (isSubUpdated) {
				request.setAttribute("message", "Subject Updated Successfully");
			} else {
				request.setAttribute("message", "Error While Updating Subject");
			}
			List<Subject> subjectsList = subjectOperations.getSubjects();
			request.setAttribute("subjectList", subjectsList);
			request.getRequestDispatcher("subjects2.jsp").forward(request, response);
		} else if (uri.endsWith("deleteSubjects.examinations")) {
			String subId = request.getParameter("subjectId");
			boolean isSubDeleted = subjectOperations.deleteSubject(subId);
			if (isSubDeleted) {
				request.setAttribute("message", "Subject Deleted Successfully");
			} else {
				request.setAttribute("message", "Error while deleting subject");
			}
			List<Subject> subjectsList = subjectOperations.getSubjects();
			request.setAttribute("subjectList", subjectsList);
			request.getRequestDispatcher("subjects2.jsp").forward(request, response);
		} else if (uri.endsWith("student_mark.examinations")) {
			request.getRequestDispatcher("student_marks_parent2.jsp").forward(request, response);
		} else if (uri.endsWith("progress_report.examinations")) {
			List<Subject> subjectsList = subjectOperations.getSubjects();
			request.setAttribute("subjectList", subjectsList);
			request.getRequestDispatcher("progressreport2.jsp").forward(request, response);
		} else if (uri.endsWith("certificates.examinations")) {
			request.getRequestDispatcher("certificates2.jsp").forward(request, response);
		} else if (uri.endsWith("getStudentName.examinations")) {
			String cls = request.getParameter("className");
			String students = "<STUDENTS>";
			StudentOperations studOper = new StudentOperImp();
			Map<String, String> studentList = studOper.getStudentNames(cls);
			for (String stud : studentList.keySet()) {
				students += "<STUDENT><ADMIN_NO>" + stud + "</ADMIN_NO>";
				students += "<NAME>" + studentList.get(stud) + "</NAME></STUDENT>";
			}
			students += "</STUDENTS>";
			out.print(students);
		} else if (uri.endsWith("getStudentAdminNo.examinations")) {
			String cls = request.getParameter("className");
			String name = request.getParameter("studentName");
			String admissionXML = "<ADMISSIONS>";
			StudentOperations studOper = new StudentOperImp();
			List<String> admissionList = studOper.getStudentAdminNo(cls, name);
			for (String admission : admissionList) {
				admissionXML += "<ADMISSION><NUMBER>" + admission + "</NUMBER></ADMISSION>";
			}
			out.print(admissionXML);
		}else if (uri.endsWith("getAdminssionNumbesByClassName.examinations")) {
			String cls = request.getParameter("className");
			String admissionXML = "<ADMISSIONS>";
			StudentOperations studOper = new StudentOperImp();
			List<String> admissionList = studOper.getStudentAdminNoByClassName(cls);
			for (String admission : admissionList) {
				admissionXML += "<ADMISSION><NUMBER>" + admission + "</NUMBER></ADMISSION>";
			}
			admissionXML += "</ADMISSIONS>";
			out.print(admissionXML);
		} else if (uri.endsWith("getMonthDet.examinations")) {
			String cls = request.getParameter("className");
			String adminNo = request.getParameter("adminNo");
			ExamSheduleClassOperations schduleOpr = new ExamSheduleClassOperImp();
			String attendanceList = schduleOpr.getMonthPercentage(cls, adminNo);
			out.print(attendanceList);
		} else if (uri.endsWith("addStudentAtten.examinations")) {
			List<StudentAttendance> stuAttenList = new ArrayList<StudentAttendance>();
			ExamSheduleClassOperations scheduleOper = new ExamSheduleClassOperImp();
			List<StudentAttendance> presentWorkingYear = scheduleOper.getPresentMonthYear();
			StudentAttendanceOperation attenOper = new StudentAttendanceOperImp();
			String adminNo = request.getParameter("admissionNo");
			int i = 1;
			for (StudentAttendance studAtten : presentWorkingYear) {
				StudentAttendance stuAtten = new StudentAttendance();
				stuAtten.setClassName(request.getParameter("className"));
				stuAtten.setAdmissionNo(request.getParameter("admissionNo"));
				stuAtten.setDayAttended(Double.parseDouble(request.getParameter("a" + i)));
				stuAtten.setWorkingDays(Double.parseDouble(request.getParameter("w" + i)));
				stuAtten.setMonthlyPercentage(Double.parseDouble(request.getParameter("mp" + i)));
				stuAtten.setMonth(studAtten.getMonth());
				stuAtten.setYear(studAtten.getYear());
				stuAttenList.add(stuAtten);
				i++;
			}
			if (attenOper.updateStudentAttendence(stuAttenList)) {
				request.setAttribute("message", "Attendance detilas added successfully for Admission No: " + adminNo);
			} else {
				request.setAttribute("message", "Error while adding attendance details for Admission No: " + adminNo);
			}
			request.getRequestDispatcher("student_attendance.jsp").forward(request, response);
		} else if (uri.endsWith("getSubList.examinations")) {
			List<Subject> subjectsList = subjectOperations.getSubjects();
			String subjects = "<SUBJECTS>";
			for (Subject subject : subjectsList) {
				subjects += "<SUBJECT><SUBJECTID>" + subject.getSubjectId() + "</SUBJECTID><SUBJECTNAME>"
						+ subject.getSubjectName() + "</SUBJECTNAME></SUBJECT>";
			}
			subjects += "</SUBJECTS>";
			out.print(subjects);
		} else if (uri.endsWith("addSchedule.examinations")) {
			ExamSheduleClassOperations shClassOperations = new ExamSheduleClassOperImp();
			String examType = request.getParameter("examType");
			String examYear = request.getParameter("exTypeYear");
			String className = request.getParameter("className");
			Date fromDate = null;
			Date toDate = null;
			try {
				fromDate = (Date) formatter.parse(request.getParameter("examFrmDate"));
				toDate = (Date) formatter.parse(request.getParameter("examToDate"));
			} catch (ParseException e1) {
				LOGGER.info("While parsing DOA : " + e1.getMessage());
			}
			int count = shClassOperations.getDateDiff(fromDate, toDate);
			List<ExamSheduleClass> examSchList = new ArrayList<ExamSheduleClass>();
			for (int i = 1; i <= count + 1; i++) {
				String subject = request.getParameter("sub" + i);
				if (subject != null && !(subject.isEmpty())) {
					ExamSheduleClass sheClass = new ExamSheduleClass();
					sheClass.setSubject(subject);
					sheClass.setExamType(examType);
					sheClass.setExamYear(examYear);
					sheClass.setClassName(className);
					sheClass.setFromDate(fromDate);
					sheClass.setToDate(toDate);
					try {
						sheClass.setExamDate((Date) formatter.parse(request.getParameter("date" + i)));
					} catch (ParseException e1) {
						LOGGER.info("While parsing DOA : " + e1.getMessage());
					}
					sheClass.setExamTiming(request.getParameter("time" + i));
					examSchList.add(sheClass);
				}
			}
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

/*
 * 
 * 
 * 
 * package com.vjhs.web.examinations;
 * 
 * import java.io.IOException; import java.io.PrintWriter; import
 * java.util.ArrayList; import java.util.List; import java.util.Map;
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.annotation.WebServlet; import javax.servlet.http.HttpServlet;
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import com.vjhs.imp.ExamSheduleClassOperImp; import
 * com.vjhs.imp.StudentAttendanceOperImp; import com.vjhs.imp.StudentOperImp;
 * import com.vjhs.interfaces.ExamSheduleClassOperations; import
 * com.vjhs.interfaces.StudentAttendanceOperation; import
 * com.vjhs.interfaces.StudentOperations; import
 * com.vjhs.pojo.StudentAttendance;
 * 
 *//**
	 * Servlet implementation class Examinations
	 */
/*
 * @WebServlet("*.examinations") public class Examinations extends HttpServlet {
 * private static final long serialVersionUID = 1L;
 * 
 *//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
/*
 * protected void doGet(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException { PrintWriter out =
 * response.getWriter(); String uri = request.getRequestURI(); if
 * (uri.endsWith("attendance.examinations")) {
 * request.getRequestDispatcher("student_attendance2.jsp").forward(request,
 * response); } else if (uri.endsWith("schedule.examinations")) {
 * request.getRequestDispatcher("exam.jsp").forward(request, response); } else
 * if (uri.endsWith("subjects.examinations")) {
 * request.getRequestDispatcher("subjects.jsp").forward(request, response); }
 * else if (uri.endsWith("student_mark.examinations")) {
 * request.getRequestDispatcher("student_marks_parent.jsp").forward(request,
 * response); } else if (uri.endsWith("progress_report.examinations")) {
 * request.getRequestDispatcher("progressreport.jsp").forward(request,
 * response); } else if (uri.endsWith("certificates.examinations")) {
 * request.getRequestDispatcher("certificates.jsp").forward(request, response);
 * } else if (uri.endsWith("getStudentName.examinations")) { String cls =
 * request.getParameter("className"); String students = "<STUDENTS>";
 * StudentOperations studOper = new StudentOperImp(); Map<String, String>
 * studentList = studOper.getStudentNames(cls); for (String stud :
 * studentList.keySet()) { students += "<STUDENT><ADMIN_NO>" + stud +
 * "</ADMIN_NO>"; students += "<NAME>" + studentList.get(stud) +
 * "</NAME></STUDENT>"; } students += "</STUDENTS>"; out.print(students); } else
 * if (uri.endsWith("getStudentAdminNo.examinations")) { String cls =
 * request.getParameter("className"); String name =
 * request.getParameter("studentName"); String admissionXML = "<ADMISSIONS>";
 * StudentOperations studOper = new StudentOperImp(); List<String> admissionList
 * = studOper.getStudentAdminNo(cls, name); for (String admission :
 * admissionList) { admissionXML += "<ADMISSION><NUMBER>" + admission +
 * "</NUMBER></ADMISSION>"; } out.print(admissionXML); } else if
 * (uri.endsWith("getMonthDet.examinations")) { String cls =
 * request.getParameter("className"); String adminNo =
 * request.getParameter("adminNo"); ExamSheduleClassOperations schduleOpr = new
 * ExamSheduleClassOperImp(); String attendanceList =
 * schduleOpr.getMonthPercentage(cls, adminNo); out.print(attendanceList); }
 * else if (uri.endsWith("addStudentAtten.examinations")) {
 * List<StudentAttendance> stuAttenList = new ArrayList<StudentAttendance>();
 * ExamSheduleClassOperations scheduleOper = new ExamSheduleClassOperImp();
 * List<StudentAttendance> presentWorkingYear =
 * scheduleOper.getPresentMonthYear(); StudentAttendanceOperation attenOper =
 * new StudentAttendanceOperImp(); String adminNo =
 * request.getParameter("admissionNo"); int i = 1; for (StudentAttendance
 * studAtten : presentWorkingYear) { StudentAttendance stuAtten = new
 * StudentAttendance();
 * stuAtten.setClassName(request.getParameter("className"));
 * stuAtten.setAdmissionNo(request.getParameter("admissionNo"));
 * stuAtten.setDayAttended(Double.parseDouble(request.getParameter("a" + i)));
 * stuAtten.setWorkingDays(Double.parseDouble(request.getParameter("w" + i)));
 * stuAtten.setMonthlyPercentage(Double.parseDouble(request.getParameter("mp" +
 * i))); stuAtten.setMonth(studAtten.getMonth());
 * stuAtten.setYear(studAtten.getYear()); stuAttenList.add(stuAtten); i++; } if
 * (attenOper.updateStudentAttendence(stuAttenList)) {
 * request.setAttribute("message",
 * "Attendance detilas added successfully for Admission No: " + adminNo); } else
 * { request.setAttribute("message",
 * "Error while adding attendance details for Admission No: " + adminNo); }
 * request.getRequestDispatcher("student_attendance.jsp").forward(request,
 * response); } }
 * 
 *//**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 *//*
	 * protected void doPost(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException { doGet(request,
	 * response); }
	 * 
	 * }
	 */