package com.hh.hh.attendance.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hh.hh.attendance.dao.AttendanceDao;
import com.hh.hh.attendance.entity.AttendanceDto;

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
		return result;
	}

	@Override
	public AttendanceDto infoWork(AttendanceDto attendanceDto) throws Exception {
		// 사원 조회 하기
		AttendanceDto attUser = attendancedao.infoWork(attendanceDto);
		return attUser;
	}

	@Override
	public List<AttendanceDto> getWorkList(long empNo) throws Exception {
		return attendancedao.getWorkList(empNo);
	}
	
	@Override
	public AttendanceDto workout(AttendanceDto attendanceDto) throws Exception {
		// 퇴근 시간 처리
		int result = attendancedao.getWorkOut(attendanceDto);
		System.out.println(result);
		AttendanceDto attendancedto = null;
		if(result > 0) {
			System.out.println(result);
			attendancedto = attendancedao.infoWork(attendanceDto);
		}
		return attendancedto;
	}

	@Override
	public int tardy(AttendanceDto attendanceDto, HttpServletRequest req) throws Exception {
		long att_no = attendancedao.getAttendanceSeq();
		attendanceDto.setAttNo(att_no);
		int result = attendancedao.tardyWork(attendanceDto);
		return result;

	}

	@Override
	public AttendanceDto workover(AttendanceDto attendanceDto) throws Exception {
		int result = attendancedao.getWorkOver(attendanceDto);
		AttendanceDto attendancedto = null;
		if(result > 0) {
			attendancedto = attendancedao.infoWork(attendanceDto);
		}
		return attendancedto;
	}

	@Override
	public AttendanceDto worknight(AttendanceDto attendanceDto) throws Exception {
		int result = attendancedao.getWorkNight(attendanceDto);
		AttendanceDto attendancedto = null;
		if(result > 0) {
			attendancedto = attendancedao.infoWork(attendanceDto);
		}
		return attendancedto;
	}
}