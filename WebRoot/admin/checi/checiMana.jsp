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
           function checiDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/checiDel.action?id="+id;
               }
           }
           
           
           function checiPre(id)
           {
               window.location.href="<%=path %>/checiPre.action?id="+id;
           }
           
           function checiAdd()
           {
                 var url="<%=path %>/admin/checi/checiAdd.jsp";
				 window.location.href=url;
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
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
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
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
					    <input type="button" value="修改"  onclick="checiPre(<s:property value="#checi.id"/>)"/>
						<input type="button" value="删除" onclick="checiDel(<s:property value="#checi.id"/>)"/>
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 8px;">
			  <tr>
			    <td>
			      <input type="button" value="添加车次信息" style="width: 123px;" onclick="checiAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
