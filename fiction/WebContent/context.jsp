<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html>
<head>
<title>${sname}_${tname}_笔趣阁</title>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<meta name="keywords" content="伏天氏, 第一章 此间少年" />
<meta name="description" content="笔趣阁提供了净无痕创作的玄幻小说《伏天氏》干净清爽无错字的文字章节： 第一章 此间少年在线阅读。" />
<meta http-equiv="Cache-Control" content="no-siteapp" /><meta http-equiv="Cache-Control" content="no-transform" />
<link rel="stylesheet" type="text/css" href="css/1.css"/>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="js/jquery.js" ></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js" ></script>
<script type="text/javascript" src="layer/layer.js" ></script>
<!-- <meta http-equiv="mobile-agent" content="format=html5; url=https://m.biquge5200.cc/wapbook-86700-151355337/" />
<meta http-equiv="mobile-agent" content="format=xhtml; url=https://m.biquge5200.cc/wapbook-86700-151355337/" />

<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
<script src="//apps.bdimg.com/libs/jquery.cookie/1.4.1/jquery.cookie.min.js" type="text/javascript"></script>
<script type="text/javascript">var novelId="86700";var chapterId = "151355337";var refId="";var preview_page = "https://www.biquge5200.cc/86_86700/155013102.html";var next_page = "https://www.biquge5200.cc/86_86700/151355506.html";var index_page = "https://www.biquge5200.cc/86_86700/";var article_id = "86700";	var chapter_id = "151355337";	function jumpPage() {var event = document.all ? window.event : arguments[0];if (event.keyCode == 37) document.location = preview_page;if (event.keyCode == 39) document.location = next_page;if (event.keyCode == 13) document.location = index_page;}document.onkeydown=jumpPage;</script>
<script type="text/javascript" src="//www.biquge5200.cc/images/bqg.js"></script>
<script type="text/javascript">uaredirect("https://m.biquge5200.cc/wapbook-86700-151355337/");</script>
 -->
<style type="text/css">
		 body{
		 	background-color: #E9FAFF;
		 }
</style>
</head>

<body>
<div id="wrapper">

		<div class="nav">
			<ul id="ul">
				<li><a href="main.jsp">首页</a></li>
				<li><a href="//www.biquge5200.cc/xuanhuanxiaoshuo/">玄幻小说</a></li>
				<li><a href="//www.biquge5200.cc/xiuzhenxiaoshuo/">修真小说</a></li>
				<li><a href="//www.biquge5200.cc/dushixiaoshuo/">都市小说</a></li>
				<li><a href="//www.biquge5200.cc/chuanyuexiaoshuo/">穿越小说</a></li>
				<li><a href="//www.biquge5200.cc/wangyouxiaoshuo/">网游小说</a></li>
				<li><a href="//www.biquge5200.cc/kehuanxiaoshuo/">科幻小说</a></li>
				<li><a href="//www.biquge5200.cc/yanqingxiaoshuo/">言情小说</a></li>
	 			<li><a href="//www.biquge5200.cc/tongrenxiaoshuo/">同人小说</a></li>
				<%-- <c:choose>
					<c:when test="${user.dr eq 1 }"><li><a href="index.jsp" target="_blank">${user.uname}</a></li></c:when>

					<c:otherwise><li><a href="login.jsp" target="_blank">登录</a></li></c:otherwise>
				</c:choose> --%>
			</ul>
		</div>
<div class="content_read">
<!--                         <script>list();</script>
                        <script>dingbu();</script> -->
               		<div class="box_con">
				<div class="con_top">

					<a href="main.jsp">笔趣阁</a> &gt; <a href="main.jsp">玄幻小说</a> &gt; <a href="">${tname }</a> &gt;  ${sname}
					<div  style="display:inline-block;float:right;">
						<button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#myModal">
							  支持本书
						</button>
					</div>
				</div>
						<!-- Modal -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						        <h4 class="modal-title" id="myModalLabel">支持本书</h4>
						      </div>
						      <div class="modal-body text-center">
						      <form action="text" method="get" id="support">
						      		<input type="hidden" value="supportText" name="method" />
						      		<input type="hidden" value="${tid }" name="tid" />
						      		<input type="hidden" value="${tname }" name="tname" />
						      		<input type="hidden" value="${saddr }" name="saddr" />
						      		<input type="hidden" value="${sname }" name="sname" />
						      		<input type="hidden" value="${count }" name="count" />
							        <div class="container">
							        	<div class="col-xs-2">
							        		<h2>推荐票</h2>
							        		<button type="button" class="btn btn-sm btn-success btn-group-justified" onclick="b3(this)">1</button>
							        		<button type="button" class="btn btn-sm btn-success btn-group-justified" onclick="b3(this)">2</button>
							        		<input class="form-control" placeholder="每次投票最多2张" readonly name="retickets" id="retickets" value="0">
							        	</div>
							        	<div class="col-xs-2">
							        		<h2>月票</h2>
							        		<button type="button" class="btn btn-sm btn-success btn-group-justified" onclick="b2(this)">1</button>
							        		<button type="button" class="btn btn-sm btn-success btn-group-justified" onclick="b2(this)">2</button>
							        		<input class="form-control" placeholder="每次投票最多2张" readonly name="monthretickets" id="monthreticktes" value="0">
							        	</div>
							        	<div class="col-xs-2">
							        		<h2>打赏-书币</h2>
							        		
							        		<button type="button" class="btn btn-sm btn-success" onclick="b1(this)" >100</button>
							        		<button type="button" class="btn btn-sm btn-success" onclick="b1(this)">200</button>
							        		<button type="button" class="btn btn-sm btn-success" onclick="b1(this)">500</button>
							        		<button type="button" class="btn btn-sm btn-success" onclick="b1(this)">1000</button>
							        		<button type="button" class="btn btn-sm btn-success" onclick="b1(this)">2000</button>
							        		<button type="button" class="btn btn-sm btn-success" onclick="b1(this)">5000</button>
							        		<button type="button" class="btn btn-sm btn-success" onclick="b1(this)">10000</button>
							        		<button type="button" class="btn btn-sm btn-success" onclick="b1(this)">100000</button>
							        		<button type="button" class="btn btn-sm btn-success" onclick="b1(this)">1000000</button>
							        		<input type="text" class="form-control" placeholder="打赏金额/书币" name="coin" id="coin" value="0">
							        	</div>
											</div>    
									</form>    
							      </div>
      							
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">算了</button>
						        <button type="button" class="btn btn-success" onclick="tijiao()">Save changes</button>
						      </div>
						    </div>
						  </div>
						</div>  

				<div class="bookname"> 
                                     
					<h1> ${sname }</h1>  
					<div class="bottem1">
                         <!-- <script type="text/javascript">list3();</script> -->
						<a></a>
						<a href="Section?method=nextSection&count=${count-1}&tid=${tid}&tname=${tname}&sname=${sname}">上一章</a> &larr; 
						<a href="Section?method=findSection&tid=${tid}">章节目录</a> &rarr; 
						<a href="Section?method=nextSection&count=${count+1}&tid=${tid}&tname=${tname}&sname=${sname}">下一章</a> 
						<a href="#">加入书签</a>
                       <!-- <script type="text/javascript">list2();</script>  -->
					</div>
                                       
