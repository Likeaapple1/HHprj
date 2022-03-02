package com.hh.hh.attendance.dao;

import java.util.List;

import com.hh.hh.attendance.entity.AttendanceDto;

public interface AttendanceDao {

	int getAttendanceSeq() throws Exception;

	int insertWork(AttendanceDto attendancedto) throws Exception;

	AttendanceDto infoWork(AttendanceDto attendanceDto) throws Exception;

	List<AttendanceDto> getWorkList(long empNo) throws Exception;

	int getWorkOut(AttendanceDto attendanceDto) throws Exception;

}
