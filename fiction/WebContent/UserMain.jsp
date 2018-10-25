<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页_个人中心_起点中文网</title>
    <meta name="keywords" content="小说,小说网,玄幻小说,武侠小说,都市小说,历史小说,网络小说,言情小说,青春小说,原创网络文学">
    <meta name="description" content="小说阅读,精彩小说尽在起点中文网. 起点中文网提供玄幻小说,武侠小说,原创小说,网游小说,都市小说,言情小说,青春小说,历史小说,军事小说,网游小说,科幻小说,恐怖小说,首发小说,最新章节免费">
   <!--  <link rel="icon" type="image/x-icon" href="//qidian.gtimg.com/qdp/img/favicon.0.3.ico">
    
	<link rel="stylesheet" data-ignore="true" href="//qidian.gtimg.com/c/=/qdp/iconfont/symbols.3.56.css,/qdp/css/common.0.80.css,/qdp/css/home/index.0.26.css,/qdp/icon/common/sprite.0.12.css,/qdp/font/index.0.11.css" />
 -->
    <!-- <script>document.domain ='qidian.com';</script>
    <script>var speedTimer = [], speedZero = new Date().getTime();</script> -->
</head>
<body class="homepage">
 <div class="personal-header" data-l1="1">
                <div class="header-wrapper">
                    <div class="header-logo">
                        <a href="#">个人中心</a>
                    </div>
                    <ul class="header-nav">
                        <li class="header-nav-li">
                            <a href="UserMain.jsp" class="header-nav-a " accesskey="1" data-eid="qd_M01"><i class="iconfont icon-home"></i>我的首页</a>
                        </li>
                        <li class="header-nav-li" id="headerNav">
                            <a href="bookcase.jsp" class="header-nav-a" accesskey="2" data-eid="qd_M02"><i class="iconfont icon-book"></i>我的书架</a>
                        </li>
                        <li class="header-nav-li">
                            <a href="message.jsp" class="header-nav-a " accesskey="3" data-eid="qd_M03"><i class="iconfont icon-msg"></i><i class="qdp-unread elUnread dn">未读</i>消息中心</a>
                        </li>
                        <li class="header-nav-li" id="headerNav">
                            <a href="text?method=findText" class="header-nav-a" accesskey="2" data-eid="qd_M02"><i class="iconfont icon-game"></i>我是作者</a>
                        </li>

                    </ul>
                    <a href="#" id="headerLog" class="header-log" data-eid="qd_M06">${user.nickname}</a>
                    <div class="header-goHome">
                        <a href="main.jsp" target="_blank" accesskey="5" data-eid="qd_M05">网站首页</a>
                    </div>
                </div>
                <ul id="headerDropList" class="header-drop">
                    <li>
                        <a href="#" target="_blank" data-guid="1345404401" class="elNewToPay" data-eid="qd_M07">充值</a>
                    </li>
                    <li>
                        <a href="#" data-eid="qd_M08">个人设置</a>
                    </li>
                    <li>
                        <a href="#" data-eid="qd_M09">我的主页</a>
                    </li>
                    <li>
                        <a href="#" target="_blank" data-eid="qd_M10">客服中心</a>
                    </li>
                    <li>
                        <a href="login.jsp" id="elLoginOut" data-eid="qd_M11">退出</a>
                    </li>
                </ul>
            </div>
                
                

                
                
        <div class="qdp-wrapper">
               <div class="personal-sideBar" data-l1="2">
                    <ul class="sideBar-group">
                        <li class="active">
                        <a href="main.jsp" class="sideBar-list-a"><i class="iconfont icon-home"></i>首页</a>
                        </li>
                        <li class="">
                            <a href="#" class="sideBar-list-a" data-eid="qd_M12"><i class="iconfont  icon-finance"></i>账务中心</a>
                        </li>
                        <li class="">
                            <a href="#" class="sideBar-list-a" data-eid="qd_M13"><i class="iconfont  icon-piaojia"></i>我的票夹</a>
                        </li>
                        <li class="">
                            <a href="#" class="sideBar-list-a" data-eid="qd_M14"><i class="iconfont icon-packet"></i>我的红包</a>
                        </li>
                        <li class="">
                            <a href="#" class="sideBar-list-a" data-eid="qd_M15"><i class="iconfont icon-comment"></i>我的书评</a>
                        </li>
                    </ul>
                    <ul class="sideBar-group">
                        <li class="">
                            <a href="#" class="sideBar-list-a" data-eid="qd_M16"><i class="iconfont icon-level"></i>经验值等级</a>
                        </li>
                        <li class="">
                            <a href="#" class="sideBar-list-a" data-eid="qd_M17"><i class="iconfont icon-task"></i>任务</a>
                        </li>
                        <li class="">
                            <a href="#" class="sideBar-list-a" data-eid="qd_M18"><i class="iconfont icon-badge"></i>徽章/称号/认证</a>
                        </li>
                    </ul>
                    <ul class="sideBar-group">
                        <li>
                            <a href="#" class="sideBar-list-a" target="_blank" data-eid="qd_M19"><i class="iconfont icon-vip"></i>会员中心</a>
                        </li>
                        <li>
                            <a href="#" class="sideBar-list-a" target="_blank" data-eid="qd_M20"><i class="iconfont icon-safety"></i>安全中心</a>
                        </li>
                        <li>
                            <a href="#" class="sideBar-list-a" target="_blank" data-eid="qd_M21"><i class="iconfont icon-author"></i>作家专区</a>
                        </li>
                    </ul>
                        

                        
                </div>
    <div class="qdp-content home-content" data-l1="3" >
        <div class="home-user-wrapper qdp-border" data-l2="1">
            <div class="home-user-avatar" data-l3="1">
                <a href="/setting?targetTab=tabTarget2" class="user-avatar-a"><img class="user-avatar-img" src="//facepic.qidian.com/qd_face/349573/5325460/100" alt="木杉书虫的头像" data-eid="qd_M24"></a>
                <a href="/vip" target="_blank"  class="home-user-vip icon icon-hy"></a>
            </div>
            <div class="home-user" data-l3="1">
                <div class="qdp-button">
                    <a href="/user/303831931" class="qdp-button-a mlr4" target="_blank" data-eid="qd_M23">个人主页</a>
                    <a href="/setting" class="qdp-button-a qdp-button-icon ml12" data-eid="qd_M22"><i class="iconfont icon-gear"></i></a>
                </div>
                <h3><a href="/setting" data-eid="qd_M25">木杉书虫</a><a href="/level"  class="home-user-level" data-eid="qd_M26">Lv13</a></h3>
                <div class="home-user-safety">
                      <a href="//aq.yuewen.com/welcome/index" target="_blank">安全级别<div class="user-progress-wrapper">
                                <div class="qdp-progress-totle">
                                    <div class="qdp-progress-done" style="width: 60%;"></div>
                                </div>
                            </div><span class="ml8 highlight">60</span>/100</a>
                </div>
                <div  class="home-user-data">
                    <span id="elFriendGuide" style="height:56px;display:inline-block;"><a href="/friend" class="mr12" data-eid="qd_M27">关注<b class="home-user-b">1</b></a><a href="/friend?targetTab=tabTarget3"  class="mr12 ml12" data-eid="qd_M28">粉丝<b class="home-user-b">1</b></a></span><a href="/light"  class="ml12" data-eid="qd_M29">大神之光<b class="home-user-b">0</b></a></div>
            </div>
        </div>
        <ul class="qdp-border home-msg-wrapper" data-l2="1">
            <li class="home-msg" data-l3="1">
                <div class="home-msg-title"><i class="iconfont icon-price yellow"></i><b>账户余额</b></div>
                <div class="home-msg-data"><a href="/account" data-eid="qd_M30"><b class="home-msg-b">887</b>起点币</a></div>
                <a class="home-msg-more blue elPayBtn" href="//pay.yuewen.com/pc/index?appId=10&areaId=1&userGuid=1345404401&returnUrl=https%3A%2F%2Fmy.qidian.com" target="_blank" data-eid="qd_M30">充值</a>
            </li>
            <li class="home-msg" data-l3="2">
                <div class="home-msg-title"><i class="iconfont icon-piaojia green"></i><b>我的票夹</b></div>
                <div class="home-msg-data"><a href="/ticketbox" data-eid="qd_M31"><b class="home-msg-b home-msg-num">0</b>月票&nbsp;·&nbsp;<span class="home-msg-num">2</span>推荐票</a></div>
                <a class="home-msg-more blue" href="/ticketbox" class="blue" data-eid="qd_M31">立即查看</a>
            </li>
            <li class="home-msg" data-l3="2">
                <div class="home-msg-title"><i class="iconfont icon-book blue"></i><b>我的书架</b></div>
                <div class="home-msg-data"><a href="/bookcase" data-eid="qd_M32"><b class="home-msg-b">17</b>本藏书</a></div>
                <a class="home-msg-more blue" href="/bookcase" class="blue" data-eid="qd_M32">立即查看</a>
            </li>
            <li class="home-msg" data-l3="2">
                <div class="home-msg-title"><i class="iconfont icon-note highlight"></i><b>我的书单</b></div>
                <div class="home-msg-data"><a href="//book.qidian.com/booklist/mine" target="_blank" data-eid="qd_M33" ><b class="home-msg-b">0</b>个关注</a></div>
                <a class="home-msg-more blue" href="//book.qidian.com/booklist/mine" data-eid="qd_M33" target="_blank">立即查看</a>
            </li>
        </ul>
        <div class="qdp-border bg-white mt20" id="elAwardGuide" data-l2="1">
            <div class="home-award-title" data-l3="3">
            <h3>每日奖励</h3>完成每日任务获得活跃度,领取相应奖励<a href="//www.qidian.com/help/index/16"  target="_blank" class="iconfont icon-quest qdp-question"></a>
                <a href="/level" class="home-award-a blue" data-eid="qd_M34">更多奖励»</a>
            </div>

        </div>

    </div>

            
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
               <!--  <div class="footer-sub">
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
                </div> -->
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
                <!-- <div class="footer-copyright">
                    <p>Copyright (C) 2002-2018 www.qidian.com All Rights Reserved 版权所有 </p>
                    <p>上海玄霆娱乐信息科技有限公司 上海玄霆娱乐信息科技有限公司 增值电信业务经营许可证沪B2-20080046 沪网文[2017]0081-031 新出网证(沪)字010 沪ICP备08017520号-1</p>
                    <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>
                    <p>本站所收录作品、社区话题、书库评论及本站所做之广告均属其个人行为，与本站立场无关</p>
                </div> -->
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
            g_data.pageId = 'qd_P_mycenter';
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
                LBF.use(['lib.jQuery', 'monitor.SpeedReport', 'qdp/js/common/page/index.0.74.js', 'qdp/js/homepage/index.0.24.js'], function ($, SpeedReport, pageCommon, page) {
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
