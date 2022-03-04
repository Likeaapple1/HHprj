package com.hh.hh.attendance.controller;

import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
   
   @PostMapping("home")
   // 출근하기 버튼 눌렀을 때 insert 진행
   public String home(AttendanceDto attendanceDto, HttpServletRequest req, HttpSession session) throws Exception {
      // loginUser세션에서 memberNo값 가져오기
      MemberDto loginUser = (MemberDto) session.getAttribute("loginUser");
      long empNo = loginUser.getEmpNo();
      attendanceDto.setEmpNo(empNo);
      
      // 버튼 클릭 시간 불러오기
      Date workCheckStart = null;
      Date workBtnStart = null;
      
      Date currentTime = new Date();
      SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
      workCheckStart = sdf.parse("09:00:00");
      workBtnStart = sdf.parse(sdf.format(currentTime));
      
      // 인자보다 미래!
      if(workCheckStart.compareTo(workBtnStart) >= 0) {
    	  System.out.println("정상출근");
    	  // workStart > 09:00 일경우
    	  // insert 쿼리 날리기 위한 준비
    	  int result = attendanceservice.work(attendanceDto, req);
    	  // insert 쿼리 잘 날림!
    	  if(result > 0) {
    		  // home에서 출근 / 퇴근 버튼 변경을 위한 쿼리문
    		  AttendanceDto attUser = attendanceservice.infoWork(attendanceDto); 
    		  session.setAttribute("attUser", attUser);
    		  return "redirect:/attendance/home";
    	  }else {
    		  return "insert fail";
    	  }
      }else {
    	  System.out.println("지각");
    	  int result = attendanceservice.tardy(attendanceDto, req);
    	  if(result > 0) {
    		  // home에서 출근 / 퇴근 버튼 변경을 위한 쿼리문
    		  AttendanceDto attUser = attendanceservice.infoWork(attendanceDto); 
    		  session.setAttribute("attUser", attUser);
    		  return "redirect:/attendance/home";
    	  }else {
    		  return "insert fail";
    	  }
      }
   }
   
   @PostMapping("workout")
   public String workout(AttendanceDto attendanceDto, HttpServletRequest req, HttpSession session) throws Exception {
	      MemberDto loginUser = (MemberDto) session.getAttribute("loginUser");
	      long empNo = loginUser.getEmpNo();
	      attendanceDto.setEmpNo(empNo);
	      
	      session.getAttribute("attUser");
	      
	      // 순서대로 정시퇴근시간, 야간근무 시작 시간, 퇴근 버튼, 버튼 누른 현재시간
	      Date workEnd = null;
	      //Date workOver = null;
	      Date currentTime = new Date();

	      // format 설정하기
	      SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
	      
	      // 퇴근버튼에 현재 시간 format 넣어주기
	       Date workBtnEnd = sdf.parse(sdf.format(currentTime));
	      
	      // 변수에 시간 넣기
	      // 야근처리 22:00하고 00:00 
	      // 초과근무를 위한 컬럼
	      Date stworkEnd1 =  sdf.parse("22:00:00");
	      Date stworkEnd2 =  sdf.parse("00:00:00");
	      Date stworkEnd3 = sdf.parse("06:00:00");
	      Date workOver = sdf.parse("18:00:00");
	      attendanceDto.setAttNsStart(stworkEnd1);
	      attendanceDto.setAttNsStartEnd(stworkEnd2);
	      attendanceDto.setAttNsStartEndfinal(stworkEnd3);
	      attendanceDto.setOvDateStrat(workOver);
	      attendanceDto.setAttNsEnd(workBtnEnd);
	     // workOver = sdf.parse("22:00:00");
	      
	      AttendanceDto adto = attendanceservice.workout(attendanceDto);  
	      // 정상근무처리
			/*
			 * if(workEnd.compareTo(workBtnEnd) >= 0) { }
			 */
	      // 초과근무처리
//	      else if(workEnd.compareTo(workBtnEnd) < 0){
//	    	  AttendanceDto adto = attendanceservice.workover(attendanceDto);
//	      }
//	      // 야근 처리
//	      else if(workOver.compareTo(workBtnEnd) <= 0){
//	    	  AttendanceDto adto = attendanceservice.worknight(attendanceDto);
//	      }
	      session.removeAttribute("attUser");
	      return "redirect:/attendance/home";
   }
   
   @GetMapping("admin/list")
   public String list() {
	   return "attendance/admin/list";
   }
}