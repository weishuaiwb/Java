<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>系统通知_个人中心_起点中文网</title>
    <meta name="keywords" content="小说,小说网,玄幻小说,武侠小说,都市小说,历史小说,网络小说,言情小说,青春小说,原创网络文学">
    <meta name="description" content="小说阅读,精彩小说尽在起点中文网. 起点中文网提供玄幻小说,武侠小说,原创小说,网游小说,都市小说,言情小说,青春小说,历史小说,军事小说,网游小说,科幻小说,恐怖小说,首发小说,最新章节免费">
    <link rel="icon" type="image/x-icon" href="//qidian.gtimg.com/qdp/img/favicon.0.3.ico">
    
<link rel="stylesheet" data-ignore="true" href="//qidian.gtimg.com/c/=/qdp/iconfont/symbols.3.56.css,/qdp/css/common.0.80.css,/qdp/css/message/index.0.10.css,/qdp/font/index.0.11.css" />

    <script>document.domain ='qidian.com';</script>
    <script>var speedTimer = [], speedZero = new Date().getTime();</script>
</head>
<body class="system_message">
 <div class="personal-header" data-l1="1">
                <div class="header-wrapper">
                    <div class="header-logo">
                        <a href="/">个人中心</a>
                    </div>
                    <ul class="header-nav">
                        <li class="header-nav-li">
                            <a href="UserMain.jsp" class="header-nav-a " accesskey="1" data-eid="qd_M01"><i class="iconfont icon-home"></i>我的首页</a>
                        </li>
                        <li class="header-nav-li" id="headerNav">
                            <a href="bookcase.jsp" class="header-nav-a active" accesskey="2" data-eid="qd_M02"><i class="iconfont icon-book"></i>我的书架</a>
                        </li>
                        <li class="header-nav-li">
                            <a href="message.jsp" class="header-nav-a " accesskey="3" data-eid="qd_M03"><i class="iconfont icon-msg"></i><i class="qdp-unread elUnread dn">未读</i>消息中心</a>
                        </li>

                    </ul>
                    <a href="/" id="headerLog" class="header-log" data-eid="qd_M06">
                        
                        木杉书虫
                        
                    </a>
                    <div class="header-goHome">
                        <a href="//www.qidian.com" target="_blank" accesskey="5" data-eid="qd_M05">起点首页</a>
                    </div>
                </div>
                <ul id="headerDropList" class="header-drop">
                    <li>
                        <a href="https://pay.yuewen.com/pc/index?appId=10&areaId=1&userGuid=1345404401&returnUrl=https%3A%2F%2Fmy.qidian.com" target="_blank" data-guid="1345404401" class="elNewToPay" data-eid="qd_M07">充值</a>
                    </li>
                    <li>
                        <a href="/setting" data-eid="qd_M08">个人设置</a>
                    </li>
                    <li>
                        <a href="/user/303831931" data-eid="qd_M09">我的主页</a>
                    </li>
                    <li>
                        <a href="//www.qidian.com/help/kf" target="_blank" data-eid="qd_M10">客服中心</a>
                    </li>
                    <li>
                        <a href="javascript:;" id="elLoginOut" data-eid="qd_M11">退出</a>
                    </li>
                </ul>
            </div>
        <div class="qdp-wrapper">
		<div class="personal-sideBar" data-l1="2">
			<ul class="sideBar-group">
				<li class="active">
					<a href="/message/sys" class="sideBar-list-a" data-eid="qd_M225"><i class="iconfont icon-system"></i>系统通知</a>
				</li>
				<li class="">
					<a href="/message/private" class="sideBar-list-a" data-eid="qd_M226"><i class="iconfont icon-letter"></i>私信</a>
				</li>
			</ul>
		</div>
        <div class="qdp-content pr" data-l1="3">
            <h2 class="qdp-title">
                系统通知
            </h2>
            <a href="javascript:" id="jsEmptyMsg" class="msg-empty disabled blue"><i href="javascript:" class="blue iconfont icon-del"  title="清空当前页" data-l2="1" data-eid="qd_M227"></i>清空当前页</a>
            <div class="msg-record qdp-record">
                    <div class="table-x">
                        <div class="table-size">
                            <table id="tableMsg" class="ui-table">
                                <thead>
                                  <tr>
                                    <th scope="col" width="140">来自</th>
                                    <th scope="col">标题</th>
                                    <th scope="col" width="130">日期</th>
                                    <th scope="col" width="20">&nbsp;</th>
                                  </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <div class="table-null-x dn">目前尚未收到系统消息</div>
                            <div class="ui-loading"><i class="ui-loading-icon"></i></div>
                         </div>
                         <div class="table-page-x elTablePage">
                             <div class="table-page" data-l2="1" data-eid="qd_M229"></div>
                         </div>
                    </div>
            </div>
        </div>
