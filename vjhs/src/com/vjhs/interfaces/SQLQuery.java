package com.vjhs.interfaces;

public interface SQLQuery {

	String ADD_STUDENT = "INSERT INTO STUDENT(PHOTO, ADMISSION_NUMBER, DOJ, STUDENT_NAME, DOB, GENDER, NATIONALITY, STATE, RELIGION, CASTE, CASTE_CATEGORY, MOTHER_TOUNGE, FATHER_NAME, MOTHER_NAME, RESIDENCE, FATHER_OCCUPATION, FATHER_RESIDENCE, PHONE_NUMBER, SCHOOLS_PREVIOUS, TC_NUMBER, TC_DATE, CLASS_ADMITTED, MEDIUM, IDENTITY_MARKS,CREATION_DATE, CREATED_BY) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	String ADD_VIEW_STUDENT = "INSERT INTO VIEW_STUDENT(ADMISSION_NUMBER, STUDENT_NAME, DOB, GENDER, FATHER_NAME, MOTHER_NAME, RESIDENCE, PHONE_NUMBER, CLASS_ADMITTED, CURRENT_CLASS,CASTE_CATEGORY, CREATION_DATE, CREATED_BY) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
	String UPDATE_VIEW_STUDENT = "UPDATE VIEW_STUDENT SET STUDENT_NAME=?, DOB=?, GENDER=?, FATHER_NAME=?, MOTHER_NAME=?, RESIDENCE=?, PHONE_NUMBER=?, CLASS_ADMITTED=?, CURRENT_CLASS=?, CREATION_DATE=?, CREATED_BY=?, UPDATED_DATE=?, UPDATED_BY=? WEHRE ADMISSION_NUMBER=?";
	String DELETE_STUDENT = "DELETE FROM STUDENT WHERE ADMISSION_NUMBER=?";
	String DELETE_VIEW_STUDENT = "DELETE FROM VIEW_STUDENT WHERE ADMISSION_NUMBER=?";
	String GET_STUDENTS = "SELECT ADMISSION_NUMBER, STUDENT_NAME, DOB,CASTE_CATEGORY, GENDER, FATHER_NAME, PHONE_NUMBER, CURRENT_CLASS FROM VIEW_STUDENT";
	String GET_STUDENTS_BY_CLASS = "SELECT ADMISSION_NUMBER, STUDENT_NAME, DOB, GENDER, FATHER_NAME, PHONE_NUMBER, CURRENT_CLASS FROM VIEW_STUDENT WHERE CURRENT_CLASS = ?";
	String GET_STUDENT_BY_ID = "SELECT ADMISSION_NUMBER, STUDENT_NAME, DOB, GENDER, FATHER_NAME, PHONE_NUMBER, CURRENT_CLASS FROM VIEW_STUDENT WHERE ADMISSION_NUMBER = ?";
	String GET_NO_OF_STU = "SELECT COUNT(1) AS COUNT FROM VIEW_STUDENT";
	String GET_ADMISSION_NO = "SELECT ADMISSION_NUMBER FROM STUDENT WHERE CURRENT_CLSS= ? AND STUDENT_NAME = ?";
	String GET_STUDENT_NAME_BY_CLASS = "SELECT ADMISSION_NUMBER,STUDENT_NAME FROM VIEW_STUDENT WHERE CURRENT_CLASS=?";
	String GET_STUDENT_ADMIN_NO_BY_NAME_CLASS = "SELECT ADMISSION_NUMBER FROM VIEW_STUDENT WHERE CURRENT_CLASS=? AND STUDENT_NAME=?";
	String GET_STUDENT_REGNO_BY_CLASS = "SELECT ADMISSION_NUMBER, STUDENT_NAME FROM VIEW_STUDENT WHERE CURRENT_CLASS=?";

