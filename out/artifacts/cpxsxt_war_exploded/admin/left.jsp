<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  
  <c:if test="${sessionScope.userType==0}">
  <body>
        <P class="menu_head" style="font-size: 15px;">修改个人密码</P>
		<DIV style="DISPLAY: none" class=menu_body>
			<A  href="<%=path %>/admin/userinfo/userPw.jsp" target="main">修改个人密码</A> 
	    </DIV>
	    
	    
	    <P class="menu_head" style="font-size: 15px;">系统公告管理</P>
		<DIV style="DISPLAY: none" class=menu_body>
			<A href="<%=path %>/admin/gonggao/gonggaoAdd.jsp" target="main">添加系统公告</A> 
			<A href="<%=path %>/gonggaoMana.action" target="main">系统公告管理</A> 
	    </DIV>
	    
	    
	    <P class="menu_head" style="font-size: 15px;">车次信息管理</P>
		<DIV style="DISPLAY: none" class=menu_body>
			<A href="<%=path %>/checiMana.action" target="main">车次信息管理</A> 
			<A href="<%=path %>/admin/checi/checiAdd.jsp" target="main">添加车次信息</A> 
	    </DIV>
	    
	    
	    
	    
	    
	    <P class="menu_head" style="font-size: 15px;">订票信息管理</P>
		<DIV style="DISPLAY: none" class=menu_body>
			<A href="<%=path %>/yudingMana.action" target="main">订票信息管理</A> 
	    </DIV>
	    
	    
	    
	    <P class="menu_head" style="font-size: 15px;">友情连接管理</P>
		<DIV style="DISPLAY: none" class=menu_body>
			<A href="<%=path %>/lianjieMana.action" target="main">友情连接管理</A> 
			<A href="<%=path %>/admin/lianjie/lianjieAdd.jsp" target="main">添加友情连接</A> 
	    </DIV>
	    
	    
	    
	    <P class="menu_head" style="font-size: 15px;">留言咨询管理</P>
		<DIV style="DISPLAY: none" class=menu_body>
			<A href="<%=path %>/liuyanMana.action" target="main">留言咨询管理</A> 
	    </DIV>
	    
	    
	    
	    <P class="menu_head" style="font-size: 15px;">用户信息管理</P>
		<DIV style="DISPLAY: none" class=menu_body>
			<A href="<%=path %>/userMana.action" target="main">用户信息管理</A> 
	    </DIV>
	       
  </body>
  </c:if>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  <c:if test="${sessionScope.userType==1}">
        <P class="menu_head" style="font-size: 15px;">修改我的信息</P>
		<DIV style="DISPLAY: none" class=menu_body>
			<A  href="<%=path %>/admin/userinfo/userinfo.jsp" target="main">修改我的信息</A> 
	    </DIV>
	    
	    
	    <P class="menu_head" style="font-size: 15px;">我的订票信息</P>
		<DIV style="DISPLAY: none" class=menu_body>
			<A href="<%=path %>/yudingMine.action" target="main">我的订票信息</A> 
	    </DIV>
  </c:if>
</html>