<!-- <script>gonggao();</script> -->
					<div class="lm">&nbsp;热门推荐：
				<a href='/97_97123/' style='font-weight:bold'>三寸人间</a>
				<a href='/76_76490/' >牧神记</a>
				<a href='/86_86700/' style='font-weight:bold'>伏天氏</a>
				<a href='/78_78387/' >汉乡</a>
				<a href='/0_111/' >武炼巅峰</a>
				<a href='/79_79883/' style='font-weight:bold'>元尊</a>
				<a href='/79_79875/' >飞剑问道</a>
				<a href='/8_8165/' style='font-weight:bold'>至尊剑皇</a>
				<a href='/57_57491/' >道君</a>
				<a href='/84_84888/' >超品巫师</a>
				<a href='/51_51253/' style='font-weight:bold'>透视小医神</a>
				<a href='/0_554/' style='font-weight:bold'>混沌剑神</a>
				</div>
				</div>
				<table style="width:100%; text-align:center;"><tr><td><script>/* read_1_1(); */</script></td><td><script>/* read_1_2(); */</script></td><td><script>/* read_1_3(); */</script></td></tr></table>
   
                
				<div id="content">
				
        		${context}
        		</div>
				
                     
				<div class="bottem2">
                        
						<a></a>
						<a href="Section?method=nextSection&count=${count-1}&tid=${tid}&tname=${tname}&sname=${sname}">上一章</a> &larr; 
						<a href="Section?method=findSection&tid=${tid}">章节目录</a> &rarr; 
						<a href="Section?method=nextSection&count=${count+1}&tid=${tid}&tname=${tname}&sname=${sname}">下一章</a> 
						<a href="#">加入书签</a>
                       <!-- <script type="text/javascript">list2();</script>  -->
					</div>

				<div id="hm_t_42055"></div>
			</div>
		</div>
		<div class="footer">
		    <div class="footer_link">&nbsp;新书推荐：<a href='/2_2599/' >全职法师</a>
				<a href='/9_9365/' style='font-weight:bold'>盖世帝尊</a>
				<a href='/46_46254/' >斗战狂潮</a>
				<a href='/53_53081/' >都市超级医圣</a>
				<a href='/0_494/' style='font-weight:bold'>超级兵王</a>
				<a href='/0_491/' >俗人回档</a>
				<a href='/44_44186/' style='font-weight:bold'>人皇纪</a>
				<a href='/2_2691/' >寒门崛起</a>
				<a href='/0_419/' >无敌天下</a>
				</div>
			<div class="footer_cont">
				<!-- <script>footer();right();dl();</script> -->
				<!--<script>mark();</script>-->
                <div class="reader_mark1"><a href="javascript:;" onclick="pl(article_id, chapter_id);"></a></div>
                <div class="reader_mark0"><a href="javascript:;" onclick="tj(article_id);"></a></div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
			$(function(){
				b1=function(btn1){
					$('#coin').val(Number($('#coin').val())+Number($(btn1).html()));
				}
				
				b2=function(btn1){
					$('#monthreticktes').val($(btn1).html());
				}
				
				b3=function(btn1){
					$('#retickets').val($(btn1).html());
				}
				
				tijiao = function() {
					$('#support').submit();
					
				}
				
				var $li0 = $('<c:choose><c:when test="${user.dr eq 1 }"><li><a href="index.jsp" target="_blank">${user.nickname}</a></li></c:when><c:otherwise><li><a href="login.jsp" target="_blank">登录</a></li></c:otherwise></c:choose>');
				$('#ul').append($li0);
			})
			
			if('${support}'){
			layer.msg('${support}');
		}
			
		</script>
</body>
</html>
