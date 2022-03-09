package com.hh.hh.attendance.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hh.hh.attendance.entity.AttendanceDto;
import com.hh.hh.member.entity.MemberDto;

@Repository
public class AttendanceDaoImpl implements AttendanceDao{

	@Autowired
	private SqlSession sqlsession;

	@Override
	public int getAttendanceSeq() throws Exception {
		return sqlsession.selectOne("attendance.getSeq");
	}

	@Override
	public int insertWork(AttendanceDto attendancedto) throws Exception {
		return sqlsession.insert("attendance.insertWork",attendancedto);
	}
	// 출근 정보 가져오기
	@Override
	public AttendanceDto infoWork(AttendanceDto attendanceDto) throws Exception {
		return sqlsession.selectOne("attendance.selectInfoWork", attendanceDto);
	}
	// 사원의 출근내역 조회
	@Override
	public List<AttendanceDto> getWorkList(Map<String, Object> map) throws Exception {
		return sqlsession.selectList("attendance.selectWorkList", map);
	}

	@Override
	public int getWorkOut(AttendanceDto attendanceDto) throws Exception {
		return sqlsession.update("attendance.updateWork",attendanceDto);
	}

	@Override
	public int tardyWork(AttendanceDto attendanceDto) throws Exception {
		return sqlsession.insert("attendance.tardyWork",attendanceDto);
	}

	@Override
	public int getWorkOver(AttendanceDto attendanceDto) throws Exception {
		return sqlsession.update("attendance.updateWorkOver",attendanceDto);
	}

	@Override
	public int getWorkNight(AttendanceDto attendanceDto) throws Exception {
		return sqlsession.update("attendance.updateWorkNight",attendanceDto);
	}

	@Override
	public List<AttendanceDto> getAttList(Map<String, Object> map) throws Exception {
		return sqlsession.selectList("attendance.selectAttList",map);
	}

	@Override
	public List<AttendanceDto> getAttAllList(Map<String, Object> map) throws Exception {
		return sqlsession.selectList("attendance.selectAttAllList",map);
	}

	@Override
	public int updateContent(AttendanceDto attendanceDto) throws Exception {
		return sqlsession.update("attendance.updateContent",attendanceDto);
	}
	


	
	
}
