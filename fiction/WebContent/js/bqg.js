/*function search(keyword) {
	if (!keyword) {
		keyword = $("#wd").val();
		if (keyword == null || keyword == "" || keyword == "可搜书名和作者，请您少字也别输错字。") {
			alert("请输入书名或作者名字。");
			return;
		}
	}
	window.location.href='/modules/article/search.php?searchkey='+encodeURIComponent(keyword);
}
function dol() {
	var name = $("#username").val();
	if (name == "") {
		alert("用户名不能为空。");
		return;
	}
	var password = $("#password1").val();
	if (password == "") {
		alert("密码不能为空。");
		return;
	}
	var v = {};
	v.name = name;
	v.password = md5(password);
	v.autoLogin = "1";
	v.autologin = "1";
	$.post("/u/login.htm", v,
	function(json){
		if (json.flag == "error") {
			if (json.data == "2") {
				alert("用户名或密码错误。");
			} else if(json.data == "3") {
				alert("账户未激活。");
			} else {
				alert(json.data);
			}
		} else if (json.flag == "success") {
			location.href="/bookcase.php";
		} 
	});
}
function getCookie(name) {
  	var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
  	if(arr != null) return unescape(arr[2]); return null;
}
//$.cookie('name', 'value', { expires: 7, path: '/' }); 
//$.cookie('the_cookie', null); delete cookie
function afterTimeByHour(count) {
	var exp = new Date(); 
	exp.setTime(exp.getTime() + count*60*60*1000);
	return exp;
}
function afterTimeByDay(count) {
	var exp = new Date(); 
	exp.setTime(exp.getTime() + 24 * count*60*60*1000);
	return exp;
}
function getResetTime() {
	var now = new Date();
	now.setHours(0);
	now.setMinutes(0);
	now.setSeconds(0);
	now.setMilliseconds(0);	
	return new Date(24 * 3600 * 1000 + now.getTime());
}

function getCookieForInt(name) {
	var value = getCookie(name);
	if (value == "" || value == null) {
		return 0;
	} else {
		return parseInt(value);
	}
}
function doajax(url, param, callback) {
	$.ajax({  
			type:'post',      
			url:url,  
			data:param,  
			cache:false,  
			dataType:'json',  
			success:callback
		});  
}
function logA(aid) {
	var ras = getCookie("ras");
	if (ras == null || ras == "") {
		ras = aid;
	} else {
		var aidArray = ras.split(",");
		for (var raid in aidArray) {
			if (aidArray[raid] == aid) {
				return;
			}
		}
		ras = aid + "," + ras;
	}
	var aids = ras.split(",");
	if (aids.length > 50) {
		aids.splice(49);
	}
	$.cookie("ras", aids.join(","), { expires:365, path: '/' });
}

function record(aid, category) {
	logA(aid);
	ac(category, aid);
	//document.write("<div style=\"display:none\"><script type=\"text\/javascript\">logA(\"" + aid + "\");ac(\"" + aid + "\", \"" + category + "\");<\/script><\/div>");
}

var tid = "";
function rl(aid,uid){
	tid = aid;
	doajax("/u/r.htm", {id:aid}, rl2);
	//document.getElementById("" + aid).innerHTML = "<tr><td style='height:30px;line-height:30px;'><font color=red>删除中，请稍后...</font></td></tr>";
}
function rl2(t){
	//alert(t);
	table = document.getElementById("" + tid);
	table.style.backgroundColor = "#D3FEDA";
	table.innerHTML = "<tr><td style='height:30px;line-height:30px;'><font color=red>已从书架删除！</font></td></tr>";
	tid = "";
	window.location.reload();
}
function removeSelected(name) {
	var cs = document.getElementsByName(name);
	var aids = new Array();
	if (cs != null) {
		for (var i = 0; i < cs.length; i++) {
			if (cs[i].checked == true) {
				aids.push(cs[i].value);
			}
		}
		if (aids.length > 0) {
			rl(aids.join(","));
		}
	}
}
function selectAll(name) {
	var cs = document.getElementsByName(name);
	if (cs != null) {
		for (var i = 0; i < cs.length; i++) {
			cs[i].checked = true;
		}
	}
}
function pl(aid, cid) {
	var info = aid + "," + cid;
	doajax("/u/pl.htm", {id:info}, plcb);
}
function plcb(data) {
	var json = data;//eval("(" + data + ")");
	if (json.flag == "success") {
		var obj = document.getElementById("pt_prev");
		if (obj == null) {
			obj = document.getElementById("shujia");
		}
		if (obj == null) {
			alert("添加书签成功！");
		} else {
			obj.innerHTML = "<font color=red>已存书签</font>";
		}
	} else if (json.flag == "error") {
		if (json.data == "nl") {
			alert("您还没有登陆，请先登录或如果没有账号，请先注册。");
		} else {
			alert(json.data);
		}
	} else {
	}
}

var voteMessage = "";
function nu(id) {
	voteMessage = "谢谢您的支持，我们将尽快更新。";
	var m = new Object();
	m.k = "ru_" + id;
	m.m = id;
	sm(m);
}
function rerr(id) {
	voteMessage = "举报成功，我们将尽快修改内容。";
	var m = new Object();
	m.k = "re_" + id;
	m.m = id;
	sm(m);
}
function sm(message) {
	message.curl = getCurrentMulu();
	doajax("/m.htm", message, votecb);
}
function ac(cid, id) {
	voteMessage = "null";
	doCounter(id, "AC", cid);
}
function tj(cid,id) {
	voteMessage = "亲，您的推荐我们已收到，谢谢您的支持。";
	doCounter(id, "VT", cid, voteMessage);
}
function doCounter(aid, type, category, repeatMessage) {
	var ckname = "ck" + type;
	var ckvalue = getCookie(ckname);
	if (ckvalue != null && ckvalue != "") {
		if (repeatMessage) alert(repeatMessage);
		return;
	}
	var path = getCurrentMulu();
	$.cookie(ckname, "1", { expires: getResetTime(), path:path });
	vote(type + category, aid);
}
function vote(type, tid) {
	var params = new Object();
	params.ot = type;
	params.tid = tid;
	params.curl = getCurrentMulu();
	doajax("/vote.htm", params, votecb);
}
function votecb(data) {
	var json = data;//eval("(" + data + ")");
	if (json.flag == "success") {
		if (voteMessage) {
			if (voteMessage != "null") {
				alert(voteMessage);
			}
			voteMessage = "";
		} else {
			alert("提交成功。");
		}
	} else if (json.flag == "error") {
		if (json.data == "nl") {
			alert("您还没有登陆，请先登录或如果没有账号，请先注册。");
		} else if (json.data == "repeat") {
			if (voteMessage != "null") {
				alert("重复提交信息。");
			}
		} else {
			alert(json.data);
		}
	}
}
function getCurrentMulu() {
	var index = window.location.href.indexOf("/", 8);
	var path = "/";
	if (index > -1) path = window.location.href.substring(index);
	return path;
}
function queryAndSave(aid, name, enddate, url) {
	if (!enddate) {
		enddate = getResetTime();
	}
	if (!url) {
		url = getCurrentMulu();
	}
	var ras = getCookie(name);
	if (ras == null || ras == "") {
		ras = aid;
	} else {
		var aidArray = ras.split(",");
		for (var raid in aidArray) {
			if (aidArray[raid] == aid) {
				return false;
			}
		}
		ras = aid + "," + ras;
	}
	var aids = ras.split(",");
	if (aids.length > 50) {
		aids.splice(50);
		ras = aids.join(",");
	}
	$.cookie(name, ras, { expires: enddate, path: url }); 
	return true;
}



document.onkeydown = function(e){
	
	var e = e ? e : window.event;
	var keyCode = e.which ? e.which : e.keyCode;
	var kw = document.getElementById('wd');
	if (e.keyCode==13 && kw.value=='' && typeof(index_page) != "undefined") {
		location.href=index_page;
	}
	if(e.keyCode==13 && kw.value!="") {
		if($.browser.is == 'msie') {
			kw.value = kw.value + '笔趣阁'; 
		}
		document.getElementById('sform').submit.click();
	}

	
	if (e.keyCode==37 && typeof(preview_page) != "undefined") location.href=preview_page;
	if (e.keyCode==39 && typeof(next_page) != "undefined") location.href=next_page;
} 
var speed = 5;
var autopage;// = $.cookie("autopage");
var night;
var timer;
var temPos=1;

$(document).ready(function(){
	var wd = $('#wd');
	// stat
	//$.get("/stat.php?rnd="+new Date().getTime(), function(){});
	wd.focus(function() {
	if($(this).val()=="可搜书名和作者，请您少字也别输错字。") $(this).val("");
	});

	wd.focusout(function() {
	if($(this).val()=='') $(this).val("可搜书名和作者，请您少字也别输错字。");
	}); 
	if( typeof(next_page) != "undefined" ) {
		next_page = next_page;
		autopage = $.cookie("autopage");
		sbgcolor = $.cookie("bcolor");
		setBGColor(sbgcolor);
		font = $.cookie("font");
		setFont(font);
		size = $.cookie("size");
		setSize(size);
		color = $.cookie("color");
		setColor(color);
		width = $.cookie("width");
		setWidth(width);
		speed = $.cookie("scrollspeed");
		if(autopage==1) {
			$('#autopage').attr("checked",true);
			speed = $.cookie("scrollspeed");
			scrollwindow();
		}
		night = $.cookie('night');
		if(night==1) {
			$("#night").attr('checked',true);
			setNight();
		}
		document.onmousedown=sc;
		document.ondblclick=scrollwindow;
	}
});
function showpop(url) {
	$.get(url, function(data){
		$.messager.lays(260, 120);
		$.messager.anim('fade', 1000);
		$.messager.show("提示信息", data ,5000);
	});
}



if (typeof(getCookie("bgcolor")) != 'undefined') {
    wrapper.style.background = getCookie("bgcolor");
    document.getElementById("bcolor").value = getCookie("bgcolor")
}
function changebgcolor(id) {
    wrapper.style.background = id.options[id.selectedIndex].value;
    setCookie("bgcolor", id.options[id.selectedIndex].value, 365)
}
function setBGColor(sbgcolor){
	$('#wrapper').css("backgroundColor",sbgcolor);
	$.cookie("bcolor",sbgcolor,{path:'/',expires:365});
}
function setColor(color) {
	$("#content").css("color",color);
	$.cookie("color",color,{path:'/',expires:365});
}
function setSize(size) {
	$("#content").css("fontSize",size);
	$.cookie("size",size,{path:'/',expires:365});
}
function setFont(font) {
	$("#content").css("fontFamily",font);
	$.cookie("font",font,{path:'/',expires:365});
}
function setWidth(width){
	if (width == undefined) {
		width="85%";
	}
	$('#content').css("width",width);
	$.cookie("width",width,{path:'/',expires:365});
}
function setNight(){
	if($("#night").attr('checked')==true) {
		$('div').css("backgroundColor","#111111");
		$('div,a').css("color","#939392");
		$.cookie("night",1,{path:'/',expires:365});
	} else {
		$('div').css("backgroundColor","");
		$('div,a').css("color","");
		$.cookie("night",0,{path:'/',expires:365});
	}
}
function setCookie(name, value, day) {
    var exp = new Date();
    exp.setTime(exp.getTime() + day * 24 * 60 * 60 * 1000);
    document.cookie = name + "= " + escape(value) + ";expires= " + exp.toGMTString()
}
function getCookie(objName) {
    var arrStr = document.cookie.split("; ");
    for (var i = 0; i < arrStr.length; i++) {
        var temp = arrStr[i].split("=");
        if (temp[0] == objName) return unescape(temp[1])
    }
}

function browser(){
	var bro="Other";
	var agt=navigator.userAgent.toLowerCase();
	if(agt.indexOf('msie') >= 0) {
		bro= "IE";
	}else if(agt.indexOf('opera') >= 0){
		bro= "Opera"
	}else if(agt.indexOf('firefox') >= 0){
		bro= "FireFox";
	}else if (agt.indexOf('chrome') >= 0){
		bro= "Google";
	}
	return bro;
}
jQuery.browser=browser();

function scrolling() 
{  
	var currentpos=document.documentElement.scrollTop || document.body.scrollTop || window.pageYOffset;
	
	if($.browser.is=="chrome" |document.compatMode=="BackCompat" ){
		currentpos=document.body.scrollTop;
	}else{
		currentpos=document.documentElement.scrollTop;
	}

	window.scroll(0,++currentpos);
	if($.browser.is=="chrome" || document.compatMode=="BackCompat" ){
		temPos=document.body.scrollTop;
	}else{
		temPos=document.documentElement.scrollTop;
	}
	
	temPos=document.documentElement.scrollTop || document.body.scrollTop;

	if(currentpos!=temPos){
        ///msie/.test( userAgent )
        var autopage = $.cookie("autopage");
        if(autopage==1&&/next_page/.test( document.referrer ) == false) location.href=next_page;
		sc();
	}
}

function scrollwindow(){
	timer=setInterval("scrolling()",250/speed);
}

function sc(){ 
	clearInterval(timer); 
}

function setSpeed(ispeed){ 
	if(ispeed==0)ispeed=5;
	speed=ispeed;
	$.cookie("scrollspeed",ispeed,{path:'/',expires:365});
}

function setAutopage(){
	if($('#autopage').is(":checked") == true){
		$('#autopage').attr("checked",true);	
		$.cookie("autopage",1,{path:'/',expires:365});
	}else{
		$('#autopage').attr("checked",false);
		$.cookie("autopage",0,{path:'/',expires:365});
	}
}

//

var jieqiUserId = 0;
var jieqiUserName = '';
var jieqiUserPassword = '';
var jieqiUserGroup = 0;
var jieqiNewMessage = 0;
var jieqiUserVip = 0;
var jieqiUserHonor = '';
var jieqiUserGroupName = '';
var jieqiUserVipName = '';


var timestamp = Math.ceil((new Date()).valueOf()/1000); //当前时间戳
var flag_overtime = -1;
if(document.cookie.indexOf('jieqiUserInfo') >= 0){
	var jieqiUserInfo = get_cookie_value('jieqiUserInfo');
	//document.write(jieqiUserInfo);
	start = 0;
	offset = jieqiUserInfo.indexOf(',', start); 
	while(offset > 0){
		tmpval = jieqiUserInfo.substring(start, offset);
		tmpidx = tmpval.indexOf('=');
		if(tmpidx > 0){
           tmpname = tmpval.substring(0, tmpidx);
		   tmpval = tmpval.substring(tmpidx+1, tmpval.length);
		   if(tmpname == 'jieqiUserId') jieqiUserId = tmpval;
		   else if(tmpname == 'jieqiUserName_un') jieqiUserName = tmpval;
		   else if(tmpname == 'jieqiUserPassword') jieqiUserPassword = tmpval;
		   else if(tmpname == 'jieqiUserGroup') jieqiUserGroup = tmpval;
		   else if(tmpname == 'jieqiNewMessage') jieqiNewMessage = tmpval;
		   else if(tmpname == 'jieqiUserVip') jieqiUserVip = tmpval;
		   else if(tmpname == 'jieqiUserHonor_un') jieqiUserHonor = tmpval;
		   else if(tmpname == 'jieqiUserGroupName_un') jieqiUserGroupName = tmpval;
		}
		start = offset+1;
		if(offset < jieqiUserInfo.length){
		  offset = jieqiUserInfo.indexOf(',', start); 
		  if(offset == -1) offset =  jieqiUserInfo.length;
		}else{
          offset = -1;
		}
	}
	flag_overtime = get_cookie_value('overtime');
} else {
	delCookie('overtime');
}
function delCookie(name){
   var date = new Date();
   date.setTime(date.getTime() - 10000);
   document.cookie = name + "=a; expires=" + date.toGMTString();
}

function get_cookie_value(Name) { 
  var search = Name + "=";
　var returnvalue = ""; 
　if (document.cookie.length > 0) { 
　  offset = document.cookie.indexOf(search) 
　　if (offset != -1) { 
　　  offset += search.length 
　　  end = document.cookie.indexOf(";", offset); 
　　  if (end == -1) 
　　  end = document.cookie.length; 
　　  returnvalue=unescape(document.cookie.substring(offset, end));
　　} 
　} 
　return returnvalue; 
}
//滑动门
	function getNames(obj,name,tij)
	{	
		var p = document.getElementById(obj);
		var plist = p.getElementsByTagName(tij);
		var rlist = new Array();
		for(i=0;i<plist.length;i++)
		{
			if(plist[i].getAttribute("name") == name)
			{
				rlist[rlist.length] = plist[i];
			}
		}
		return rlist;
	}

		function fod(obj,name)
		{
			var p = obj.parentNode.getElementsByTagName("td");
			var p1 = getNames(name,"f","div"); // document.getElementById(name).getElementsByTagName("div");
			for(i=0;i<p1.length;i++)
			{
				if(obj==p[i])
				{
					p[i].className = "tab"+i+"1";   ;
					p1[i].className = "dis";
				}
				else
				{
					p[i].className = "tab"+i+"0"; 
					p1[i].className = "undis";
				}
			}
		}
		
function login(){
	document.writeln("<div class=\"ywtop\"><div class=\"ywtop_con\"><div class=\"ywtop_sethome\"><a href=\"/zhuomian.php\">将笔趣阁快捷键下载到桌面</a></div>");
	document.writeln("		<div class=\"ywtop_addfavorite\"><a href=\"javascript:window.external.addFavorite(\'http://www.biquge5200.cc\',\'笔趣阁_书友最值得收藏的网络小说阅读网\')\">收藏笔趣阁</a></div>");
	document.write('<div class="nri">');
	var ccu = getCookie("ccu");
	if (ccu != null && ccu.length ==32) {
	  if(jieqiUserVip == 1) jieqiUserVipName='<span class="hottext">至尊VIP-</span>';
	  document.write('Hi,欢迎归来。&nbsp;&nbsp;<a href="/bookcase.php" target="_top">我的书架</a>');
	  document.write(' | <a href="/logout.php" target="_self">退出登录</a>&nbsp;');
	}else{
	  var jumpurl="";
	  if(location.href.indexOf("jumpurl") == -1){
	    jumpurl=location.href;
	  }
	  document.write('<form name="frmlogin" id="frmlogin" method="post">');
	  document.write('<div class="cc"><div class="txt">账号：</div><div class="inp"><input type="text" name="username" id="username" /></div></div>');
	  document.write('<div class="cc"><div class="txt">密码：</div><div class="inp"><input type="password" name="password1" id="password1" /></div></div>');
	  document.write('<div class="frii"><input type="button" class="int" value=" " onclick="dol();" /></div><div class="ccc"><div class="txtt"><a href="/register.php">用户注册</a></div></div></form>');
	}
	document.write('</div></div></div>');
}

function textselect(){
document.writeln("<div id=\"page_set\">");
document.writeln("<select onchange=\"javascript:setFont(this.options[this.selectedIndex].value);\" id=\"bcolor\" name=\"bcolor\"><option value=\"宋体\">字体</option><option value=\"方正启体简体\">默认</option><option value=\"黑体\">黑体</option><option value=\"楷体_GB2312\">楷体</option><option value=\"微软雅黑\">雅黑</option><option value=\"方正启体简体\">启体</option><option value=\"宋体\">宋体</option></select>");
document.writeln("<select onchange=\"javascript:setColor(this.options[this.selectedIndex].value);\" id=\"bcolor\" name=\"bcolor\"><option value=\"#000\">颜色</option><option value=\"#000\">默认</option><option value=\"#9370DB\">暗紫</option><option value=\"#2E8B57\">藻绿</option><option value=\"#2F4F4F\">深灰</option><option value=\"#778899\">青灰</option><option value=\"#800000\">栗色</option><option value=\"#6A5ACD\">青蓝</option><option value=\"#BC8F8F\">玫褐</option><option value=\"#F4A460\">黄褐</option><option value=\"#F5F5DC\">米色</option><option value=\"#F5F5F5\">雾白</option></select>");
document.writeln("<select onchange=\"javascript:setSize(this.options[this.selectedIndex].value);\" id=\"bcolor\" name=\"bcolor\"><option value=\"#E9FAFF\">大小</option><option value=\"19pt\">默认</option><option value=\"10pt\">10pt</option><option value=\"12pt\">12pt</option><option value=\"14pt\">14pt</option><option value=\"16pt\">16pt</option><option value=\"18pt\">18pt</option><option value=\"20pt\">20pt</option><option value=\"22pt\">22pt</option><option value=\"25pt\">25pt</option><option value=\"30pt\">30pt</option></select>");
document.write('<select name=scrollspeed id=scrollspeed  onchange="javascript:setSpeed(this.options[this.selectedIndex].value);" ><option value=5>滚屏</option><option value=1>最慢</option><option value=2>慢2</option><option value=3>慢3</option><option value=4>中4</option><option value=5>中5</option><option value=6>中6</option><option value=7>快7</option><option value=8>快8</option><option value=9>快9</option><option value=10>最快</option></select>');
document.writeln("<select onchange=\"javascript:setBGColor(this.options[this.selectedIndex].value);\" id=\"bcolor\" name=\"bcolor\"><option value=\"#E9FAFF\" style=\"background-color: #E9FAFF;\">背景</option><option value=\"#E9FAFF\" style=\"background-color: #E9FAFF;\">默认</option><option value=\"#FFFFFF\" style=\"background-color: #FFFFFF;\">白雪</option><option value=\"#000000\" style=\"background-color: #000000;color:#FFFFFF;\">漆黑</option><option value=\"#FFFFED\" style=\"background-color: #FFFFED;\">明黄</option><option value=\"#EEFAEE\" style=\"background-color: #EEFAEE;\">淡绿</option><option value=\"#CCE8CF\" style=\"background-color: #CCE8CF;\">草绿</option><option value=\"#FCEFFF\" style=\"background-color: #FCEFFF;\">红粉</option><option value=\"#EFEFEF\" style=\"background-color: #EFEFEF;\">深灰</option><option value=\"#F5F5DC\" style=\"background-color: #F5F5DC;\">米色</option><option value=\"#D2B48C\" style=\"background-color: #D2B48C;\">茶色</option><option value=\"#C0C0C0\" style=\"background-color: #E7F4FE;\">银色</option></select>");
document.writeln("<select onchange=\"javascript:setWidth(this.options[this.selectedIndex].value);\" id=\"bcolor\" name=\"bcolor\"><option value=\"95%\">宽度</option><option value=\"95%\">默认</option><option value=\"85%\">85%</option><option value=\"76%\">75%</option><option value=\"67%\">65%</option><option value=\"53%\">50%</option><option value=\"41%\">40%</option></select>");
document.writeln("</select>翻页<input type=checkbox name=autopage id=autopage onchange=\"javascript:setAutopage();\" value=\"\" />&nbsp;夜间<input type=checkbox name=night id=night onchange=\"javascript:setNight();\" value=\"\" /></div>");
}

function footer(){
	document.writeln("<p>本站所有小说为转载作品，所有章节均由网友上传，转载至本站只是为了宣传本书让更多读者欣赏。</p>");
	document.writeln("<p>Copyright &copy; 2014 笔趣阁 All Rights Reserved.</p>");
	document.writeln("<p>冀ICP备11007602号</p>");
	
	document.writeln("<div style=\"display:none\">");
	document.writeln("<script src=\"https:\/\/s95.cnzz.com\/z_stat.php?id=1259955010&web_id=1259955010\" language=\"JavaScript\"><\/script>");
	var _hmt = _hmt || [];
	(function() {
	  var hm = document.createElement("script");
	  hm.src = "https://hm.baidu.com/hm.js?17077e8d2ddd3bade67fd92a3bcbbc9f";
	  var s = document.getElementsByTagName("script")[0]; 
	  s.parentNode.insertBefore(hm, s);
	})();
	document.writeln("<\/div>");
	
	document.writeln("<script>");
	document.writeln("(function(){");
	document.writeln("    var bp = document.createElement(\'script\');");
	document.writeln("    var curProtocol = window.location.protocol.split(\':\')[0];");
	document.writeln("    if (curProtocol === \'https\') {");
	document.writeln("        bp.src = \'https:\/\/zz.bdstatic.com\/linksubmit\/push.js\';        ");
	document.writeln("    }");
	document.writeln("    else {");
	document.writeln("        bp.src = \'http:\/\/push.zhanzhang.baidu.com\/push.js\';");
	document.writeln("    }");
	document.writeln("    var s = document.getElementsByTagName(\"script\")[0];");
	document.writeln("    s.parentNode.insertBefore(bp, s);");
	document.writeln("})();");
	document.writeln("<\/script>");
}
function read_panel(){
	document.writeln("<div class=\"header_search\"><input type=\"text\" value=\"可搜书名和作者，请您少字也别输错字。\" name=\"searchkey\" class=\"search\" id=\"wd\" baiduSug=\"2\" /><button id=\"sss\" type=\"button\" onclick=\"search();\"> 搜 索 </button></div>"); 
	document.writeln("<div class=\"userpanel\">&nbsp;<font color=\"red\">报错：</font><a href=\"/newmessage.php?tosys=1&title="+booktitle+"-章节错误&content=错误章节为:"+readtitle+"\" >站内短信</a><br /><a target=\"_blank\" href=\"/ziti.html\"><b>原图片版</b></a>&nbsp;&nbsp;<a target=\"_blank\" href=\"/jifen.html\">积分规则</a>&nbsp;&nbsp;<a target=\"_blank\" href=\"/dns.html\">解决跳到别的站</a></div>");
}
function list_panel(){
document.writeln("<div class=\"header_search\"><form name=\"form\" action=\"/modules/article/search.php\" id=\"sform\" target=\"_blank\"><input type=\"text\" value=\"可搜书名和作者，请您少字也别输错字。\" name=\"searchkey\" class=\"search\" id=\"wd\" baiduSug=\"2\" onclick=\"search();\"/><button id=\"sss\" type=\"button\"> 搜 索 </button></form></div>"); 
document.writeln("<div class=\"userpanel\">&nbsp;<font color=\"red\">报错：</font><a href=\"/newmessage.php?tosys=1&title="+booktitle+"-章节错误&content=错误为:\" >站内短信</a><br /><a target=\"_blank\" href=\"/ziti.html\"><b>原图片版</b></a>&nbsp;&nbsp;<a target=\"_blank\" href=\"/jifen.html\">积分规则</a>&nbsp;&nbsp;<a target=\"_blank\" href=\"/dns.html\">解决跳到别的站</a></div>");
}
function bqg_panel(){
document.writeln("<div class=\"header_search\"><input type=\"text\" value=\"可搜书名和作者，请您少字也别输错字。\" name=\"searchkey\" class=\"search\" id=\"wd\" baiduSug=\"2\" /><button id=\"sss\" type=\"button\" onclick=\"search();\"> 搜 索 </button></div>"); 
document.writeln("<div class=\"userpanel\">&nbsp;<font color=\"red\">留言：</font><a href=\"http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=biquge5200.com@gmail%2Ecom\" target=\"_blank\">问题反馈</a></div>");
}
function mark(){
document.writeln("<div class=\"reader_mark1\"><a href=\"javascript:pl(article_id, chapter_id);\"></a></div>");
document.writeln("<div class=\"reader_mark0\"><a href=\"javascript:tj(article_id);\"></a></div>");
}
function bdshare(){
document.writeln("<div id=\"bdshare\" class=\"bdshare_t bds_tools get-codes-bdshare\"><span class=\"bds_more\">分享本书到：</span><a class=\"bds_mshare\">一键分享</a><a class=\"bds_tsina\">新浪微博</a><a class=\"bds_qzone\">QQ空间</a><a class=\"bds_sqq\">QQ好友</a><a class=\"bds_tieba\">百度贴吧</a><a class=\"bds_tqq\">腾讯微博</a><a class=\"bds_baidu\">百度搜藏</a><a class=\"bds_bdhome\">百度新首页</a><a class=\"bds_copy\">复制网址</a></div>");
}
function list(){
}

function list1(){          
}

function bottom(){
}

function dl(){
}

function right(){
	bdxf250();
	bd270();
}

function read_1_1(){
}

function read_1_2(){	
}

function read_1_3(){
}

function read3(){
document.writeln("<!--中间广告-->");
}

function read5(){
	
}

function read4(){
	document.writeln("<h2>如果觉得不错，请给<a href=\"http:\/\/koubei.baidu.com\/s\/www.biquge5200.com\" style=\"color:red;font-weight:900;\" target=\"_blank\">这里<\/a>五分评价，您的估计，我们会做的更好的。<\/h2>");
	
	//bd900();
}

function dingbu(){   
	document.writeln("<!--中间广告-->");
}

function gonggao(){
document.writeln("<center><span style=\"font-size:19px;\">通过移动网络不能正常访问本站的，请访问本站短域名：<span style=\"color:#E53333;\">http://www.b5200.net</span></span></center>");
document.writeln(" ");
}

function read_1_11(){
	document.writeln("<!--中间广告-->");
}

function list2(){
}

function list3(){
        
}

function cad1() {
	// 右飘
	document.write('<a style="display:none!important" id="tanx-a-mm_126025291_34278241_121512770"></a>');
    tanx_s = document.createElement("script");
    tanx_s.type = "text/javascript";
    tanx_s.charset = "gbk";
    tanx_s.id = "tanx-s-mm_126025291_34278241_121512770";
    tanx_s.async = true;
    tanx_s.src = "//p.tanx.com/ex?i=mm_126025291_34278241_121512770";
    tanx_h = document.getElementsByTagName("head")[0];
    if(tanx_h)tanx_h.insertBefore(tanx_s,tanx_h.firstChild);
    
	gg300();
	// 300-4
    document.write('<a style="display:none!important" id="tanx-a-mm_126025291_34278241_138086999"></a>');
    tanx_s = document.createElement("script");
    tanx_s.type = "text/javascript";
    tanx_s.charset = "gbk";
    tanx_s.id = "tanx-s-mm_126025291_34278241_138086999";
    tanx_s.async = true;
    tanx_s.src = "//p.tanx.com/ex?i=mm_126025291_34278241_138086999";
    tanx_h = document.getElementsByTagName("head")[0];
    if(tanx_h)tanx_h.insertBefore(tanx_s,tanx_h.firstChild);
	
}

function cad2() {
	document.write('<a style="display:none!important" id="tanx-a-mm_126025291_34278241_121512755"></a>');
    tanx_s = document.createElement("script");
    tanx_s.type = "text/javascript";
    tanx_s.charset = "gbk";
    tanx_s.id = "tanx-s-mm_126025291_34278241_121512755";
    tanx_s.async = true;
    tanx_s.src = "//p.tanx.com/ex?i=mm_126025291_34278241_121512755";
    tanx_h = document.getElementsByTagName("head")[0];
	if(tanx_h)tanx_h.insertBefore(tanx_s,tanx_h.firstChild);
	gg300();
}

function cad3() {
	document.write('<a style="display:none!important" id="tanx-a-mm_126025291_34278241_121528034"></a>');
    tanx_s = document.createElement("script");
    tanx_s.type = "text/javascript";
    tanx_s.charset = "gbk";
    tanx_s.id = "tanx-s-mm_126025291_34278241_121528034";
    tanx_s.async = true;
    tanx_s.src = "//p.tanx.com/ex?i=mm_126025291_34278241_121528034";
    tanx_h = document.getElementsByTagName("head")[0];
    if(tanx_h)tanx_h.insertBefore(tanx_s,tanx_h.firstChild);
    gg300();
}

function cad4() {
	//gg300();
	// 300-5
    document.write('<a style="display:none!important" id="tanx-a-mm_126025291_34278241_138108329"></a>');
    tanx_s = document.createElement("script");
    tanx_s.type = "text/javascript";
    tanx_s.charset = "gbk";
    tanx_s.id = "tanx-s-mm_126025291_34278241_138108329";
    tanx_s.async = true;
    tanx_s.src = "//p.tanx.com/ex?i=mm_126025291_34278241_138108329";
    tanx_h = document.getElementsByTagName("head")[0];
    if(tanx_h)tanx_h.insertBefore(tanx_s,tanx_h.firstChild);
}

function cad5() {
	document.write('<a style="display:none!important" id="tanx-a-mm_126025291_34278241_121510788"></a>');
	tanx_s = document.createElement("script");
	tanx_s.type = "text/javascript";
	tanx_s.charset = "gbk";
	tanx_s.id = "tanx-s-mm_126025291_34278241_121510788";
	tanx_s.async = true;
	tanx_s.src = "//p.tanx.com/ex?i=mm_126025291_34278241_121510788";
	tanx_h = document.getElementsByTagName("head")[0];
	if(tanx_h)tanx_h.insertBefore(tanx_s,tanx_h.firstChild);
}

function cad6() {
	//gg300();
	// 300-6
	document.write('<a style="display:none!important" id="tanx-a-mm_126025291_34278241_138108331"></a>');
    tanx_s = document.createElement("script");
    tanx_s.type = "text/javascript";
    tanx_s.charset = "gbk";
    tanx_s.id = "tanx-s-mm_126025291_34278241_138108331";
    tanx_s.async = true;
    tanx_s.src = "//p.tanx.com/ex?i=mm_126025291_34278241_138108331";
    tanx_h = document.getElementsByTagName("head")[0];
    if(tanx_h)tanx_h.insertBefore(tanx_s,tanx_h.firstChild);
	
}
function gg300() {
	var url = window.location.href;
	if (url.indexOf("/2_2798") > -1) {return;}
	if (url.indexOf("/3_3348") > -1) {return;}
	document.writeln("<script async src=\"\/\/pagead2.googlesyndication.com\/pagead\/js\/adsbygoogle.js\"><\/script>");
	document.writeln("<ins class=\"adsbygoogle\"");
	document.writeln("     style=\"display:inline-block;width:300px;height:250px\"");
	document.writeln("     data-ad-client=\"ca-pub-7984625403150073\"");
	document.writeln("     data-ad-slot=\"4075847600\"><\/ins>");
	document.writeln("<script>");
	document.writeln("(adsbygoogle = window.adsbygoogle || []).push({});");
	document.writeln("<\/script>");
}
function bd900() {
}
function bd300() {
}
function bd250() {
}
function bd270() {
}
function bdxf250() {
}
function download(name) {
	window.location.href="http://www.22ff.com/txt/" + name + "/";
}
function isMobile() {
	return navigator.userAgent.match(/(iPhone|iPod|Android|ios|iPad)/i);
}
function uaredirect(murl) {
	try {
        if (document.getElementById("bdmark") != null) {
            return;
        }
        var urlhash = window.location.hash;
        if (!urlhash.match("fromapp")) {
            if (isMobile()) {
            	var referrer = document.referrer;
				if (referrer) {
					var from = "";
					if (referrer.indexOf("trada") > -1 && referrer.indexOf("quan") > -1 || referrer.indexOf("baidu") > -1) {
						from = "baidu";
					} else if (referrer.indexOf("sm.cn/") > -1) {
						from = "wwwsm";
					} else if (referrer.indexOf("sogou.com") > -1) {
						from = "sogou";
					} else if (referrer.indexOf("so.com") > -1) {
						from = "360so";
					}
					if (from) {
						murl += "#" + from;
					}
				}
				
			    //maybeGoMobile(murl);
                location.replace(murl);
            }
        }
    } catch(err) {}
}

function maybeGoMobile(murl) {
	//location.replace(newLocation(murl));
	window["b5200murl"] = murl
	var mip = getCookie("mip");
	if (mip) {
		location.replace(newLocation(murl));
	} else {
		//document.writeln("<script type=\"text/javascript\" src=\"//ip.i.biquge5200.cc/ip.htm?callback=fromm\"><\/script>");
	}
}
	
function fromm(json) {
	if (!json) return;
	if (!json.ips) return;
	var ips = json.ips;
	if (ips.length == 0) return;
	setCookie("mip", "1", 30);
	if(ips[0].isp.indexOf("移动") > -1) {
		var loc = window["b5200murl"];
		var newLoc = newLocation(loc);
		if (loc != newLoc) {
			window.location.href= newLoc;
			setCookie("to", "2", 365);
		}
	} else {
		window.location.href = window["b5200murl"];
	}
}
function logined() {
	return getCookie("cal") || getCookie("ccu");
}

var userAgent = navigator.userAgent.toLowerCase();
var isUC = userAgent.indexOf("ucweb") > -1 || userAgent.indexOf("ucbrowser") > -1;
function newLocation(href) {
	if (logined()) {
		return href.replace("i.biquge5200.com", "m.b5200.net").replace("https:", "http:");
	} else {
		var maxNid = 20000;
		var maxCid = 8000000;
		if ( (!window.chapterId || window.chapterId > maxCid)
				&& (window.refId || window.novelId && window.novelId > maxNid)
				) {
			var nid = window.refId;
			if (nid == "") 
				nid = window.novelId - maxNid;
			else
				nid = nid - maxNid;
			
			var url = "";
			if (window.chapterId) {
				url = "//m.nbw.la/xiaoshuo-" + nid +"/" + (window.chapterId - maxCid) +".htm";
			} else {
				url = "//m.nbw.la/xiaoshuo-" + nid +"/";
			}
			return "http:" + url;
		} else {
			return href.replace("i.biquge5200.com", "m.b5200.net").replace("https:", "http:");
		}
	}
}*/