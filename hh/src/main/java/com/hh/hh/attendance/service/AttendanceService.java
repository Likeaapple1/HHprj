package com.hh.hh.attendance.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hh.hh.attendance.entity.AttendanceDto;

public interface AttendanceService {

	int work(AttendanceDto attendanceDto, HttpServletRequest req)throws Exception;

	AttendanceDto infoWork(AttendanceDto attendanceDto) throws Exception;

	List<AttendanceDto> getWorkList(long empNo) throws Exception;

	AttendanceDto workout(AttendanceDto attendanceDto) throws Exception;
}
