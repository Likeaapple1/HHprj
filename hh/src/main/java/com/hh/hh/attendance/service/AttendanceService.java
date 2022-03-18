package com.hh.hh.attendance.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.hh.hh.attendance.entity.AttendanceDto;
import com.hh.hh.common.PageVo;
import com.hh.hh.member.entity.MemberDto;

public interface AttendanceService {

	int work(AttendanceDto attendanceDto, HttpServletRequest req)throws Exception;

	AttendanceDto infoWork(AttendanceDto attendanceDto) throws Exception;

	List<AttendanceDto> getWorkList(long empNo) throws Exception;

	AttendanceDto workout(AttendanceDto attendanceDto) throws Exception;

	AttendanceDto weekendWork(AttendanceDto attendanceDto) throws Exception;

	int tardy(AttendanceDto attendanceDto, HttpServletRequest req) throws Exception;

	List<AttendanceDto> getAttList(Map<String, Object> map) throws Exception;

	List<AttendanceDto> getAttAllList(Map<String, Object> map) throws Exception;

	int updateContent(AttendanceDto attendanceDto) throws Exception;

	int getAttCnt() throws Exception;

	List<AttendanceDto> getworkChartList(long empNo) throws Exception;

	List<AttendanceDto> getAttEmpAllList(Map<String, Object> map) throws Exception;

	List<AttendanceDto> getAttEmpEpAllList(Map<String, Object> map) throws Exception;

	List<AttendanceDto> getAttEmpAdminAllList(Map<String, Object> map) throws Exception;

	List<AttendanceDto> getAttSetAdminAllList(AttendanceDto attendanceDto) throws Exception;

	List<AttendanceDto> getAttSetAdminUpdateAllList(AttendanceDto attendanceDto) throws Exception;

	int updateAdminContent(AttendanceDto attendanceDto) throws Exception;
}
