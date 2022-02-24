package com.hh.hh.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import com.hh.hh.member.entity.MemberDto;

public class MemberInercrptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		MemberDto login = (MemberDto) request.getSession().getAttribute("loginUser");
		
		if(login != null) {
			return true;
		}else {
			request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
		return false;
		}
		
	}

}

