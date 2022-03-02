package com.hh.hh.attendance.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hh.hh.annual.entity.AnnualDto;
import com.hh.hh.annual.service.AnnualService;
import com.hh.hh.attendance.entity.AttendanceDto;
import com.hh.hh.attendance.service.AttendanceService;
import com.hh.hh.member.entity.MemberDto;

@Controller
@RequestMapping("attendance")
public class AttendanceController {
   
   @Autowired
   private AttendanceService attendanceservice;

   @Autowired
   private AnnualService annualservice;
   
   @GetMapping("home")
   public String home(HttpSession session, Model model) throws Exception {
      // 세션에서 로그인 정보 가져오기
      MemberDto loginUser = (MemberDto) session.getAttribute("loginUser");
      long empNo = loginUser.getEmpNo();
      // 시간 포맷 맞춰주기
      SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm:ss+SSSS");
      
      // 로그인한 사용자의 근태내역조회 
      List<AttendanceDto> workUserList = attendanceservice.getWorkList(empNo);
      if(workUserList != null) {

         // 
         for(AttendanceDto wul : workUserList) {
            // 문자열 형식으로 변환한다
            String startdate = sdf.format(wul.getAttStrDate());
            String enddate = sdf.format(wul.getAttEndDate());
            // 데이터 타입으로 변환해서 넣어주기
            wul.setStartDate(startdate);
            wul.setEndDate(enddate);
         }
         model.addAttribute("workUserList", workUserList);
         
      }
      // 로그인 한 사용자의 연차 내역 조회
      List<AnnualDto> holiUserList = annualservice.getHoliList(empNo);
         if(holiUserList != null) {
            for(AnnualDto hll : holiUserList) {
               // 문자열 형식으로 변환한다.
              String startdate = sdf.format(hll.getAnnualStart());
               String enddate = sdf.format(hll.getAnnualEnd());
               // 데이터 타입으로 변환해서 넣어주기
               hll.setStartDate(startdate);
               hll.setEndDate(enddate);
               
            }
            model.addAttribute("holiUserList", holiUserList);
         }
      return "attendance/home";
   }
   
   @PostMapping("working")
   // 출근하기 버튼 눌렀을 때 insert 진행
   public String home(AttendanceDto attendanceDto, HttpServletRequest req, HttpSession session) throws Exception {
      // loginUser세션에서 memberNo값 가져오기
      MemberDto loginUser = (MemberDto) session.getAttribute("loginUser");
      long empNo = loginUser.getEmpNo();
      attendanceDto.setEmpNo(empNo);
      
      // insert 쿼리 날리기 위한 준비
      int result = attendanceservice.work(attendanceDto, req);
      // insert 쿼리 잘 날림!
      if(result > 0) {
         // home에서 출근 / 퇴근 버튼 변경을 위한 쿼리문
    	 AttendanceDto attUser = attendanceservice.infoWork(attendanceDto); 
         session.setAttribute("attUser", attUser);
         return "attendance/home";
      }else {
         return "insert fail";
      }
   }
   
   @PostMapping("workout")
   public String workout(AttendanceDto attendanceDto, HttpServletRequest req, HttpSession session) throws Exception {
	      MemberDto loginUser = (MemberDto) session.getAttribute("loginUser");
	      long empNo = loginUser.getEmpNo();
	      attendanceDto.setEmpNo(empNo);
	      // 세션 가지고 오기
	      session.getAttribute("attUser");
	      // 세션 지우기
	      session.removeAttribute("attUser");
	      AttendanceDto adto = attendanceservice.workout(attendanceDto);
	      
	      return "attendance/home";
   }
}