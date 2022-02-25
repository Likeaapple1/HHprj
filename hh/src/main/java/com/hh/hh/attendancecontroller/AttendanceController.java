package com.hh.hh.attendancecontroller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hh.hh.attendanceentity.AttendanceDto;
import com.hh.hh.attendanceservice.AttendanceService;
import com.hh.hh.member.entity.MemberDto;

@Controller
@RequestMapping("attendance")
public class AttendanceController {
	
	@Autowired
	private AttendanceService attendanceservice;

	@GetMapping("home")
	public String home() {
		return "attendance/home";
	}
	
	@PostMapping("home")
	@ResponseBody
	public String home(AttendanceDto attendanceDto, HttpServletRequest req, HttpSession session) throws Exception {
		// loginUser세션에서 memberNo값 가져오기
		MemberDto loginUser = (MemberDto) session.getAttribute("loginUser");
		long memberNo = loginUser.getMemberNo();
		attendanceDto.setEmpNo(memberNo);
		
		// insert 쿼리 날리기 위한 준비
		int result = attendanceservice.work(attendanceDto, req);
		
		// attendanceDto 객체에 출근 버튼 클릭했는지 여부
		// AttendanceDto AttUser = attendanceservice.toDay(attendanceDto);
		
		// insert 쿼리 잘 날림!
		if(result > 0) {
			return "insert success";
		}else {
			return "insert fail";
		}
	}
}
