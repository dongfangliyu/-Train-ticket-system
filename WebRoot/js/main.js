
window.onload=function(){
	window.history.forward(1);
	debugger;
	radioShow();
	goTopEx();
}

function radioShow() {
	debugger;
    var radios = document.getElementsByName('myradio');
    
    for (var i = 0; i < radios.length; i++) {
          radios[i].indexs = i + 1;
          radios[i].onclick = function (){
        	  if (this.checked) {
                document.getElementById("tab1").style.display="none";
                document.getElementById("tab2").style.display="none";
                document.getElementById("tab" + this.indexs).style.display="block";
            } 
        }
    }
}



function goTopEx(){
		var obj=document.getElementById("goTopBtn");
		if(obj==null || typeof(obj)==undefined){
			return;
		}
	function getScrollTop(){
		return document.documentElement.scrollTop+document.body.scrollTop;
	}
	function setScrollTop(value){
		if(document.documentElement.scrollTop){
			document.documentElement.scrollTop=value;
		}else{
			document.body.scrollTop=value;
		}
	} 
	window.onscroll=function(){
		{getScrollTop()>0?obj.style.display="":obj.style.display="none";}
	obj.onclick=function(){
		var goTop=setInterval(scrollMove,10);
		function scrollMove(){
			setScrollTop(getScrollTop()/1.1);
			if(getScrollTop()<1)
				clearInterval(goTop);
		}
	}
	}
	}




function selectTag(showContent,selfObj){
	var tag = document.getElementById("tags");
	var oli = tag.getElementsByTagName("li");
	var taglength = oli.length;
	for(i=0; i<taglength; i++){
		oli[i].className = "";
	}
	selfObj.parentNode.className = "current";
	for(i=0; j=document.getElementById("tagContent"+i); i++){
		j.style.display = "none";
	}
	document.getElementById(showContent).style.display = "block";
}

function switchTag(showContent,selfObj){
	var switTab = document.getElementById("switchs");
	var sli = switTab.getElementsByTagName("li");
	var taglength = sli.length;
	for(i=0; i<taglength; i++){
		sli[i].className = "";
	}
	selfObj.parentNode.className = "current";
	for(i=0; j=document.getElementById("switchTag"+i); i++){
		j.style.display = "none";
	}
	document.getElementById(showContent).style.display = "block";
	
	
}

function billswitch(showContent,selfObj){
	var billTab = document.getElementById("billtag");
	var bli = billTab.getElementsByTagName("li");
	var taglength = bli.length;
	for(i=0; i<taglength; i++){
		bli[i].className = "";
	}
	selfObj.parentNode.className = "current";
	for(i=0; j=document.getElementById("billtag"+i); i++){
		j.style.display = "none";
	}
	document.getElementById(showContent).style.display = "block";
	
	
}

$(function(){
	$('.meausl').click(function(){
	$('.mask').css("display","block");
	$('.measure').css("display","block");
	});
	
	$('.chanegphone').click(function(){
	$('.mask').css("display","block");
	$('.change-tel').css("display","block");
	});
	
	$('.changemail').click(function(){
	$('.mask').css("display","block");
	$('.chang-email').css("display","block");
	});
	
	$('.addIp').click(function(){
	$('.mask').css("display","block");
	$('.add-ip').css("display","block");
	});
	
	/*图层的显示或隐藏  写在自己的界面中
	 * $('.testlist').find(".sendmsg").click(function(){
	$('.mask').css("display","block");
	$('.change-tel').css("display","block");
	});*/
	
	$('.more-acc').click(function(){
	$('.disacc').fadeToggle(("display","block"));
	});
	
	 $("#on").click(function(){
        if($("#on").is(':checked')){
           $("#onbox").css("display","block");
        }else{
           $("#onbox").css("display","none");
        }
    })
	
	 $("#dis").click(function(){
        if($("#dis").is(':checked')){
           $("#dison").css("display","block");
        }else{
           $("#dison").css("display","none");
        }
    })
	
	$("#roll").click(function(){
        if($("#roll").is(':checked')){
           $("#rollon").css("display","block");
        }else{
           $("#rollon").css("display","none");
        }
    })
	
	$(".balance-info").find(".number").mouseover(function(){
           $(".number-tip").css("display","block");
        })
		$(".balance-info").find(".number").mouseout(function(){
           $(".number-tip").css("display","none");
        })
	
	$(".notice-list").children().children().siblings().next("a").css("display","none")
	$(".notice-list").children().mouseover(function(){
		$(this).children().next().last().css("display","block")
		$(this).children().next().last().css("color","#00cad9")
	})
	$(".notice-list").children().mouseout(function(){
		$(this).children().next().last().css("display","none")
	})
	$(".notice-list").children().children().siblings().next("a").click(function(){
		$(this).parent("li").remove();
	})
	
	$(".curkey").click(function(){
           $(".mask").css("display","block");
           $(".reset-key").css("display","block");

    })
});

