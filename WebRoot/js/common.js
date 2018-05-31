/**
 * 获取工程名
 * 
 * @returns
 */
function getContextPath()
{
	var pathName = document.location.pathname;
	var index = pathName.substr(1).indexOf("/");
	var result = pathName.substr(0, index + 1);
	return result;
}

/**
 * 模拟java的StringBuffer
 * @returns
 */
function StringBuffer()
{
	this._strings_ = new Array;
}
StringBuffer.prototype.append = function(str)
{
	this._strings_.push(str);
};
StringBuffer.prototype.toString = function()
{
	return this._strings_.join("");
};

/**
 * 格式化日期 yyyy-MM-dd HH:mm:ss
 * @param plusHour 小时变动数
 */
function formatDate(plusHour)
{
	var now=new Date();
	var year = now.getFullYear();
	var month = now.getMonth()+1;
	var date = now.getDate();
	var hour = now.getHours()+plusHour;
	var min = now.getMinutes();
	var sec = now.getSeconds();
	var sb = new StringBuffer();
	sb.append(year);
	sb.append("-");
	sb.append(month);
	sb.append("-");
	sb.append(date);
	sb.append(" ");
	sb.append(hour);
	sb.append(":");
	sb.append(min);
	sb.append(":");
	sb.append(sec);
	
	return sb.toString();
}

/**
 * 高亮左边框选择栏
 * @param divId
 * @returns
 */
function highlight(divId)
{
	$("#"+divId).addClass("highlight");
}

/**
 * 判断ajax返回数据是否正确
 * 校验通过返回true
 */
function parseAjaxData(data)
{
	// 如果不包含 {"code":说明有异常
	if(data.indexOf('{"code":') < 0)
	{
		// 如果包含 则是重定向到登录页面
		if(data.indexOf('nclick="submitLogin') >= 0)
		{
			window.location.href = getContextPath()+"/login.jsp";
			return false;
		} else
		{
			alert("系统异常，请联系管理员。\r\n"+data);
			return false;
		}
	}
	
	return true;
}

/**
 * 分组和坐席联动
 * @param thiz 分组的selection
 */
function getUserInGroup(thiz)
{
	$.ajax({
		type : "POST",
		url : getContextPath() + "/groupManageGetInGroup.action",
		dataType : "text",
		data : "groupId=" + thiz.value,
		cache : false,
		success : function(data)
		{
			if (!parseAjaxData(data))
				return;
			var resultObj = eval("(" + data + ")");

			var users = resultObj.usersInGroup;
			$("#userNumberId option:gt(0)").each(function()
			{
				$(this).remove();
			});
			
			if (!users) // 没有用户
				return;

			var sb = new StringBuffer();
			for ( var i = 0, j = users.length; i < j; i++)
			{
				sb.append('<OPTION value="');
				sb.append(users[i].number);
				sb.append('">');
				sb.append(users[i].name);
				sb.append('</OPTION>');
			}
			$("#userNumberId").append(sb.toString());
		},
		error : function()
		{
			alert("系统异常！");
		}
	});
}

function gotoCallcenter()
{
	alert("请到呼叫中心执行相关操作");
}

