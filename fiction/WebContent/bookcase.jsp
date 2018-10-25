<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的书架_个人中心_起点中文网</title>
    <meta name="keywords" content="小说,小说网,玄幻小说,武侠小说,都市小说,历史小说,网络小说,言情小说,青春小说,原创网络文学">
    <meta name="description" content="小说阅读,精彩小说尽在起点中文网. 起点中文网提供玄幻小说,武侠小说,原创小说,网游小说,都市小说,言情小说,青春小说,历史小说,军事小说,网游小说,科幻小说,恐怖小说,首发小说,最新章节免费">
    <link rel="icon" type="image/x-icon" href="//qidian.gtimg.com/qdp/img/favicon.0.3.ico">
    
<link rel="stylesheet" data-ignore="true" href="//qidian.gtimg.com/c/=/qdp/iconfont/symbols.3.56.css,/qdp/css/common.0.80.css,/qdp/css/shelf/index.0.40.css,/qdp/icon/common/sprite.0.12.css,/qdp/font/index.0.11.css" />

    <script>document.domain ='qidian.com';</script>
    <script>var speedTimer = [], speedZero = new Date().getTime();</script>
</head>
<body class="shelf">
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
				<li class="">
					<a href="/bookcase/recent" class="sideBar-list-a" data-eid="qd_M185">最近阅读</a>
				</li>
			</ul>
			<ul class="sideBar-group" id="tabView">
				<li id="elIndex" class="active">
					<a href="/bookcase" class="sideBar-list-a" title="默认分组" data-eid="qd_M186">默认分组</a>
					<a href="javascript:;" id="btnNewGroup" class="icon icon-add ui-tips" title="新建分组" data-eid="qd_M189">新建分组</a>
				</li>
				
			</ul>
			<ul class="sideBar-group">
				<li class="">
					<a href="/bookcase/auto" class="sideBar-list-a" title="自动订阅" data-eid="qd_M188">自动订阅</a>
				</li>
			</ul>
		</div>
    <div class="qdp-content" data-l1="3">
        <form id="shelfSearchForm" class="shelf-search qdp-border" action="/bookcase/search" target="_blank">
            <input type="text" name="kw" class="shelf-search-input" placeholder="输入作品名或作家名">
            <input type="submit" id="shelfSearch"  class="clip"  data-eid="qd_M192">
            <label for="shelfSearch" class="shelf-search-submit ui-button" data-eid="qd_M192">搜书架</label>
        </form>
        
        <div class="shelf-content" id="addToShelfForm" data-l2="2">
            <div id="tabView" class="ui-tab-tabs">
                <a href="javascript:" class="checked" id="elEditTab" data-rel="tabTarget1">编辑推荐</a>
                <a href="javascript:"  id="elGameTab" data-rel="tabTarget2">游戏推荐</a>
            </div>
            <label class="recmd-add blue unloading" data-l3="1"><a class="ibookclose" id="closeRecBook" data-eid="qd_M193" href="javascript:"><i class="iconfont icon-close"></i></a></label>
            <div class="ui-tab-contents shelf-content-wrapper">
                <div id="tabTarget1" class="ui-tab-content checked">
                    <ul class="recmd-list" id="elRecList1" data-l3="1" style="height: 169px;">
                        
                            
                                <li class="recmd-list-item">
                                    <input type="checkbox" value="1012973000" checked="">
                                    <a href="//book.qidian.com/info/1012973000" target="_blank" class="recmd-list-a"  data-eid="qd_M194" data-bid="1012973000">
                                        <div class="recmd-commet">小杨啊，你家闺女，好像有点特别啊！</div>
                                        <img src="//qidian.qpic.cn/qdbimg/349573/1012973000/180"  alt="杨小落的便宜奶爸封面图" class="recmd-list-img">
                                        <div class="recmd-list-title" data-eid="qd_M195" data-bid="1012973000" >杨小落的便宜奶爸</div>
                                    </a>
                                </li>
                            
                                <li class="recmd-list-item">
                                    <input type="checkbox" value="1010981643" checked="">
                                    <a href="//book.qidian.com/info/1010981643" target="_blank" class="recmd-list-a"  data-eid="qd_M194" data-bid="1010981643">
                                        <div class="recmd-commet">血红大神新书来袭：我族，要的不是卑下的生存，而是昂首、高傲的生活。</div>
                                        <img src="//qidian.qpic.cn/qdbimg/349573/1010981643/180"  alt="开天录封面图" class="recmd-list-img">
                                        <div class="recmd-list-title" data-eid="qd_M195" data-bid="1010981643" >开天录</div>
                                    </a>
                                </li>
                            
                                <li class="recmd-list-item">
                                    <input type="checkbox" value="1012916917" checked="">
                                    <a href="//book.qidian.com/info/1012916917" target="_blank" class="recmd-list-a"  data-eid="qd_M194" data-bid="1012916917">
                                        <div class="recmd-commet">叶华获得金爷（金手指）赋予的知识后，开启精彩富贵人生！</div>
                                        <img src="//qidian.qpic.cn/qdbimg/349573/1012916917/180"  alt="全能科技巨头封面图" class="recmd-list-img">
                                        <div class="recmd-list-title" data-eid="qd_M195" data-bid="1012916917" >全能科技巨头</div>
                                    </a>
                                </li>
                            
                                <li class="recmd-list-item">
                                    <input type="checkbox" value="1012480920" checked="">
                                    <a href="//book.qidian.com/info/1012480920" target="_blank" class="recmd-list-a"  data-eid="qd_M194" data-bid="1012480920">
                                        <div class="recmd-commet">逆转洪荒时空，成就广成子，镇压群雄，证道永生。</div>
                                        <img src="//qidian.qpic.cn/qdbimg/349573/1012480920/180"  alt="洪荒之证道永生封面图" class="recmd-list-img">
                                        <div class="recmd-list-title" data-eid="qd_M195" data-bid="1012480920" >洪荒之证道永生</div>
                                    </a>
                                </li>
                            
                                <li class="recmd-list-item">
                                    <input type="checkbox" value="1012790185" checked="">
                                    <a href="//book.qidian.com/info/1012790185" target="_blank" class="recmd-list-a"  data-eid="qd_M194" data-bid="1012790185">
                                        <div class="recmd-commet">一个神棍对抗整个娱乐圈的故事。</div>
                                        <img src="//qidian.qpic.cn/qdbimg/349573/1012790185/180"  alt="我不是天王封面图" class="recmd-list-img">
                                        <div class="recmd-list-title" data-eid="qd_M195" data-bid="1012790185" >我不是天王</div>
                                    </a>
                                </li>
                            
                                <li class="recmd-list-item">
                                    <input type="checkbox" value="1012805273" checked="">
                                    <a href="//book.qidian.com/info/1012805273" target="_blank" class="recmd-list-a"  data-eid="qd_M194" data-bid="1012805273">
                                        <div class="recmd-commet">重生1929，他只求苟全性命于乱世，不求闻达与于诸侯……</div>
                                        <img src="//qidian.qpic.cn/qdbimg/349573/1012805273/180"  alt="民国大间谍封面图" class="recmd-list-img">
                                        <div class="recmd-list-title" data-eid="qd_M195" data-bid="1012805273" >民国大间谍</div>
                                    </a>
                                </li>
                            
                        
                    </ul>
                </div>
                <div id="tabTarget2" class="ui-tab-content">
                    <ul class="recmd-list ui-loading" id="elRecList2" data-l3="1" style="height: 169px;">
                    </ul>
                </div>
            </div>
        </div>
        
            <div class="qdp-border table-x shelf-default shelf-table" data-l2="3" >
                <div class="table-msg" data-l3="2">
                    <h2 class="shelf-title" id="shelfTitle" data-gid="-100">默认分组</h2>共<strong class="dark ml5 mr5" id="elMoTotal">17</strong><span id="shelfAmount">本书籍</span>
                    
                    <form id="shelfFilterForm" class="table-filter shelf-filter">
                        <select name="time" style="width:120px;" >
                            <option value="0" data-eid="qd_M196" data-rid="1" selected >更新时间</option>
                            <option value="2" data-eid="qd_M197" data-rid="2"  >阅读时间</option>
                        </select>
                        <input type="hidden" name="c" value="" class="elInputC">
                    </form>
                    
                </div>
                <div class="table-size" data-l3="2">
                    <table id="shelfTable" class="ui-table table-checkbox" data-count="17" >
                        <thead>
                          <tr>
                            <th scope="col"><input type="checkbox" id="chkBookNameAll" name="bookname" value="all"  ><label class="ui-checkbox" for="chkBookNameAll"></label></th>
                            <th scope="col" >书名/最近更新章节</th>
                            <th scope="col" width="70">更新时间</th>
                            <th scope="col" width="90">作者</th>
                            <th scope="col" width="60">阅读进度</th>
                            <th scope="col" width="20">&nbsp;</th>
                          </tr>
                        </thead>
                        <tbody>
                            
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName0" name="bookname" value="1010868264" ><label class="ui-checkbox" for="chkBookName0"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//xuanhuan.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「玄幻」</a>
                                            
                                            <a href="//book.qidian.com/info/1010868264" target="_blank" title="诡秘之主" data-bid="1010868264" data-eid="qd_M198">诡秘之主</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/1010868264/428729005" data-eid="qd_M218" data-cid="428729005" class="shelf-table-chapter blue" target="_blank" title="第一百八十二章 “治安官”非凡特性">第一百八十二章 “治安官”非凡特性</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/1010868264" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">4小时前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/4362088" target="_blank" title="爱潜水的乌贼" class="shelf-table-author font12" data-eid="qd_M200" >爱潜水的乌贼</a>
                                        
                                    </td>
                                    
                                        
                                            <td class="col5"><a href="//vipreader.qidian.com/chapter/1010868264/428729005" class="spTips font12 noReadStatus" target="_blank" title="读至第一百八十二章 “治安官”非凡特性" data-eid="qd_M202" data-cid="428729005">无更新</a></td>
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList0" data-eid="qd_M203"></a>
                                            <div id="forList0" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="1010868264" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="1010868264" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="1010868264" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="1010868264" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName1" name="bookname" value="1003483393" ><label class="ui-checkbox" for="chkBookName1"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//youxi.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「游戏」</a>
                                            
                                            <a href="//book.qidian.com/info/1003483393" target="_blank" title="网游之全球在线" data-bid="1003483393" data-eid="qd_M198">网游之全球在线</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/1003483393/404070176" data-eid="qd_M218" data-cid="404070176" class="shelf-table-chapter blue" target="_blank" title="新书《废土国度》已发布">新书《废土国度》已发布</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/1003483393" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">5个月前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/6981908" target="_blank" title="笙箫剑客" class="shelf-table-author font12" data-eid="qd_M200" >笙箫剑客</a>
                                        
                                    </td>
                                    
                                        
                                            
                                            <td class="col5"><a href="//read.qidian.com/chapter/FQXzrLwkirMWXXlYBroA6g2/eSlFKP1Chzg1" class="spTips font12 gray-unread" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="">尚未阅读</a></td>
                                            
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList1" data-eid="qd_M203"></a>
                                            <div id="forList1" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="1003483393" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="1003483393" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="1003483393" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="1003483393" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName2" name="bookname" value="2643379" ><label class="ui-checkbox" for="chkBookName2"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//xuanhuan.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「玄幻」</a>
                                            
                                            <a href="//book.qidian.com/info/2643379" target="_blank" title="奥术神座" data-bid="2643379" data-eid="qd_M198">奥术神座</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/2643379/402952907" data-eid="qd_M218" data-cid="402952907" class="shelf-table-chapter blue" target="_blank" title="新书《诡秘之主》">新书《诡秘之主》</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/2643379" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">6个月前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/4362088" target="_blank" title="爱潜水的乌贼" class="shelf-table-author font12" data-eid="qd_M200" >爱潜水的乌贼</a>
                                        
                                    </td>
                                    
                                        
                                            
                                            <td class="col5"><a href="//read.qidian.com/chapter/NEvr5HgrmN41/eSlFKP1Chzg1" class="spTips font12 gray-unread" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="">尚未阅读</a></td>
                                            
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList2" data-eid="qd_M203"></a>
                                            <div id="forList2" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="2643379" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="2643379" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="2643379" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="2643379" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName3" name="bookname" value="3249362" ><label class="ui-checkbox" for="chkBookName3"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//xuanhuan.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「玄幻」</a>
                                            
                                            <a href="//book.qidian.com/info/3249362" target="_blank" title="一世之尊" data-bid="3249362" data-eid="qd_M198">一世之尊</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/3249362/402952819" data-eid="qd_M218" data-cid="402952819" class="shelf-table-chapter blue" target="_blank" title="新书《诡秘之主》">新书《诡秘之主》</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/3249362" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">6个月前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/4362088" target="_blank" title="爱潜水的乌贼" class="shelf-table-author font12" data-eid="qd_M200" >爱潜水的乌贼</a>
                                        
                                    </td>
                                    
                                        
                                            
                                            <td class="col5"><a href="//read.qidian.com/chapter/9LxyoriyyTk1/eSlFKP1Chzg1" class="spTips font12 gray-unread" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="">尚未阅读</a></td>
                                            
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList3" data-eid="qd_M203"></a>
                                            <div id="forList3" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="3249362" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="3249362" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="3249362" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="3249362" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName4" name="bookname" value="1004142144" ><label class="ui-checkbox" for="chkBookName4"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//xuanhuan.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「玄幻」</a>
                                            
                                            <a href="//book.qidian.com/info/1004142144" target="_blank" title="武道宗师" data-bid="1004142144" data-eid="qd_M198">武道宗师</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/1004142144/402734472" data-eid="qd_M218" data-cid="402734472" class="shelf-table-chapter blue" target="_blank" title="新书上传了">新书上传了</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/1004142144" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">6个月前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/4362088" target="_blank" title="爱潜水的乌贼" class="shelf-table-author font12" data-eid="qd_M200" >爱潜水的乌贼</a>
                                        
                                    </td>
                                    
                                        
                                            <td class="col5"><a href="//vipreader.qidian.com/chapter/1004142144/402734472" class="spTips font12 noReadStatus" target="_blank" title="读至新书上传了" data-eid="qd_M202" data-cid="402734472">无更新</a></td>
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList4" data-eid="qd_M203"></a>
                                            <div id="forList4" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="1004142144" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="1004142144" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="1004142144" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="1004142144" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName5" name="bookname" value="2271393" ><label class="ui-checkbox" for="chkBookName5"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//dushi.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「都市」</a>
                                            
                                            <a href="//book.qidian.com/info/2271393" target="_blank" title="官道无疆" data-bid="2271393" data-eid="qd_M198">官道无疆</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/2271393/402698950" data-eid="qd_M218" data-cid="402698950" class="shelf-table-chapter blue" target="_blank" title="官道无疆大结局（22）">官道无疆大结局（22）</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/2271393" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">6个月前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/4362086" target="_blank" title="瑞根" class="shelf-table-author font12" data-eid="qd_M200" >瑞根</a>
                                        
                                    </td>
                                    
                                        
                                            
                                            <td class="col5"><a href="//read.qidian.com/chapter/kwtBwHmNgR41/eSlFKP1Chzg1" class="spTips font12 gray-unread" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="">尚未阅读</a></td>
                                            
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList5" data-eid="qd_M203"></a>
                                            <div id="forList5" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="2271393" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="2271393" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="2271393" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="2271393" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName6" name="bookname" value="1003779332" ><label class="ui-checkbox" for="chkBookName6"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//xuanhuan.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「玄幻」</a>
                                            
                                            <a href="//book.qidian.com/info/1003779332" target="_blank" title="烽皇" data-bid="1003779332" data-eid="qd_M198">烽皇</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/1003779332/397438148" data-eid="qd_M218" data-cid="397438148" class="shelf-table-chapter blue" target="_blank" title="第三百一十节 后记">第三百一十节 后记</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/1003779332" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">8个月前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/4362086" target="_blank" title="瑞根" class="shelf-table-author font12" data-eid="qd_M200" >瑞根</a>
                                        
                                    </td>
                                    
                                        
                                            <td class="col5"><a href="//vipreader.qidian.com/chapter/1003779332/397438148" class="spTips font12 noReadStatus" target="_blank" title="读至第三百一十节 后记" data-eid="qd_M202" data-cid="397438148">无更新</a></td>
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList6" data-eid="qd_M203"></a>
                                            <div id="forList6" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="1003779332" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="1003779332" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsUnRss font12" data-id="1003779332" data-cbid="0" data-eid="qd_M206">取消自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="1003779332" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName7" name="bookname" value="1017141" ><label class="ui-checkbox" for="chkBookName7"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//qihuan.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「奇幻」</a>
                                            
                                            <a href="//book.qidian.com/info/1017141" target="_blank" title="盘龙" data-bid="1017141" data-eid="qd_M198">盘龙</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/1017141/386306355" data-eid="qd_M218" data-cid="386306355" class="shelf-table-chapter blue" target="_blank" title="番茄新书《飞剑问道》第一章已经上传！">番茄新书《飞剑问道》第一章已经上传！</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/1017141" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">1年前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/4362096" target="_blank" title="我吃西红柿" class="shelf-table-author font12" data-eid="qd_M200" >我吃西红柿</a>
                                        
                                    </td>
                                    
                                        
                                            
                                            <td class="col5"><a href="//read.qidian.com/chapter/Ou8OEduEwkM1/eSlFKP1Chzg1" class="spTips font12 gray-unread" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="">尚未阅读</a></td>
                                            
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList7" data-eid="qd_M203"></a>
                                            <div id="forList7" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="1017141" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="1017141" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="1017141" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="1017141" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName8" name="bookname" value="1639199" ><label class="ui-checkbox" for="chkBookName8"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//kehuan.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「科幻」</a>
                                            
                                            <a href="//book.qidian.com/info/1639199" target="_blank" title="吞噬星空" data-bid="1639199" data-eid="qd_M198">吞噬星空</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/1639199/386306121" data-eid="qd_M218" data-cid="386306121" class="shelf-table-chapter blue" target="_blank" title="番茄新书《飞剑问道》第一章已经上传！">番茄新书《飞剑问道》第一章已经上传！</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/1639199" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">1年前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/4362096" target="_blank" title="我吃西红柿" class="shelf-table-author font12" data-eid="qd_M200" >我吃西红柿</a>
                                        
                                    </td>
                                    
                                        
                                            
                                            <td class="col5"><a href="//read.qidian.com/chapter/3duiTFMpVMU1/eSlFKP1Chzg1" class="spTips font12 gray-unread" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="">尚未阅读</a></td>
                                            
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList8" data-eid="qd_M203"></a>
                                            <div id="forList8" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="1639199" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="1639199" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="1639199" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="1639199" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName9" name="bookname" value="2725693" ><label class="ui-checkbox" for="chkBookName9"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//kehuan.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「科幻」</a>
                                            
                                            <a href="//book.qidian.com/info/2725693" target="_blank" title="众星之主" data-bid="2725693" data-eid="qd_M198">众星之主</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/2725693/368351882" data-eid="qd_M218" data-cid="368351882" class="shelf-table-chapter blue" target="_blank" title="第一百七十三章天人之限">第一百七十三章天人之限</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/2725693" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">1年前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/2948661" target="_blank" title="一伤二十八" class="shelf-table-author font12" data-eid="qd_M200" >一伤二十八</a>
                                        
                                    </td>
                                    
                                        
                                            
                                            <td class="col5"><a href="//read.qidian.com/chapter/ueLFUEXekOw1/eSlFKP1Chzg1" class="spTips font12 gray-unread" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="">尚未阅读</a></td>
                                            
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList9" data-eid="qd_M203"></a>
                                            <div id="forList9" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="2725693" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="2725693" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="2725693" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="2725693" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName10" name="bookname" value="1264249" ><label class="ui-checkbox" for="chkBookName10"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//dushi.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「都市」</a>
                                            
                                            <a href="//book.qidian.com/info/1264249" target="_blank" title="弄潮" data-bid="1264249" data-eid="qd_M198">弄潮</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//read.qidian.com/chapter/_Grxnek2yh81/_EvrZwhLRNHwrjbX3WA1AA2" data-eid="qd_M218" data-cid="317928500" class="shelf-table-chapter blue" target="_blank" title="新书《烽皇》已发布，求支持">新书《烽皇》已发布，求支持</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/1264249" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">1年前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/4362086" target="_blank" title="瑞根" class="shelf-table-author font12" data-eid="qd_M200" >瑞根</a>
                                        
                                    </td>
                                    
                                        
                                            
                                            <td class="col5"><a href="//read.qidian.com/chapter/_Grxnek2yh81/eSlFKP1Chzg1" class="spTips font12 gray-unread" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="">尚未阅读</a></td>
                                            
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList10" data-eid="qd_M203"></a>
                                            <div id="forList10" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="1264249" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="1264249" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="1264249" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="1264249" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName11" name="bookname" value="3184195" ><label class="ui-checkbox" for="chkBookName11"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//xianxia.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「仙侠」</a>
                                            
                                            <a href="//book.qidian.com/info/3184195" target="_blank" title="太浩" data-bid="3184195" data-eid="qd_M198">太浩</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/3184195/308086047" data-eid="qd_M218" data-cid="308086047" class="shelf-table-chapter blue" target="_blank" title="同人：如果没有梦蝶的世界34">同人：如果没有梦蝶的世界34</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/3184195" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">1年前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/3340783" target="_blank" title="无极书虫" class="shelf-table-author font12" data-eid="qd_M200" >无极书虫</a>
                                        
                                    </td>
                                    
                                        
                                            
                                            <td class="col5"><a href="//read.qidian.com/chapter/mgcmjWAsi0A1/eSlFKP1Chzg1" class="spTips font12 gray-unread" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="">尚未阅读</a></td>
                                            
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList11" data-eid="qd_M203"></a>
                                            <div id="forList11" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="3184195" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="3184195" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="3184195" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="3184195" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName12" name="bookname" value="107580" ><label class="ui-checkbox" for="chkBookName12"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//xianxia.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「仙侠」</a>
                                            
                                            <a href="//book.qidian.com/info/107580" target="_blank" title="凡人修仙传" data-bid="107580" data-eid="qd_M198">凡人修仙传</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/107580/91969281" data-eid="qd_M218" data-cid="91969281" class="shelf-table-chapter blue" target="_blank" title="忘语新书《玄界之门》">忘语新书《玄界之门》</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/107580" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">1年前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/4362771" target="_blank" title="忘语" class="shelf-table-author font12" data-eid="qd_M200" >忘语</a>
                                        
                                    </td>
                                    
                                        
                                            
                                            <td class="col5"><a href="//read.qidian.com/chapter/Gyliu2kLjSQ1/eSlFKP1Chzg1" class="spTips font12 gray-unread" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="">尚未阅读</a></td>
                                            
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList12" data-eid="qd_M203"></a>
                                            <div id="forList12" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="107580" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="107580" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="107580" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="107580" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName13" name="bookname" value="1887208" ><label class="ui-checkbox" for="chkBookName13"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//youxi.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「游戏」</a>
                                            
                                            <a href="//book.qidian.com/info/1887208" target="_blank" title="全职高手" data-bid="1887208" data-eid="qd_M198">全职高手</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/1887208/53167221" data-eid="qd_M218" data-cid="53167221" class="shelf-table-chapter blue" target="_blank" title="最后一次上传，完本感言。">最后一次上传，完本感言。</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/1887208" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">1年前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/4362593" target="_blank" title="蝴蝶蓝" class="shelf-table-author font12" data-eid="qd_M200" >蝴蝶蓝</a>
                                        
                                    </td>
                                    
                                        
                                            
                                            <td class="col5"><a href="//read.qidian.com/chapter/TtxVU3dYVW81/eSlFKP1Chzg1" class="spTips font12 gray-unread" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="">尚未阅读</a></td>
                                            
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList13" data-eid="qd_M203"></a>
                                            <div id="forList13" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="1887208" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="1887208" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="1887208" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="1887208" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName14" name="bookname" value="2162767" ><label class="ui-checkbox" for="chkBookName14"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//xuanhuan.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「玄幻」</a>
                                            
                                            <a href="//book.qidian.com/info/2162767" target="_blank" title="神印王座" data-bid="2162767" data-eid="qd_M198">神印王座</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/2162767/42259899" data-eid="qd_M218" data-cid="42259899" class="shelf-table-chapter blue" target="_blank" title="新书：斗罗大陆II《绝世唐门》开启">新书：斗罗大陆II《绝世唐门》开启</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/2162767" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">1年前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/4921" target="_blank" title="唐家三少" class="shelf-table-author font12" data-eid="qd_M200" >唐家三少</a>
                                        
                                    </td>
                                    
                                        
                                            
                                            <td class="col5"><a href="//read.qidian.com/chapter/rgbp9UaUKX81/eSlFKP1Chzg1" class="spTips font12 gray-unread" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="">尚未阅读</a></td>
                                            
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList14" data-eid="qd_M203"></a>
                                            <div id="forList14" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="2162767" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="2162767" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="2162767" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="2162767" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName15" name="bookname" value="1264634" ><label class="ui-checkbox" for="chkBookName15"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//xianxia.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「仙侠」</a>
                                            
                                            <a href="//book.qidian.com/info/1264634" target="_blank" title="仙逆" data-bid="1264634" data-eid="qd_M198">仙逆</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/1264634/36495782" data-eid="qd_M218" data-cid="36495782" class="shelf-table-chapter blue" target="_blank" title="第十三卷 灯火阑珊 第2088章 蓦然回首（结局）">第十三卷 灯火阑珊 第2088章 蓦然回首（结局）</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/1264634" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">1年前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/4362120" target="_blank" title="耳根" class="shelf-table-author font12" data-eid="qd_M200" >耳根</a>
                                        
                                    </td>
                                    
                                        
                                            
                                            <td class="col5"><a href="//read.qidian.com/chapter/EC3OXXDqjiw1/eSlFKP1Chzg1" class="spTips font12 gray-unread" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="">尚未阅读</a></td>
                                            
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList15" data-eid="qd_M203"></a>
                                            <div id="forList15" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="1264634" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="1264634" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="1264634" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="1264634" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                                 <tr>
                                    <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName16" name="bookname" value="170366" ><label class="ui-checkbox" for="chkBookName16"></label></td>
                                    <td class="col2">
                                    <span class="shelf-table-name">
                                        
                                        <b>
                                            <a href="//lishi.qidian.com" data-eid="qd_M219" target="_blank" class="fen-category">「历史」</a>
                                            
                                            <a href="//book.qidian.com/info/170366" target="_blank" title="混在三国当军阀" data-bid="170366" data-eid="qd_M198">混在三国当军阀</a>
                                            
                                        </b>
                                        
                                        
                                        <a href="//vipreader.qidian.com/chapter/170366/21936848" data-eid="qd_M218" data-cid="21936848" class="shelf-table-chapter blue" target="_blank" title="结束感言">结束感言</a>
                                        
                                        
                                    </span>
                                    <a href="//book.qidian.com/subscribe/170366" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a>
                                    </td>
                                    <td class="col3 font12">1年前</td>
                                    <td class="col4">
                                        
                                        <a href="/author/4362625" target="_blank" title="寂寞剑客" class="shelf-table-author font12" data-eid="qd_M200" >寂寞剑客</a>
                                        
                                    </td>
                                    
                                        
                                            
                                            <td class="col5"><a href="//read.qidian.com/chapter/YJpezPSxc3w1/eSlFKP1Chzg1" class="spTips font12 gray-unread" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="">尚未阅读</a></td>
                                            
                                        
                                    
                                    
                                        <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList16" data-eid="qd_M203"></a>
                                            <div id="forList16" class="ui-datalist">
                                                <div class="ui-datalist-datalist">
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="170366" data-num="100">置顶</a>
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="170366" data-eid="qd_M205">移动至</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="170366" data-cbid="0">自动订阅</a>
                                                    
                                                    
                                                    <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="170366" data-eid="qd_M207">删除</a>
                                                    <b class="arr arr-up">
                                                        <i class="arr-left"></i>
                                                        <i class="arr-right"></i>
                                                    </b>
                                                </div>
                                            </div>
                                        </td>
                                    
                                </tr>
                            
                            
                        </tbody>
                    </table>
                    
                    <div class="ui-loading" style="display:none;"><i class="ui-loading-icon"></i></div>
                    <div class="style" style="height:51px;">
                        <div id="tableFixedFoot" class="shelf-foot">
                            <div class="shelf-foot-wrapper">
                                <table class="ui-table table-checkbox">
                                    <thead>
                                      <tr>
                                        <th scope="col" style="line-height:50px;"><input type="checkbox" id="chkBookNameAll2" name="bookname" value="all"  ><label class="ui-checkbox" for="chkBookNameAll2"></label></th>
                                        <th scope="col" style="line-height:50px;">
                                            <label for="chkBookNameAll2" class="mr12">全选</label><a href="javascript:;" class="ml12 mr12" id="elToTop" role="button" data-eid="qd_M208">置顶</a><a href="javascript:;" class="ml12 mr12" id="elMoveTo" role="button" data-eid="qd_M209">移动至</a><a href="javascript:;" class="ml12 mr12" id="elDelete" role="button" data-eid="qd_M210">删除</a>
                                        </th>
                                      </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
    </div>
