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
      <script type="text/javascript">
          function lianje(url)
          {
              window.open(url, "_blank");
          }
      </script>
  </head>
  
  <body>
				<h1>友情链接</h1>
				<ul class="sidemenu" style="margin-left: 6px;">
					<c:forEach items="${sessionScope.lianjieList}" var="lianjie">
					<li style="height: 30px;font-family: 微软雅黑;font-size: 12px;" onclick="lianje('${lianjie.url}')">${lianjie.name}</a></li>
					</c:forEach>
				</ul>
				<br/>
				<h1>联系我们</h1>
				<ul class="sidemenu" style="margin-left: 6px;">
					<li style="height: 30px;font-family: 微软雅黑;font-size: 12px;">地址：xxxxxxxxxxxx</li>
					<li style="height: 30px;font-family: 微软雅黑;font-size: 12px;">电话：13500000000</li>
					<li style="height: 30px;font-family: 微软雅黑;font-size: 12px;">传真：010-0000000</li>
				</ul>
				<!-- <h1>系统公告</h1>
				<div style="margin-left: 10px;">
				    <MARQUEE onmouseover=this.stop() onmouseout=this.start() direction=up height=90 width=130 scrollAmount=3 scrollDelay=166 border="0">本站于2015年06月18日正式开通,欢迎大家访问本网站,各种信息应有尽有，欢迎各位参观。</MARQUEE>
				</div> -->
				<br/><br/><br/><br/><br/><br/><br/><br/>
				<br/><br/><br/><br/><br/><br/>
  </body>
</html>
