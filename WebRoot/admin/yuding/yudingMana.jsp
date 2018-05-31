<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
        <script language="javascript">
           function yudingDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/yudingDel.action?id="+id;
               }
           }
           
           function yudingShouli(id)
           {
               if(confirm('您确定受理该订单吗？'))
               {
                   window.location.href="<%=path %>/yudingShouli.action?id="+id;
               }
           }
           
           function checiXinxi(id)
	       {
	             var url="<%=path %>/checiXinxi.action?id="+id;
                 var ret = window.showModalDialog(url,"","dialogWidth:900px; dialogHeight:200px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	       }
	        
	        
	        function userXinxi(userId)
	        {
	             var url="<%=path %>/userXinxi.action?userId="+userId;
                 var ret = window.showModalDialog(url,"","dialogWidth:900px; dialogHeight:200px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	        }
           
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan=17" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="8%">会员信息</td>
					<td width="8%">车票信息</td>
					<td width="8%">类型</td>
					<td width="8%">预定数量</td>
					
					<td width="5%">总金额</td>
					<td width="8%">客户姓名</td>
					<td width="8%">联系电话</td>
					<td width="8%">送货地址</td>
					
					<td width="8%">付款方式</td>
					<td width="8%">预定时间</td>
					<td width="8%">订单状态</td>
					<td width="8%">操作</td>
		        </tr>	
				<s:iterator value="#request.yudingList" id="yuding" status="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#ss.index+1"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="userXinxi(<s:property value="#yuding.userId"/>)">会员信息</a>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="checiXinxi(<s:property value="#yuding.checiId"/>)">车票信息</a>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#yuding.leixing"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#yuding.shuliang"/>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#yuding.zongjine"/>
					</td>
					<td  bgcolor="#FFFFFF" align="center">
					    <s:property value="#yuding.nidexingming"/>
					</td>
					<td  bgcolor="#FFFFFF" align="center">
					    <s:property value="#yuding.lianxihua"/>
					</td>
					<td  bgcolor="#FFFFFF" align="center">
					    <s:property value="#yuding.songhuodizhi"/>
					</td>
					
					<td  bgcolor="#FFFFFF" align="center">
					    <s:property value="#yuding.zhifufangshi"/>
					</td>
					<td  bgcolor="#FFFFFF" align="center">
					    <s:property value="#yuding.yudingshi"/>
					</td>
					<td  bgcolor="#FFFFFF" align="center">
					    <s:property value="#yuding.zhuangtai"/>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
					    <input type="button" value="删除" onclick="yudingDel(<s:property value="#yuding.id"/>)"/>
					    &nbsp;
					    <input type="button" value="受理" onclick="yudingShouli(<s:property value="#yuding.id"/>)"/>
					</td>
				</tr>
				</s:iterator>
			</table>
	</body>
</html>