	String ADD_TEACHER = "INSERT INTO teacher(EMP_ID, EMP_NAME, FATHER_HUSBAND_NAME, RELIGION, CASTE, GENDER, MARITAL_STATUS, DOB, DOJ, ADDRESS, CITY, STATE, NATIONALITY, PHONE_NUMBER, QUALIFICATION, EXPERIENCE, SUBJECTS, CLASSES_HANDLING, CLASS_TEACHER, DESIGNATION, LOGIN_ID, PASSWORD, CREATION_DATE, CREATED_BY) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	String UPDATE_TEACHER = "UPDATE teacher SET EMP_NAME=?,FATHER_HUSBAND_NAME=?,RELIGION=?,CASTE=?,GENDER=?,MARITAL_STATUS=?,DOB=?,DOJ=?,ADDRESS=?,CITY=?,STATE=?,NATIONALITY=?,PHONE_NUMBER=?,QUALIFICATION=?,EXPERIENCE=?,SUBJECTS=?,CLASSES_HANDLING=?,CLASS_TEACHER=?,DESIGNATION=?,LOGIN_ID=?,PASSWORD=?,UPDATED_DATE=?,UPDATED_BY=? WHERE EMP_ID=?";
	String DELETE_TEACHER = "DELETE FROM teacher WHERE EMP_ID = ?";
	String GET_TEACHERS = "SELECT EMP_ID, EMP_NAME, FATHER_HUSBAND_NAME, RELIGION, CASTE, GENDER, MARITAL_STATUS, DOB, DOJ, ADDRESS, CITY, STATE, NATIONALITY, PHONE_NUMBER, QUALIFICATION, EXPERIENCE, SUBJECTS, CLASSES_HANDLING, CLASS_TEACHER, DESIGNATION, LOGIN_ID, PASSWORD, CREATION_DATE, CREATED_BY, UPDATED_DATE, UPDATED_BY FROM teacher";
	String GET_TEACHER_BY_ID = "SELECT EMP_NAME, FATHER_HUSBAND_NAME, RELIGION, CASTE, GENDER, MARITAL_STATUS, DOB, DOJ, ADDRESS, CITY, STATE, NATIONALITY, PHONE_NUMBER, QUALIFICATION, EXPERIENCE, SUBJECTS, CLASSES_HANDLING, CLASS_TEACHER, DESIGNATION, LOGIN_ID, PASSWORD, CREATION_DATE, CREATED_BY, UPDATED_DATE, UPDATED_BY FROM teacher WHERE EMP_ID=?";
	String GET_NO_OF_TEACHERS = "SELECT COUNT(1) AS COUNT FROM TEACHER";
	String GET_EMP_ID_BY_NAME = "SELECT EMP_ID FROM teacher WHERE EMP_NAME =?";
	String GET_EMP_NAME_BY_ID = "SELECT EMP_NAME FROM TEACHER WHERE EMP_ID=?";

	String ADD_TEACHER_TIMETABLE = "INSERT INTO teacher_timetable(EMP_ID, DAY, PERIOD_I, PERIOD_II, PERIOD_III, PERIOD_IV, PERIOD_V, PERIOD_VI, PERIOD_VII, PERIOD_VIII,PERIOD_I_CLASS, PERIOD_II_CLASS, PERIOD_III_CLASS, PERIOD_IV_CLASS, PERIOD_V_CLASS, PERIOD_VI_CLASS, PERIOD_VII_CLASS, PERIOD_VIII_CLASS, CREATION_DATE, CREATED_BY) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	String UPDATE_TEACHER_TIMETABLE = "UPDATE teacher_timetable SET PERIOD_I=?,PERIOD_II=?,PERIOD_III=?,PERIOD_IV=?,PERIOD_V=?,PERIOD_VI=?,PERIOD_VII=?,PERIOD_VIII=?, PERIOD_I_CLASS=?, PERIOD_II_CLASS=?, PERIOD_III_CLASS=?, PERIOD_IV_CLASS=?, PERIOD_V_CLASS=?, PERIOD_VI_CLASS=?, PERIOD_VII_CLASS=?, PERIOD_VIII_CLASS=?,UPDATED_DATE=?,UPDATED_BY=? WHERE EMP_ID=? AND DAY=?";
	String DELETE_TEACHER_TIMETABLE = "DELETE FROM teacher_timetable WHERE EMP_ID=?";
	String GET_TEACHER_TABLE_BY_ID = "SELECT DAY, PERIOD_I, PERIOD_II, PERIOD_III, PERIOD_IV, PERIOD_V, PERIOD_VI, PERIOD_VII, PERIOD_VIII,PERIOD_I_CLASS, PERIOD_II_CLASS, PERIOD_III_CLASS, PERIOD_IV_CLASS, PERIOD_V_CLASS, PERIOD_VI_CLASS, PERIOD_VII_CLASS, PERIOD_VIII_CLASS, CREATION_DATE, CREATED_BY, UPDATED_DATE, UPDATED_BY FROM teacher_timetable WHERE EMP_ID=? ";
	String IS_TEACHER_EXIT = "SELECT COUNT(1) AS COUNT FROM TEACHER_TIMETABLE WHERE DAY =? AND EMP_ID=?";

