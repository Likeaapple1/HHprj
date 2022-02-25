package com.hh.hh.attendancedao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hh.hh.attendanceentity.AttendanceDto;

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

	
	
}
