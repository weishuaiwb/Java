<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<title>笔趣阁_书友最值得收藏的网络小说阅读网_新笔趣阁5200</title>
<meta name="keywords" content="笔趣阁,网络小说,小说阅读网,小说,笔趣阁5200,biquge,新笔趣阁" />
<meta name="description" content="笔趣阁是广大书友最值得收藏的网络小说阅读网，新笔趣阁网站收录了当前最火热的网络小说，笔趣阁5200免费提供高质量的小说最新章节，是广大网络小说爱好者必备的小说阅读网。" />
<meta http-equiv="mobile-agent" content="format=html5; url=https://m.biquge5200.cc" />
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta http-equiv="Cache-Control" content="no-transform" />
<link rel="stylesheet" type="text/css" href="css/1.css"/>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery.cookie.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/bqg.js?v=4"></script>
<script type="text/javascript" src="js/md5.js"></script>
<style>p{font-size:13px;line-height:2}</style>
<meta http-equiv="mobile-agent" content="format=html5; url=https://m.biquge5200.cc/info-86700/" />
<meta http-equiv="mobile-agent" content="format=xhtml; url=https://m.biquge5200.cc/info-86700/" />
<script language="javascript" type="text/javascript">var bookid = "86700"; var booktitle = "${textBase.tname}";var novelId="86700";var refId="";</script>

</head>
<body>
<div id="wrapper">
		
		<div class="nav">
			<ul id="ul">
				<li><a href="main.jsp">首页</a></li>
				<li><a rel="nofollow" href="/home/">我的书架</a></li>
				<li><a href="//www.biquge5200.cc/xuanhuanxiaoshuo/">玄幻小说</a></li>
				<li><a href="//www.biquge5200.cc/xiuzhenxiaoshuo/">修真小说</a></li>
				<li><a href="//www.biquge5200.cc/dushixiaoshuo/">都市小说</a></li>
				<li><a href="//www.biquge5200.cc/chuanyuexiaoshuo/">穿越小说</a></li>
				<li><a href="//www.biquge5200.cc/wangyouxiaoshuo/">网游小说</a></li>
				<li><a href="//www.biquge5200.cc/kehuanxiaoshuo/">科幻小说</a></li>
				<li><a href="//www.biquge5200.cc/yanqingxiaoshuo/">言情小说</a></li>
				<!-- <li><a href="//www.biquge5200.cc/tongrenxiaoshuo/">同人小说</a></li> -->
				<%-- <c:choose>
					<c:when test="${user.dr eq 1 }"><li><a href="index.jsp" target="_blank">${user.uname}</a></li></c:when>

					<c:otherwise><li><a href="login.jsp" target="_blank">登录</a></li></c:otherwise>
				</c:choose> --%>
				
			</ul>
		</div>
<!-- <div class="dahengfu"><script>list();</script></div> -->
<div class="box_con">
			<div class="con_top">
				<div id="bdshare" class="bdshare_b" style="line-height: 12px;"><img /><a class="shareCount"></a></div>
				<a href="main.jsp">笔趣阁</a> &gt; <a href="main.jsp">玄幻小说</a>  &gt; ${textBase.tname} 最新章节列表
			</div>
			<div id="maininfo">
				<div id="info">
					<h1>${textBase.tname }</h1>
					<p style="width:200px">作&nbsp;&nbsp;&nbsp;&nbsp;者：${textBase.author }</p>
					<p style="width:500px">成绩：&nbsp;&nbsp;<span>推荐票：${textBase.retickets }</span>, &nbsp;<span>月票：${textBase.monthtickets }</span>, &nbsp;<span>赏金：${textBase.coin }</span>,  &nbsp;<a href="#footer">直达底部</a></p>
					<p>最后更新：${LastSection.subtime}</p>
					
				</div>
				<div id="intro">
					<p>${textBase.introduce}</p>
				</div>
			</div>
			<div id="sidebar">
				<div id="fmimg"><img alt="" src="${textBase.image }"  width="120" height="200"><span class="b"></span></div>
			</div> 
			<div id="listtj">&nbsp;推荐阅读：
			
				<c:forEach items="${FourText}" var="text" varStatus="ss">
					<a href="Section?method=findSection&tid=${text.tid }">${text.tname}</a>
				</c:forEach>
				
				</div>
		</div>
		
                  <!-- <center><script type="text/javascript">list1();</script></center>
                 <script>dingbu();</script>     -->
		<div class="box_con">
			<div id="list">
				<dl>
					<dt><b>《${textBase.tname}》最新章节</b>（提示：已启用缓存技术，最新章节可能会延时显示，登录书架即可实时查看。）</dt>
					<dd><a href="Section?method=findContext&tid=${textBase.tid }&tname=${textBase.tname }&saddr=${LastSection.saddr}&sname=${LastSection.sname}&count=${LastSection.count}" >${LastSection.sname }</a></dd>
					
					<div style="width:910px;margin:0px; auto;">
						<table id="adt2"><tr>
							<!-- <td id="adt4"><script type="text/javascript">cad4();</script></td>
							<td id="adt5"><script type="text/javascript">cad5();</script></td>
							<td id="adt6"><script type="text/javascript">cad6();</script></td> -->
							</tr>
						</table>
					</div>
					
						<dt>《${textBase.tname}》正文</dt>
                    	
                        <c:forEach items="${SectionInfo }" var="Section" varStatus="ss">
							<dd><a href="Section?method=findContext&tid=${textBase.tid }&tname=${textBase.tname }&saddr=${Section.saddr}&sname=${Section.sname}&count=${Section.count}">${Section.sname}</a></dd>
						</c:forEach>
                        
				</dl>
			</div>
		</div>
        
       <!--  <div class="dahengfu"><script type="text/javascript">bottom();</script></div> -->
        
		<div id="footer" name="footer">
			<div class="footer_link">&nbsp;新书推荐：
				<c:forEach items="${FourText}" var="text" varStatus="ss">
					<a href="Section?method=findSection&tid=${text.tid }">${text.tname}</a>
				</c:forEach>
			</div>
			<div class="footer_cont">
				<p>《${textBase.tname }》情节跌宕起伏、扣人心弦，是一本情节与文笔俱佳的，笔趣阁转载收集{textBase.tname }最新章节。</p>
				<!-- <script>footer();right();dl();</script> -->
			</div>
		</div>
	</div>
	<script type="text/javascript">
			$(function(){
				var $li0 = $('<c:choose><c:when test="${user.dr eq 1 }"><li><a href="index.jsp" target="_blank">${user.nickname}</a></li></c:when><c:otherwise><li><a href="login.jsp" target="_blank">登录</a></li></c:otherwise></c:choose>');
				$('#ul').append($li0);
			})
	</script>
</body>
</html>