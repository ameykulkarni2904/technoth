//package com.psl.util;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.web.method.HandlerMethod;
//import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
//
//import com.psl.controller.CommonController;
//
//
//
//public class SessionValidator extends HandlerInterceptorAdapter {
//
//    @Override
//    public boolean preHandle(HttpServletRequest request,
//            HttpServletResponse response, Object handler) throws Exception {
//            HttpSession httpSession = request.getSession(false);
//        if (!(((HandlerMethod)handler).getBean() instanceof CommonController)) {
//            if (httpSession.getAttribute("user") == null) {
//                //throw new Exception("Invalid session please login");
//            	System.out.println("login validator.."+httpSession.getAttribute("user") );
//            }
//        	System.out.println("login validator.."+httpSession.getAttribute("user") );
//        }
//        return true;
//    }
//}