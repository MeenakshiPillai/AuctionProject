<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <%@ page import="com.storage.DBData" %>
   
  
<jsp:useBean id="obj" class="com.bean.SignupBean"/>
<jsp:setProperty property="*" name="obj"/>
<script src="./js/WelcomeMessage.js"></script>

<%
     int i = DBData.newBidder(obj);
     if (i==1)
     {%>
    	  <body onload="welcomeMsg()">
    	      <input type="hidden" id="id1" value="<%= obj.getName() %>"/>
    	  </body>
     <%
     }
     else
     {
    	 
     }
     %>