function changebtn(){
	/*
	var seabtn=document.getElementById("serbtn");
	seabtn.onfocus = function(){
			if(this.value=="搜索"){
				this.value='';
				this.style.color="#303030"
				}
		};
	seabtn.onblur = function(){
			if(this.value==''){
				this.value="搜索";
				this.style.color="#ddd"
				
			};
};
*/
}
/**
 * 增加官方号码
 * @param valinput
 * @param dest
 * @param name
 */

function prependtext(valinput,dest,name){
	if(checkeOfficial()){
		var  lins=$("#disWhite li");
		var len = $("#disWhite li").length;//li 的个数
		var value = $("#"+valinput).val();//当前文本框的值
		if(len>0){//判断不允许重复
			var items = $("#disWhite li input");
			for(var i=0;i<len;i++){
				var objv = items[i].value;
				if(objv==value){
					$("#disWhite_error").html("官方号码重复").css("color","red"); 
					return;
				}else{

					$("#disWhite_error").html("").css("color","red"); 
				}
			}
		}
		if(len<6){//最多只能存在6个号码
			var input="<input TYPE=hidden  name='"+name+"' value='"+$("#"+valinput).val()+"'/>";
			var txt2=$("<li value='"+value+"'></li>").html($("#"+valinput).val()+input+"<a class='p-margin' href='javascript:void(0)'>删除</a>") 
			$("#"+dest).prepend(txt2);
			$("#"+dest).children().children("a").css("display","none")
			$("#"+dest).children().mouseover(function(){
				$(this).children().last().css("display","inline")
				$(this).children().last().css("p-margin")
				
			})
			$("#"+dest).children().mouseout(function(){
				$(this).children().last().css("display","none")
			})
			$("#"+dest).children().children("a").click(function(){
				$(this).parent("li").remove();
				$("#disWhite_error").html("").css("color","red"); 
			})
		}else{
			$("#disWhite_error").html("官方号码最多增加6个").css("color","red"); 
		}
	}	      
}
	
/**
 * 增加白名单
 * @param valinput
 * @param dest
 * @param name
 */
function prependtextwrite(valinput,dest,name){
	if(checkewhitelist()){
		var len = $("#hostWhite li").length;//li 的个数
		var value = $("#"+valinput).val();//当前文本框的值
		if(len>0){//判断不允许重复
			var items = $("#hostWhite li input");
			for(var i=0;i<len;i++){
				var objv = items[i].value;
				if(objv==value){
					$("#hostWhite_error").html("白名单重复").css("color","red"); 
					return;
				}else{
					$("#hostWhite_error").html("").css("color","red"); 
				}
			}
		}
		if(len<10){//最多只能存在10个白名单
			var input="<input TYPE=hidden  name='"+name+"' value='"+$("#"+valinput).val()+"'/>";
			var txt2=$("<li value='"+value+"'></li>").html($("#"+valinput).val()+input+"<a class='p-margin' href='javascript:void(0)'>删除</a>") 
			$("#"+dest).prepend(txt2);
			$("#"+dest).children().children("a").css("display","none")
			$("#"+dest).children().mouseover(function(){
				$(this).children().last().css("display","inline")
				$(this).children().last().css("p-margin")
				
			})
			$("#"+dest).children().mouseout(function(){
				$(this).children().last().css("display","none")
			})
			$("#"+dest).children().children("a").click(function(){
				$(this).parent("li").remove();
				$("#hostWhite_error").html("").css("color","red"); 
			})
		}else{
			$("#hostWhite_error").html("白名单最多增加10个").css("color","red"); 
		}
	}	      
}

function confirmbox(){
	$(".mask").css("display","block")
	$(".confirmbox").css("display","block")
	}

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