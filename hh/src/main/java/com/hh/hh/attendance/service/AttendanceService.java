package com.hh.hh.attendance.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.hh.hh.attendance.entity.AttendanceDto;
import com.hh.hh.member.entity.MemberDto;

public interface AttendanceService {

	int work(AttendanceDto attendanceDto, HttpServletRequest req)throws Exception;

	AttendanceDto infoWork(AttendanceDto attendanceDto) throws Exception;

	List<AttendanceDto> getWorkList(Map<String, Object> map) throws Exception;

	AttendanceDto workout(AttendanceDto attendanceDto) throws Exception;

	int tardy(AttendanceDto attendanceDto, HttpServletRequest req) throws Exception;

	AttendanceDto workover(AttendanceDto attendanceDto) throws Exception;

	AttendanceDto worknight(AttendanceDto attendanceDto) throws Exception;

	List<AttendanceDto> getAttList(Map<String, Object> map) throws Exception;

	List<AttendanceDto> getAttAllList(Map<String, Object> map) throws Exception;
}