<%--         <script id="tplMessage" type="text/ejs-template">
        <% listInfo.forEach(function(obj){ %>
        <tr class="qdp-operate-wrapper" data-url="/ajax/messageSys/read" data-id="<%= obj.id %>">
            <td class="col1">
                <% if ( obj.readStatus == 0) { %>
                <i class="qdp-unread jsUnread">未读</i>
                <% } %>
                起点系统消息</td>
            <td class="col2 wbba"><a href="javascript:" class="blue" data-l2="1" data-eid="qd_M228"><%= obj.title %></a></td>
            <td class="col3"><%= obj.sendTime %></td>
            <td class="col4"><a href="javascript:" class="qdp-operate blue jsDelMsg iconfont icon-del" data-id="<%= obj.id %>" title="删除"></a></td>
        </tr>
        <tr class="dn">
            <td colspan="4">
                <p>
                    <% if(obj.content.search(/[<]+script[\s\S]*>[\s\S]*<\/script[>]*/) == -1 ) {  %>
                        <%- obj.content %>
                    <% } else { %>
                        <%= obj.content %>
                    <% } %>
                </p>
            </td>
        </tr>
        <% }) %>
        </script> --%>
            
            <div class="tucao">
                <div class="tucao-wrap">
                    <a href="https://support.qq.com/embed/app/14308?data=6ce8873dee032a6dbc6aa4bb7c87270e863f8de0c3c02d5211cfa0df40224b607d95de38a56b3e2a8746440d59f281dfb7c266f0708cf35ed9bdab6ed4d8d1d3e2625871c319a8ad567824537c5771ff3db29248945c91ed10cae7febd7ec89c3f44773beef293d0674f822b165ad5521ff6745d2bf898ca791c3c96dec91475e49bf65372add93f943c847d3aabb9b6e7b20a07fcc29cddc4e4df1a9d2193552bcd74641b6fa0bceaac584a5d8190a82e9ef5ce9d9885a91632998ac12b1b6d" class="icon-tucao tTips" target="_blank" title="反馈建议" ><i class="iconfont icon-comment"></i></a>
                </div>
            </div>
            
            <div class="go-top dn">
                <div class="go-top-wrap">
                    <a href="#" class="icon-go-top bTips" title="返回顶部" ><i class="iconfont icon-backtop"></i></a>
                </div>
            </div>
        </div>
            <div class="personal-footer">
                <div class="footer-sub">
                    <a href="//www.yuewen.com" target="_blank">阅文集团</a>旗下网站：
                    <a href="//www.qidian.com" target="_blank" class="mr8">起点中文网</a>
                    <a href="//www.qdmm.com" target="_blank" class="mr8">起点女生网</a>
                    <a href="http://chuangshi.qq.com" target="_blank" class="mr8">创世中文网</a>
                    <a href="http://yunqi.qq.com" target="_blank" class="mr8">云起书院</a>
                    <a href="//www.hongxiu.com" target="_blank" class="mr8">红袖添香</a>
                    <a href="//www.readnovel.com" target="_blank" class="mr8">小说阅读网</a>
                    <a href="//www.xs8.cn" target="_blank" class="mr8">言情小说吧</a>
                    <a href="//www.xxsy.net" target="_blank" class="mr8">潇湘书院</a>
                    <a href="http://www.tingbook.com" target="_blank" class="mr8">天方听书网</a>
                    <a href="http://www.lrts.me" target="_blank" class="mr8">懒人听书</a>
                    <a href="http://yuedu.yuewen.com" target="_blank" class="mr8">阅文悦读</a>
                    <a href="//www.yuewen.com/app.html" target="_blank" class="mr8">QQ阅读</a>
                    <a href="//www.yuewen.com/app.html#appqd" target="_blank" class="mr8">起点读书</a>
                    <a href="//www.yuewen.com/app.html#appzj" target="_blank" class="mr8">作家助手</a>
                    <a href="//www.webnovel.com" target="_blank" class="mr8">起点国际版</a>
                </div>
                <div class="footer-menu">
                    <a href="//www.qidian.com/about/intro" target="_blank">关于起点</a>
                    <a href="//www.qidian.com/about/contact" target="_blank">联系我们</a>
                    <a href="//join.book.qq.com/index.html" target="_blank">加入我们</a>
                    <a href="//www.qidian.com/help/index/2" target="_blank">帮助中心</a>
                    <a href="http://123.206.70.240/online/?cid=0&uid=10&code=0" class="commitAdvice" target="_blank">提交建议</a>
                    <!-- <a href="//wwwploy.qidian.com/help/about_link.aspx" target="_blank">合作伙伴</a> -->
                    <!-- <a href="//bbs.qidian.com" target="_blank">起点论坛</a> -->
                    <!-- <a href="//webgame.qidian.com/jiazhang.html" target="_blank">家长监护工程</a> -->
                </div>
                <div class="footer-copyright">
                    <p>Copyright (C) 2002-2018 www.qidian.com All Rights Reserved 版权所有 </p>
                    <p>上海玄霆娱乐信息科技有限公司 上海玄霆娱乐信息科技有限公司 增值电信业务经营许可证沪B2-20080046 沪网文[2017]0081-031 新出网证(沪)字010 沪ICP备08017520号-1</p>
                    <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>
                    <p>本站所收录作品、社区话题、书库评论及本站所做之广告均属其个人行为，与本站立场无关</p>
                </div>
            </div>
        <script>
            // 全局的通用数据都放g_data变量里
            var g_data = {};
            // 环境变量，会按照环境选择性打log
            g_data.envType = 'pro' === 'pro' ? '' : 'pro';
            // 调试模式
            g_data.debug = 'false';
            g_data.static = '//qidian.gtimg.com';
            // 域名
            g_data.domains = {"my":"//my.qidian.com","static":"//qidian.gtimg.com","cover":"//qidian.qpic.cn","pay":"//pay.yuewen.com","security":"//aq.yuewen.com","pc":"//www.qidian.com","hiijack":"//book.qidian.com","activity":"//activity.qidian.com","help":"//www.qidian.com"};
            // 用户
            g_data.user = {"isLogin":true,"avatar":"//facepic.qidian.com/qd_face/349573/5325460/100","nickName":"木杉书虫","userId":303831931,"userType":3,"guid":"1345404401","tucaoUrl":"https://support.qq.com/embed/app/14308?data=6ce8873dee032a6dbc6aa4bb7c87270e863f8de0c3c02d5211cfa0df40224b607d95de38a56b3e2a8746440d59f281dfb7c266f0708cf35ed9bdab6ed4d8d1d3e2625871c319a8ad567824537c5771ff3db29248945c91ed10cae7febd7ec89c3f44773beef293d0674f822b165ad5521ff6745d2bf898ca791c3c96dec91475e49bf65372add93f943c847d3aabb9b6e7b20a07fcc29cddc4e4df1a9d2193552bcd74641b6fa0bceaac584a5d8190a82e9ef5ce9d9885a91632998ac12b1b6d"};
            // 用作统计PV
            g_data.pageId = 'qd_P_system_message';
            // 用作判断用户是否登录
            g_data.isLogin = true;
        </script>
        <script data-ignore="true" src="//qidian.gtimg.com/lbf/2.0.0.1/LBF.js?max_age=31536000"></script>
        <script>
            // LBF 配置
            LBF.config({
                paths: {
                    qdp: '//qidian.gtimg.com/qdp',
                    common: '//qidian.gtimg.com/common/1.0.0'
                },
                vars: {
                    theme: '//qidian.gtimg.com/qdp/css',
                },
                combo: true,
                debug: false
            });
            //设置页面常用的一些插件
                LBF.use(['lib.jQuery', 'monitor.SpeedReport', 'qdp/js/common/page/index.0.74.js', 'qdp/js/message/index.0.24.js'], function ($, SpeedReport, pageCommon, page) {
                    pageCommon.init();
                    page.init();
                $(window).on('load.speedReport', function () {
                    // speedTimer[onload]
                    speedTimer.push(new Date().getTime());
                    var f1 = 7718; // china reading limited's ID
                    var f2 = 251; // site ID
                    var f3 = 0; // page ID
                    // chrome & IE9 Performance API
                    SpeedReport.reportPerformance({
                        flag1: f1,
                        flag2: f2,
                        flag3IE: f3,
                        flag3Chrome: f3,
                        rate: 0.1
                    });
                    // common speedTimer:['dom ready', 'onload']
                    var speedReport = SpeedReport.create({
                        flag1: f1,
                        flag2: f2,
                        flag3: f3,
                        start: speedZero,
                        rate: 0.1
                    });
                    // chrome & IE9 Performance API range 1~19, common speedTimer use 20+
                    for (var i = 0; i < speedTimer.length; i++) {
                        speedReport.add(speedTimer[i], i + 20);
                    }
                    // http://isdspeed.qq.com/cgi-bin/r.cgi?flag1=7718&flag2=224&flag3=1&1=38&2=38&…
                    speedReport.send();
                });
            });
            // speedTimer[dom ready], put it before </body>
            speedTimer.push(new Date().getTime());
        </script>
        
           <script>
                var _mtac = {"senseQuery":1};
                (function() {
                    var mta = document.createElement("script");
                    mta.src = "//pingjs.qq.com/h5/stats.js?v2.0.4";
                    mta.setAttribute("name", "MTAH5");
                    mta.setAttribute("sid", "500445303");
                    mta.setAttribute("cid", "500446496");
                    var s = document.getElementsByTagName("script")[0];
                    s.parentNode.insertBefore(mta, s);
                })();
            </script>
        
</body>
</html>
