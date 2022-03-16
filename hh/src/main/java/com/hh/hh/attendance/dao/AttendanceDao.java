package com.hh.hh.attendance.dao;

import java.util.List;
import java.util.Map;

import com.hh.hh.attendance.entity.AttendanceDto;
import com.hh.hh.common.PageVo;
import com.hh.hh.member.entity.MemberDto;

public interface AttendanceDao {

	int getAttendanceSeq() throws Exception;

	int insertWork(AttendanceDto attendancedto) throws Exception;

	AttendanceDto infoWork(AttendanceDto attendanceDto) throws Exception;

	List<AttendanceDto> getWorkList(long empNo) throws Exception;

	int getWorkOut(AttendanceDto attendanceDto) throws Exception;

	int weekendWork(AttendanceDto attendanceDto) throws Exception;

	int tardyWork(AttendanceDto attendanceDto) throws Exception;

	List<AttendanceDto> getAttList(Map<String, Object> map) throws Exception;

	List<AttendanceDto> getAttAllList(Map<String, Object> map) throws Exception;

	int updateContent(AttendanceDto attendanceDto) throws Exception;

	int getAttCnt() throws Exception;

	List<AttendanceDto> getworkChartList(long empNo) throws Exception;

	List<AttendanceDto> getAttEmpAllList(Map<String, Object> map) throws Exception;
}