	String ADD_OVERVIEW = "INSERT INTO OVERVIEW(SCHOOL_NAME,HEDQUARTERS,BRANCHES,CITY,DISTRICT,STATE,PHONE_NUMBER,MOBILE_NUMBER,EMAIL,NO_OF_STUDENTS,NO_OF_TEACHERS,START_YEAR,CREATION_DATE,CREATED_BY) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	String UPDATE_OVERVIEW = "UPDATE OVERVIEW SET SCHOOL_NAME=?, HEDQUARTERS=?, BRANCHES=?, CITY=?, DISTRICT=?, STATE=?, PHONE_NUMBER=?, MOBILE_NUMBER=?, EMAIL=?, START_YEAR=?,UPDATED_DATE=?, UPDATED_BY=? WHERE 1=1";
	String GET_OVERVIEW = "SELECT SCHOOL_NAME,HEDQUARTERS,BRANCHES,CITY,DISTRICT,STATE,PHONE_NUMBER,MOBILE_NUMBER,EMAIL,NO_OF_STUDENTS,NO_OF_TEACHERS,START_YEAR FROM OVERVIEW";

	String ADD_FEESTRUCTURE = "INSERT INTO FEE_STRUCTURE(CLASS, ADMISSION_FEE, APPLICATION_FEE, TUTION_FEE, BOOKS_FEE, EXAM_FEE, OTHER_FEE, TOTAL_FEE, CREATION_DATE, CREATED_BY) VALUES(?,?,?,?,?,?,?,?,?,?)";
	String UPDATE_FEESTRUCTURE = "UPDATE FEE_STRUCTURE SET ADMISSION_FEE=?, APPLICATION_FEE=?, TUTION_FEE=?, BOOKS_FEE=?, EXAM_FEE=?, OTHER_FEE=?, TOTAL_FEE=?, UPDATED_DATE=?, UPDATED_BY=? WHERE CLASS=?";
	String GET_FEESTRUCTURE = "SELECT CLASS, ADMISSION_FEE, APPLICATION_FEE, TUTION_FEE, BOOKS_FEE, EXAM_FEE, OTHER_FEE, TOTAL_FEE, CREATION_DATE, CREATED_BY, UPDATED_DATE, UPDATED_BY FROM FEE_STRUCTURE WHERE CLASS=?";
	String GET_FEESTRUCTURE_LIST = "SELECT CLASS, ADMISSION_FEE, APPLICATION_FEE, TUTION_FEE, BOOKS_FEE, EXAM_FEE, OTHER_FEE, TOTAL_FEE, CREATION_DATE, CREATED_BY, UPDATED_DATE, UPDATED_BY FROM FEE_STRUCTURE";

