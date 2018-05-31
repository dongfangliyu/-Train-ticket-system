<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
    <link rel="stylesheet" href="<%=path %>/css/main1.css" type="text/css"></link>
    
    <script type="text/javascript" src="<%=path %>/js/jquery.1.9.1.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/main.js"></script>
    <script type="text/javascript" src="<%=path %>/js/common.js"></script>
    
    <SCRIPT type=text/javascript>
		$(document).ready(function(){
			$("#firstpane .menu_body:eq(0)").hide();
			$("#firstpane p.menu_head").click(function(){
				$(this).addClass("current").next("div.menu_body").slideToggle(300).siblings("div.menu_body").slideUp("slow");
				$(this).siblings().removeClass("current");
			});
			$("#secondpane .menu_body:eq(0)").show();
			$("#secondpane p.menu_head").mouseover(function(){
				$(this).addClass("current").next("div.menu_body").slideDown(500).siblings("div.menu_body").slideUp("slow");
				$(this).siblings().removeClass("current");
			});
			
		});
		
		function logout()
		{
		   if(confirm("确定要退出本系统吗??"))
		   {
			   window.parent.location="<%=path %>/login.jsp";
		   }
		}
    </SCRIPT>
    
    
  </head>
  <BODY style="BACKGROUND: #fff">
     <DIV class=top style="height: 130px;">
        <DIV class="header clearfix">
           <DIV class=logo  style="MARGIN-TOP: 53px;color: white;font-size: 30px;font-family: 微软雅黑">火车售票管理系统</DIV>
           <DIV style="margin-top: 53px;margin-left: 700px;color: white">
				<c:if test="${sessionScope.userType==0}">
                        <span style="color: white;font-size: 17px;font-family: 微软雅黑">欢迎您：系统管理员</span>  
                         <a href="#" style="color: white;font-size: 16px;font-family: 微软雅黑" onclick="logout()">注销退出</a>
	                </c:if>
	                <c:if test="${sessionScope.userType==1}">
	                    <span style="color: white;font-size: 17px;font-family: 微软雅黑"> 欢迎您：${sessionScope.user.userRealname }</span>
	                </c:if>
	                <c:if test="${sessionScope.userType==2}">
	                    
	                </c:if>
	                &nbsp;&nbsp;&nbsp;
	               
           </DIV>
        </DIV>
     </DIV>
     
     
     
     <DIV class=content>
       <DIV class="w1000 clearfix">
          <!--left -->
          <DIV class="left leftside">
             <DIV id=firstpane class=menu_list>
				<jsp:include flush="true" page="/admin/left.jsp"></jsp:include>  
             </DIV>
          </DIV>
          <!--left -->
          
          <!--right -->
          <DIV class="left docontent">
			 <DIV class="doclist">
			    <iframe name="main" width="100%" height="600" frameborder="0" scrolling="no" src="<%=path %>/admin/right.jsp"></iframe>
			 </DIV>
	      </DIV>
	      <!--right -->
	   </DIV>
	 </DIV>
</BODY>
</html>