<%--     <script id="tplGameRec" type="text/ejs-template">
        <% if(gameAd && gameAd.length) { %>
        <% gameAd.forEach(function(obj, index){ var eNum=index+215; %>
        <li class="recmd-list-item">
            <a href="<%= obj.linkUrl %>" data-eid="qd_M<%= eNum %>" data-qd_dd_p1="1" data-rid="<%= index + 1 %>" target="_blank" class="recmd-list-a" >
                <div class="recmd-gamecommet"></div>
                <img src="<%= obj.imgUrl %>"  alt="<%= obj.title %>" class="recmd-list-gameimg">
                <div class="recmd-list-gametitle"><%= obj.title %></div>
            </a>
        </li>
        <% }) %>
        <% } %>
    </script> --%>
<%--     <script id="tplShelfGroup" type="text/ejs-template">
    <% listInfo.forEach(function(obj, index){ %>
    <tr>
        <td class="col1"><input type="checkbox" class="elWcheckbox" id="chkBookName<%= index %>" name="bookname" value="<%= obj.bid %>"><label class="ui-checkbox" for="chkBookName<%= index %>"></label></td>
        <td class="col2"><span class="shelf-table-name"><% if(obj.isTop){ %><a href="javascript:;" class="icon icon-top shelf-badge-top jsTopSetIcon"
        data-id="<%= obj.bid %>" data-num="0"></a><% } %>
        <b>
            <% if(obj.cateName){ %><a href="<%= obj.cateLink %>" data-eid="qd_M219"  target="_blank" class="fen-category">「<%= obj.cateName %>」</a><% } %>
            <% if(obj.form == 1 && obj.fineLayout == 1){ %>
            <a href="javascript:;" class="elJingpaiMore" title="<%= obj.bName %>" data-bid="<%= obj.bid %>" data-eid="qd_M198"><%= obj.bName %></a>
            <% } else { %>
            <a href="//book.qidian.com/info/<%= obj.bid %>" target="_blank" title="<%= obj.bName %>" data-bid="<%= obj.bid %>" data-eid="qd_M198"><%= obj.bName %></a>
            <% } %>
        </b>
        <% if(obj.cnameLast){ %>
        <% if(obj.form == 1 && obj.fineLayout == 1){ %>
        <a href="javascript:;" data-cid="<%= obj.cidLast %>" class="shelf-table-chapter blue elJingpaiMore" target="_blank" title="<%= obj.cnameLast %>"><%= obj.cnameLast %></a>
        <% } else { %>
        <a href="<%= obj.latestLink %>" data-eid="qd_M218" data-cid="<%= obj.cidLast %>" class="shelf-table-chapter blue" target="_blank" title="<%= obj.cnameLast %>"><%= obj.cnameLast %></a>
        <% } %>
        <% } %>
        </span><% if(obj.isVip == 1) { %><a href="//book.qidian.com/subscribe/<%= obj.bid %>" target="_blank" data-eid="qd_M199"><span class="shelf-badge-vip">VIP</span></a><% } %></td>
        <td class="col3 font12"><%= obj.timeStr %></td>
        <td class="col4">
            <% if(!obj.form){ %>
            <a href="/author/<%= obj.authorId %>" target="_blank" title="<%= obj.bAuth %>" class="shelf-table-author font12" data-eid="qd_M200" ><%= obj.bAuth %></a>
            <% } else { %>
            <a title="<%= obj.bAuth %>" class="font12" data-eid="qd_M200" ><%= obj.bAuth %></a>
            <% } %>
        </td>
        <% if(obj.form == 1 && obj.fineLayout == 1){ %>
            <% if(obj.isNewChapter) { %>
                <% if(obj.readCname) { %>
                <td class="col5"><a href="javascript:;" class="spTips font12 yesReadStatus elJingpaiMore" target="_blank" title="读至<%= obj.readCname %>" data-eid="qd_M201" data-cid="<%= obj.readCid %>">有更新</a></td>
                <% } else { %>
                <td class="col5"><a href="javascript:;" class="spTips font12 gray-unread elJingpaiMore" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="<%= obj.readCid %>">尚未阅读</a></td>
                <% } %>
            <% } else { %>
                <td class="col5"><a href="javascript:;" class="spTips font12 noReadStatus elJingpaiMore" target="_blank" title="读至<%= obj.readCname %>" data-eid="qd_M202" data-cid="<%= obj.readCid %>">无更新</a></td>
            <% } %>
        <% } else { %>
            <% if(obj.isNewChapter) { %>
                <% if(obj.readCname) { %>
                <td class="col5"><a href="<%= obj.cLink %>" class="spTips font12 yesReadStatus" target="_blank" title="读至<%= obj.readCname %>" data-eid="qd_M201" data-cid="<%= obj.readCid %>">有更新</a></td>
                <% } else { %>
                <td class="col5"><a href="<%= obj.cLink %>" class="spTips font12 gray-unread" target="_blank" title="尚未阅读" data-eid="qd_M201" data-cid="<%= obj.readCid %>">尚未阅读</a></td>
                <% } %>
            <% } else { %>
                <td class="col5"><a href="<%= obj.cLink %>" class="spTips font12 noReadStatus" target="_blank" title="读至<%= obj.readCname %>" data-eid="qd_M202" data-cid="<%= obj.readCid %>">无更新</a></td>
            <% } %>
        <% } %>
        <% if(obj.form == 1 && obj.fineLayout == 1) { %>
            <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu elJingpaiMore"></a></td>
        <% } else { %>
            <td class="col6 shlef-menu"><a href="javascript:" class="blue iconfont icon-menu"  data-target="forList<%= index %>" data-eid="qd_M203"></a>
                <div id="forList<%= index %>" class="ui-datalist">
                    <div class="ui-datalist-datalist">
                        <% if(obj.isTop){ %>
                        <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="<%= obj.bid %>" data-num="0" data-eid="qd_M204">取消置顶</a>
                        <% } else { %>
                        <a href="javascript:;" class="ui-datalist-option jsTopSet font12" data-id="<%= obj.bid %>" data-num="100">置顶</a>
                        <% } %>
                        <a href="javascript:;" class="ui-datalist-option jsMoveTo font12" data-id="<%= obj.bid %>" data-eid="qd_M205">移动至</a>
                        <% if(obj.form != 1){ %>
                        <% if(obj.isSub) { %>
                        <a href="javascript:;" class="ui-datalist-option jsUnRss font12" data-id="<%= obj.bid %>" data-cbid="<%= obj.cbid %>" data-eid="qd_M206">取消自动订阅</a>
                        <% } else { %>
                        <a href="javascript:;" class="ui-datalist-option jsRss font12" data-id="<%= obj.bid %>" data-cbid="<%= obj.cbid %>">自动订阅</a>
                        <% } %>
                        <% } %>
                        <a href="javascript:;" class="ui-datalist-option jsDel font12" data-id="<%= obj.bid %>" data-eid="qd_M207">删除</a>
                        <b class="arr arr-up">
                            <i class="arr-left"></i>
                            <i class="arr-right"></i>
                        </b>
                    </div>
                </div>
            </td>
        <% } %>
    </tr>
    <% }) %>
    </script>
    <script id="tplDialogGroupMove" type="text/ejs-template">
    <form class="table-x shelf-dialog-move" action="/ajax/BookShelf/Move" method="get" style="width:440px;">
        <div class="table-size">
            <div class="dialog-move">
                <!-- <input type="radio" id="newGroupId" name="groupId" value="" class="dialog-move-add"> -->
                <a href="javascript:;" class="blue" id="elNewGroup"><b>＋新建分组</b></a>
            </div>
            <div class="dialog-move-table">
                <table class="ui-table">
                    <tbody class="bg-white"></tbody>
                </table>
            </div>
            <div class="table-null-x dn">暂无自建分组</div>
            <div class="ui-loading"><i class="ui-loading-icon"></i></div>
            <textarea class="dn">
                <% listInfo.forEach(function(obj, index){ %>
                <tr>
                    <td class="col1"><%= obj.groupName %></td>
                    <td class="col2" width="100" align="right"><%= obj.bookCount %>本</td>
                    <td class="col3" width="20">
                        <input type="radio" name="gid" value="<%= obj.groupId %>" class="dialog-move-select">
                        <span class="icon icon-right"></span>
                    </td>
                </tr>
                <% }) %>
            </textarea>
            <input type="hidden" id="iptIDGroupFrom" name="bids">
            <input type="hidden" name="_csrfToken" value="" id="elMoveCsrf" >
         </div>
    </form>
    </script> --%>
    <script id="tplGroupName" type="text/ejs-template">
    <div class="shelf-dialog-name">
        <h3><label for="iptNameEdit">分组名</label></h3>
        <form action="/ajax/BookShelf/AddGroup" method="post" class="qdp-form">
            <div class="ui-input-x" style="width:400px;">
                <input id="iptNameEdit" maxlength="20" required name="gname">
                <input type="hidden" id="elBids" name="bids">
                <input type="hidden" id="elType" name="type">
                <input type="hidden" name="_csrfToken" value="" id="elCsrfto" >
                <div class="ui-input"></div>
            </div>
            <div class="qdp-form-button">
                <input type="submit" id="groupNameSubmit" class="clip">
            </div>
        </form>
    </div>
    </script>
    <script id="tplEditGroupName" type="text/ejs-template">
    <div class="shelf-dialog-name">
        <h3><label for="iptNameEdit">分组名</label></h3>
        <form action="/ajax/BookShelf/UpdateGroup" method="post" class="qdp-form">
            <input type="hidden" id="iptGroupId" name="gid" value="">
            <input type="hidden" name="_csrfToken" value="" id="elCsrftoken" >
            <div class="ui-input-x" style="width:400px;">
                <input id="iptNameEdit" maxlength="20" required name="gname">
                <div class="ui-input"></div>
            </div>
            <div class="qdp-form-button">
                <input type="submit" id="groupNameSubmit" class="clip">
            </div>
        </form>
    </div>
    </script>
            
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
            g_data.user = {"isLogin":true,"avatar":"//facepic.qidian.com/qd_face/349573/5325460/100","nickName":"木杉书虫","userType":3,"userId":303831931,"guid":"1345404401","tucaoUrl":"https://support.qq.com/embed/app/14308?data=6ce8873dee032a6dbc6aa4bb7c87270e863f8de0c3c02d5211cfa0df40224b607d95de38a56b3e2a8746440d59f281dfb7c266f0708cf35ed9bdab6ed4d8d1d3e2625871c319a8ad567824537c5771ff3db29248945c91ed10cae7febd7ec89c3f44773beef293d0674f822b165ad5521ff6745d2bf898ca791c3c96dec91475e49bf65372add93f943c847d3aabb9b6e7b20a07fcc29cddc4e4df1a9d2193552bcd74641b6fa0bceaac584a5d8190a82e9ef5ce9d9885a91632998ac12b1b6d"};
            // 用作统计PV
            g_data.pageId = 'qd_P_my_bookshelf';
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
                LBF.use(['lib.jQuery', 'monitor.SpeedReport', 'qdp/js/common/page/index.0.74.js', 'qdp/js/shelf/index.0.55.js'], function ($, SpeedReport, pageCommon, page) {
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
