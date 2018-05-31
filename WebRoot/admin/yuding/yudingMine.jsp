<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		
		<link href="<%=path %>/css/base.css" type="text/css" rel="stylesheet" />
		
	    <script type="text/javascript">
	        
	        function checiXinxi(id)
	        {
	             var url="<%=path %>/checiXinxi.action?id="+id;
                 var ret = window.showModalDialog(url,"","dialogWidth:900px; dialogHeight:200px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	        }
	    </script>
	</head>

	<body>
		
                                  <c:forEach items="${requestScope.yudingList}" var="yuding" varStatus="sta">
						               <fieldset style="width:95%; margin-left:5px;"><legend class="fieldtitle"></legend>
											<table class="bill" width="97%" cellpadding="4" cellspacing="4">
											    <tr>
											        <td>车票信息：<a href="#" onclick="checiXinxi(${yuding.checiId})" style="color: red">点击查看</a></td>
											    </tr>
											    <tr>
											        <td>类型：${yuding.leixing}</td>
											    </tr>
											    <tr>
											        <td>预定数量：${yuding.shuliang}</td>
											    </tr>
											    <tr>
											        <td>总金&nbsp;&nbsp;&nbsp;额：${yuding.zongjine}</td>
											    </tr>
											    <tr>
											        <td>您的姓名：${yuding.nidexingming}</td>
											    </tr>
											    <tr>
											        <td>联系电话：${yuding.lianxihua}</td>
											    </tr>
											    <tr>
											        <td>送货地址：${yuding.songhuodizhi}</td>
											    </tr>
											    <tr>
											        <td>付款方式：${yuding.zhifufangshi}</td>
											    </tr>
											    <tr>
											        <td>下单时间：${yuding.yudingshi}</td>
											    </tr>
											    <tr>
											        <td>订单状态：${yuding.zhuangtai}</td>
											    </tr>
											    <tr>
											        <td>
											            <form action="<%=path %>/yudingTuipiao.action" name="111" method="post">
												            <input type="hidden" name="id" value="${yuding.id}">
												            <input type="submit" value="我要退票" style="width: 120px;"/>
											            </form>
											        </td>
											    </tr>
											</table>
									   </fieldset>
									   <br/>
									   </c:forEach>
						      
	</body>
</html>
