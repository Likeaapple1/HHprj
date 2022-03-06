package com.hh.hh.attendance.dao;

import java.util.List;
import java.util.Map;

import com.hh.hh.attendance.entity.AttendanceDto;
import com.hh.hh.member.entity.MemberDto;

public interface AttendanceDao {

	int getAttendanceSeq() throws Exception;

	int insertWork(AttendanceDto attendancedto) throws Exception;

	AttendanceDto infoWork(AttendanceDto attendanceDto) throws Exception;

	List<AttendanceDto> getWorkList(Map<String, Object> map) throws Exception;

	int getWorkOut(AttendanceDto attendanceDto) throws Exception;

	int tardyWork(AttendanceDto attendanceDto) throws Exception;

	int getWorkOver(AttendanceDto attendanceDto) throws Exception;

	int getWorkNight(AttendanceDto attendanceDto) throws Exception;

	List<AttendanceDto> getAttList(Map<String, Object> map) throws Exception;

	List<AttendanceDto> getAttAllList(Map<String, Object> map) throws Exception;
}
