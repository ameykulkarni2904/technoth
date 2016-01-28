//package com.psl.util;
//
//import javax.servlet.http.Cookie;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.web.bind.annotation.CookieValue;
//import org.springframework.web.method.HandlerMethod;
//import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
//
//import com.psl.controller.CommonController;
//
//
//
//public class SessionValidator extends HandlerInterceptorAdapter {
//
//
//    
//    @Override
//    public boolean preHandle(HttpServletRequest request,
//            HttpServletResponse response, Object handler) throws Exception {
//            HttpSession session = request.getSession();
//        if (!(((HandlerMethod)handler).getBean() instanceof CommonController)) {
//            if (session == null || session.getAttribute("user") == null) {
//                throw new Exception("Invalid session please login");
//            }
//        }
//        return true;
//    }
//
//    	 
//            
//       
//    	
//    
//}