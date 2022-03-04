package com.hh.hh.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.hh.hh.member.entity.MemberDto;

public class AttendanceAdminInterceptor extends HandlerInterceptorAdapter{
	
	// 관리자 계정 판단하는 인터셉터
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		MemberDto loginUser = (MemberDto) request.getSession().getAttribute("loginUser");
		//System.out.println("로그인 유저 :::" + loginUser);
		if(loginUser.getManagerYn() == 'Y' & loginUser.getManagerDept().equals("근태관리")) {
			return true;
		}else {
			request.getRequestDispatcher("/WEB-INF/views/error/gradeerror.jsp").forward(request, response);
			return false;
		}
	}
}
