package com.hh.hh.attendancedao;

import com.hh.hh.attendanceentity.AttendanceDto;

public interface AttendanceDao {

	int getAttendanceSeq() throws Exception;

	int insertWork(AttendanceDto attendancedto) throws Exception;

}
