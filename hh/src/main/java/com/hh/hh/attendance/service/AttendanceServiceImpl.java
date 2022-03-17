package com.hh.hh.attendance.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hh.hh.attendance.dao.AttendanceDao;
import com.hh.hh.attendance.entity.AttendanceDto;
import com.hh.hh.common.PageVo;
import com.hh.hh.member.entity.MemberDto;

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
		AttendanceDto attendancedto = null;
		if(result > 0) {
		}
		return attendancedto;
	}

	@Override
	public AttendanceDto weekendWork(AttendanceDto attendanceDto) throws Exception {
		int result = attendancedao.weekendWork(attendanceDto);
		AttendanceDto attendancedto = null;
		if(result > 0) {
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
	public List<AttendanceDto> getAttList(Map<String, Object> map) throws Exception {
		return attendancedao.getAttList(map);
	}

	@Override
	public List<AttendanceDto> getAttAllList(Map<String, Object> map) throws Exception {
		return attendancedao.getAttAllList(map);
	}

	@Override
	public int updateContent(AttendanceDto attendanceDto) throws Exception {
		int result = attendancedao.updateContent(attendanceDto);
		if(result > 0) {
			System.out.println("result 성공");
			return result;
		}
		System.out.println("result 실패");
		return result;
	}

	@Override
	public int getAttCnt() throws Exception {
		return attendancedao.getAttCnt();
	}

	@Override
	public List<AttendanceDto> getworkChartList(long empNo) throws Exception {
		return attendancedao.getworkChartList(empNo);
	}

	@Override
	public List<AttendanceDto> getAttEmpAllList(Map<String, Object> map) throws Exception {
		return attendancedao.getAttEmpAllList(map);
	}

	@Override
	public List<AttendanceDto> getAttEmpEpAllList(Map<String, Object> map) throws Exception {
		return attendancedao.getAttEmpEpAllList(map);
	}

}