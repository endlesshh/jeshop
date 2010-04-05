<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.jspx.model.JeChat.*"%>

<%
  request.setCharacterEncoding("UTF-8");
  String message = request.getParameter("message");
  String username = request.getParameter("username");
  ChatDAO ChatObj = new ChatDAO();
  if(message!=null&&message!=""&&username!=null&&username!=""){
	  Chat c = new Chat();
	  c.setText(message);
	  c.setUsername(username);
	  ChatObj.save(c);
  }
  List ChatList =  ChatObj.findAll();
  for(int i=0;i<ChatList.size();i++){
	  Chat c2 = (Chat)ChatList.get(i);
	  out.println(c2.getUsername()+"说："+c2.getText()+"\n");
  }
%>