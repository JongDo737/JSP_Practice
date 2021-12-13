<%@page import="com.google.gson.Gson"%>
<%@page import="beans.UserBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="userDao" class="dao.UserDao"/>
    
<%
	// MIME 타입
	
	response.setContentType("application/json");
	
	Vector<UserBean> vlist = userDao.getUserBean();
	Gson gson = new Gson();
	
	String jsonStr = gson.toJson(vlist);
	
	response.getWriter().write(jsonStr);
	
	//json 형태 --> 문자열 --> 약속정한 문자열 타입을 json
	// 키값  " "  = {"name" : 값}
	


%>