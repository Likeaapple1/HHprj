package com.hh.hh.attendanceservice;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hh.hh.attendancedao.AttendanceDao;
import com.hh.hh.attendanceentity.AttendanceDto;

@Service
@Transactional
public class AttendanceServiceImpl implements AttendanceService {
	
	@Autowired
	private AttendanceDao attendancedao;

	@Override
	public int work(AttendanceDto attendancedto, HttpServletRequest req) throws Exception {
		long att_no = attendancedao.getAttendanceSeq();
		attendancedto.setAttNo(att_no);
		int result = attendancedao.insertWork(attendancedto);
		return 0;
	} 
	

}


