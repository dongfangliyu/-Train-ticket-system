<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link rel="stylesheet" href="<%=path %>/css/qiantai.css" type="text/css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/list-ui7.css" media="all"/>
	
	<style rel="stylesheet" type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>
	
    <script type="text/javascript">
	        function yuding(checiId)
	        {
	            <s:if test="#session.userType!=1">
				     alert("请先登录");
				</s:if>
				<s:if test="#session.userType==1">
				     var url="<%=path %>/qiantai/yuding/yudingAdd.jsp?checiId="+checiId;
	                 var ret = window.showModalDialog(url,"","dialogWidth:500px; dialogHeight:250px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
				     window.location.reload();
				</s:if>
	        }
    </script>
    
  </head>
  
  <body>
	<div id="header-wrap">
		<jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>
	</div>
				
	<div id="content-wrap">
		<div id="content">	 
		    <div id="main">		
				<!-- 111 -->
				<!-- <h1>企业介绍</h1> -->
	            <p>
	                 <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
						<tr bgcolor="#E7E7E7">
							<td height="14" colspan=12" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" height="22">
							<td width="4%">序号</td>
							<td width="10%">车次号</td>
							<td width="10%">始发站点</td>
							<td width="10%">终点站点</td>
							<td width="10%">车票日期</td>
							
							<td width="10%">发车时间</td>
							<td width="10%">到达时间</td>
							<td width="10%">车票价格</td>
							<td width="10%">剩余票数</td>
							
							<td width="10%">操作</td>
				        </tr>	
						<s:iterator value="#request.checiList" id="checi" status="ss">
						<tr align='center' bgcolor="#FFFFFF">
							<td bgcolor="#FFFFFF" align="center">
								<s:property value="#ss.index+1"/>
							</td>
							<td bgcolor="#FFFFFF" align="center">
								<s:property value="#checi.bianhao"/>
							</td>
							<td bgcolor="#FFFFFF" align="center">
								<s:property value="#checi.shifazhan"/>
							</td>
							<td bgcolor="#FFFFFF" align="center">
								<s:property value="#checi.daodazhan"/>
							</td>
							<td bgcolor="#FFFFFF" align="center">
								<s:property value="#checi.piaoshijian"/>
							</td>
							
							<td bgcolor="#FFFFFF" align="center">
								<s:property value="#checi.startshijian"/>
							</td>
							<td bgcolor="#FFFFFF" align="center">
							    <s:property value="#checi.endshijian"/>
							</td>
							<td bgcolor="#FFFFFF" align="center">
								<s:property value="#checi.piaojia"/>
							</td>
							<td  bgcolor="#FFFFFF" align="center">
							    <s:property value="#checi.piaoshu"/>
							</td>
							
							<td bgcolor="#FFFFFF" align="center">
									<input type="button" value="订购" onclick="yuding(<s:property value="#checi.id"/>)" style="width: 50px;height: 20px;"/>
							</td>
						</tr>
						</s:iterator>
					</table>
	            </p>
	            <!-- 111 -->
			</div>
			<div id="sidebar">	
				<jsp:include flush="true" page="/qiantai/right.jsp"></jsp:include>
			</div>			
		</div>
	</div>

	<div style="height: 10px;">
	    <br/><a style="color: white;" href="<%=path %>/login.jsp">系统后台</a>
	</div>
</body>
</html>