	String ADD_TEACHER_ATTENDANCE = "INSERT INTO teacher_attendance(EMP_ID, ATTENDANCE_DATE, ATTENDANCE_STATUS, CREATION_DATE, CREATED_BY) VALUES (?,?,?,?,?)";
	String GET_TEACHER_ATTENDANCE = "SELECT ATTENDANCE_STATUS, CREATION_DATE, CREATED_BY, UPDATED_DATE, UPDATED_BY FROM teacher_attendance WHERE ATTENDANCE_DATE=?";
	String GET_TEACHER_ATTENDANCE_BY_EMPID = "SELECT T.EMP_NAME,T.EMP_ID,TA.ATTENDANCE_STATUS FROM TEACHER T LEFT JOIN TEACHER_ATTENDANCE TA ON T.EMP_ID=TA.EMP_ID AND TA.ATTENDANCE_DATE=?";
	String IS_TEACHER_AVAIL = "SELECT COUNT(1) FROM teacher_attendance WHERE EMP_ID=? and ATTENDANCE_DATE=?";
	String UPDATE_TEACHER_ATTENDANCE = "UPDATE teacher_attendance SET ATTENDANCE_STATUS=?,UPDATED_DATE=?,UPDATED_BY=? WHERE EMP_ID=? AND ATTENDANCE_DATE=?";

	String UPDATE_SCHOOL_TIMINGS = "UPDATE school_timings SET PERIOD=?,FROM_TIME=?,TO_TIME=?,UPDATED_DATE=?,UPDATED_BY=? WHERE PERIOD=?";
	String ADD_SCHOOL_TIMINGS = "INSERT INTO school_timings(PERIOD, FROM_TIME, TO_TIME, CREATION_DATE, CREATED_BY) VALUES (?,?,?,?,?)";
	String GET_SCHOOL_TIMINGS = "SELECT PERIOD, FROM_TIME, TO_TIME FROM school_timings WHERE PERIOD=?";

	String ADD_CLASS_TIMETABLE = "INSERT INTO class_timetable(CLASS, DAY, PERIOD_I, PERIOD_II, PERIOD_III, PERIOD_IV, PERIOD_V, PERIOD_VI, PERIOD_VII, PERIOD_VIII, CREATION_DATE, CREATED_BY) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
	String UPDATE_CLASS_TIMETABLE_BY_CLASS_DAY = "UPDATE class_timetable SET CLASS=?,DAY=?,PERIOD_I=?,PERIOD_II=?,PERIOD_III=?,PERIOD_IV=?,PERIOD_V=?,PERIOD_VI=?,PERIOD_VII=?,PERIOD_VIII=?,UPDATED_DATE=?,UPDATED_BY=? WHERE CLASS=? AND DAY=?";
	String GET_CLASS_TIMETABLE_BY_CLASS = "SELECT DAY, PERIOD_I, PERIOD_II, PERIOD_III, PERIOD_IV, PERIOD_V, PERIOD_VI, PERIOD_VII, PERIOD_VIII FROM class_timetable WHERE CLASS=?";

	String ADD_CLASS_STRENGTH = "INSERT INTO classes_strengths(CLASS, STRENGTH, CREATION_DATE, CREATED_BY) VALUES (?,?,?,?)";
	String UPDATE_CLASS_STRENGTH = "UPDATE classes_strengths SET STRENGTH=?CREATED_BY=?,UPDATED_DATE=?,UPDATED_BY=? WHERE CLASS=?";
	String GET_CLASS_STRENGTH = "SELECT STRENGTH FROM classes_strengths WHERE CLASS=?";
	String GET_CLASS_STRENGTH_LIST = "SELECT CLASS FROM CLASSES_STRENGTHS ORDER BY ATTRIBUTE1";
	String GET_CLS_CNT_STR = "SELECT COUNT(1) AS COUNT FROM VIEW_STUDENT WHERE CURRENT_CLASS = ?";

