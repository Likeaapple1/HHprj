package com.hh.hh.attendanceservice;

import javax.servlet.http.HttpServletRequest;

import com.hh.hh.attendanceentity.AttendanceDto;

public interface AttendanceService {

	int work(AttendanceDto attendanceDto, HttpServletRequest req)throws Exception;
}
