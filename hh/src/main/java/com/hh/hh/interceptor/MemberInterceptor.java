package com.hh.hh.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import com.hh.hh.member.entity.MemberDto;

public class MemberInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		MemberDto loginUser = (MemberDto) request.getSession().getAttribute("loginUser");
		
		if(loginUser != null) {
			return true;
		}else {
			response.sendRedirect("/hh/login");
			return false;
		}
		
	}

}