	String ADD_EXAMS = "INSERT INTO exams(EXAM_TYPE, FROM_DATE, TO_DATE, MAX_MARKS, CREATION_DATE, CREATED_BY) VALUES (?,?,?,?,?,?)";
	String UPDATE_EXAMS = "UPDATE exams SET FROM_DATE=?,TO_DATE=?,MAX_MARKS=?,UPDATED_DATE=?,UPDATED_BY=? WHERE EXAM_TYPE=?";
	String GET_EXAMS = "SELECT FROM_DATE, TO_DATE, MAX_MARKS FROM exams WHERE EXAM_TYPE=?";

	String ADD_EXAM_SCHEDULE = "INSERT INTO exam_schedule_class(EXAM_TYPE, FROM_DATE, TO_DATE, CLASS, EXAM_NUM, SUBJECT, EXAM_DATE, EXAM_TIME, CREATION_DATE, CREATED_BY) VALUES (?,?,?,?,?,?,?,?,?,?)";
	String UPDATE_EXAM_SCHEDULE = "UPDATE exam_schedule_class SET EXAM_NUM=?,SUBJECT=?,EXAM_DATE=?,EXAM_TIME=?,UPDATED_DATE=?,UPDATED_BY=? WHERE CLASS=?";
	String GET_EXAM_SCHEDULE = "SELECT EXAM_NUM, SUBJECT, EXAM_DATE, EXAM_TIME FROM exam_schedule_class WHERE CLASS=?";
	String DELETE_EXAM_SCHEDULE = "DELETE FROM exam_schedule_class WHERE CLASS=?";

	String ADD_SUBJECT = "INSERT INTO SUBJECTS(`SUBJECT_ID`, `SUBJECT_NAME`, `CREATION_DATE`, `CREATED_BY`) VALUES (?,?,?,?)";
	String DELETE_SUBJECT = "DELETE FROM SUBJECTS WHERE SUBJECT_ID = ?";
	String UPDATE_SUBJECT = "UPDATE SUBJECTS SET SUBJECT_NAME=?,UPDATED_DATE =?,UPDATED_BY=? WHERE SUBJECT_ID=?";
	String GET_SUBJECTS = "SELECT SUBJECT_ID, SUBJECT_NAME FROM SUBJECTS";
	String GET_SUBJECT = "SELECT SUBJECT_ID, SUBJECT_NAME FROM SUBJECTS WHERE SUBJECT_ID = ?";

	String ADD_EXAM_SCHEDULE_TEACHER = "INSERT INTO EXAM_SCHEDULE_TEACHER(EXAM_TYPE, FROM_DATE, TO_DATE, EMP_ID, EXAM_NUM, SUBJECT, EXAM_DATE, EXAM_TIME, ROLE, ROOM_NUMBER, CREATION_DATE, CREATED_BY) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
	String UPDATE_EXAM_SCHEDULE_TEACHER = "UPDATE EXAM_SCHEDULE_TEACHER SET EXAM_TYPE=?,FROM_DATE=?,TO_DATE=?,EXAM_NUM=?,SUBJECT=?,EXAM_DATE=?,EXAM_TIME=?,ROLE=?,ROOM_NUMBER=?UPDATED_DATE=?,UPDATED_BY=? WHERE EMP_ID=?";
	String GET_EXAM_SCHEDULE_TEACHER = "SELECT EXAM_TYPE, FROM_DATE, TO_DATE, EXAM_NUM, SUBJECT, EXAM_DATE, EXAM_TIME, ROLE, ROOM_NUMBER FROM EXAM_SCHEDULE_TEACHER WHERE EMP_ID=?";
	String DELETE_EXAM_SCHEDULE_TEACHER = "DELETE FROM EXAM_SCHEDULE_TEACHER WHERE EMP_ID=?";

