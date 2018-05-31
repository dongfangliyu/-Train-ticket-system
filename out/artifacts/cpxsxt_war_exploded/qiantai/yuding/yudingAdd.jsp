<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	    <base target="_self"/>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
		<script language="javascript">
        </script>
	</head>
	<body style="margin-top: 8px;">
			<form action="<%=path %>/yudingAdd.action" name="form1" method="post">
				<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9">
							座位类型：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<select name="leixing" style="width: 205px;">
										    <option value="硬座">硬座</option>
										    <option value="硬卧">硬卧</option>
										    <option value="软卧">软卧</option>
										</select>
						</td>
					</tr>
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9">
							预定数量：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text"  name="shuliang" value="1" style="width: 150px;" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
						</td>
					</tr>
					
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9">
							您的姓名：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text"  name="nidexingming" value="" style="width: 150px;"/>
						</td>
					</tr>
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9">
							联系电话：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text"  name="lianxihua" value="" style="width: 150px;"/>
						</td>
					</tr>
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9">
							送货地址：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text"  name="songhuodizhi" value="" style="width: 150px;"/>
						</td>
					</tr>
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9">
							付款方式：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<select name="zhifufangshi" style="width: 155px;">
							    <option value="票到付款">票到付款</option>
							    <option value="银行付款">银行付款</option>
							</select>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9">
							&nbsp;
						</td>
						<td bgcolor="#FFFFFF">
							<input type="hidden" name="checiId" id="checiId" value="<%=request.getParameter("checiId") %>"/>
							<input type="submit" value="确定"/>
						</td>
					</tr>
				</table>
			</form>
	</body>
</html>