	String GET_PROGRESS_REPORT_OF_STUDENT = "SELECT SUBJECT, MARKS, GRADEPOINT, MONTH FROM PROGRESS_REPORT WHERE ADMISSION_NUMBER=? AND EXAM_TYPE=? AND CLASS=?";
	String ADD_PROGRESS_REPORT_OF_STUDENT = "INSERT INTO PROGRESS_REPORT(EXAM_TYPE, CLASS, ADMISSION_NUMBER, SUBJECT, MARKS, GRADEPOINT, CREATION_DATE, CREATED_BY, MONTH) VALUES (?,?,?,?,?,?,?,?,?)";
	String DELETE_PROGRESS_REPORT_OF_STUDENT = "DELETE FROM PROGRESS_REPORT WHERE ADMISSION_NUMBER = ?";
	String UPDATE_PROGRESS_REPORT_OF_STUDENT = "UPDATE PROGRESS_REPORT SET EXAM_TYPE=?,CLASS=?,SUBJECT=?,MARKS=?,GRADEPOINT=?,UPDATED_DATE=?,UPDATED_BY=?,MONTH=? WHERE ADMISSION_NUMBER=? AND SUBJECT=?";

	String ADD_STUDENT_ATTENDANCE = "INSERT INTO STUDENT_ATTENDANCE(ADMISSION_NUMBER, CLASS, STUDENT_NAME, MONTH, YEAR, DAYS_ATTENDED, WORKING_DAYS, MONTHLY_PERCENTAGE, CREATION_DATE, CREATED_BY) VALUES (?,?,?,?,?,?,?,?,?,?)";
	String UPDATE_STUDENT_ATTENDANCE = "UPDATE STUDENT_ATTENDANCE SET STUDENT_NAME=?,DAYS_ATTENDED=?,WORKING_DAYS=?,MONTHLY_PERCENTAGE=?,UPDATED_DATE=?,UPDATED_BY=? WHERE ADMISSION_NUMBER=? AND CLASS=? AND MONTH=? AND YEAR=?";
	String GET_STUDENT_ATTENDANCE = "SELECT ADMISSION_NUMBER, CLASS, STUDENT_NAME, YEAR, DAYS_ATTENDED, WORKING_DAYS, MONTHLY_PERCENTAGE, MONTH FROM STUDENT_ATTENDANCE WHERE ADMISSION_NUMBER = ?";
	String GET_STUDENT_ATTENDED_DAYS = "SELECT DAYS_ATTENDED FROM STUDENT_ATTENDANCE WHERE ADMISSION_NUMBER = ? AND MONTH = ? AND CLASS=? AND YEAR = ?";
	String GET_STUDENT_ATTENDANCE_EXIST = "SELECT COUNT(*) AS COUNT FROM STUDENT_ATTENDANCE WHERE ADMISSION_NUMBER = ? AND MONTH=? AND CLASS=? AND YEAR = ?";
	String IS_STUDENT_EXISTS = "SELECT COUNT(1) AS COUNT FROM PROGRESS_REPORT WHERE ADMISSION_NUMBER=? AND CLASS=? AND EXAM_TYPE=? ";

	String GET_LOGINADMIN = "SELECT USER_ID, USER_NAME, PASSWORD, ROLE, BRANCH FROM login_credentals WHERE USER_NAME = ?";
	String GET_ALLADMINUSERS = "";
	String ADD_LOGINADMIN = "INSERT INTO login_credentals(USER_ID, USER_NAME, PASSWORD, ROLE, BRANCH) VALUES (?,?,?,?,?)";
	String DELETE_LOGINADMIN = "";
	String UPDATE_LOGINADMIN = "";

	String GET_HOLIDAY_MONTH = "SELECT HOLIDAYS FROM HOLIDAYS WHERE MONTH = ? AND YEAR = ?";
	String GET_PRESENT_YEAR_MONTH = "SELECT MONTH,YEAR FROM PRESENT_WORKING_YEAR ORDER BY SERIAL_NO";
	String GET_YEAR_BY_MONTH = "SELECT YEAR FROM PRESENT_WORKING_YEAR WHERE MONTH = ?";
}
