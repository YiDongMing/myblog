<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>易小侠的个人博客</title>
    <script type="text/javascript" src="/js/vendor/jquery/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="/js/sliders.js"></script>
</head>
<body>
<#include "public/nav.ftl">
    <article>
        <div class="l_box f_l">
            <div class="banner">
                <div id="slide-holder">
                    <div id="slide-runner"> <a href="/article/2" target="_blank"><img id="slide-img-1" src="images/a1.jpg"  alt="" /></a> <a href="/article/6" target="_blank"><img id="slide-img-2" src="images/a2.jpg"  alt="" /></a> <a href="/article/8" target="_blank"><img id="slide-img-3" src="images/a3.jpg"  alt="" /></a> <a href="/article/9" target="_blank"><img id="slide-img-4" src="images/a4.jpg"  alt="" /></a>
                        <div id="slide-controls">
                            <p id="slide-client" class="text"><strong></strong><span></span></p>
                            <p id="slide-desc" class="text"></p>
                            <p id="slide-nav"></p>
                        </div>
                    </div>
                </div>
                <script>
                    if(!window.slider) {
                        var slider={};
                    }

                    slider.data= [
                        {
                            "id":"slide-img-1", // 与slide-runner中的img标签id对应
                            "client":"设计模式",
                            "desc":"java建造者模式--给一个你一看就懂的建造者模式" //这里修改描述
                        },
                        {
                            "id":"slide-img-2",
                            "client":"WdatePicker插件",
                            "desc":"使用WdatePicker插件如何设定2个时间在都在同一天"
                        },
                        {
                            "id":"slide-img-3",
                            "client":"java",
                            "desc":"java内存分配看书笔记分享"
                        },
                        {
                            "id":"slide-img-4",
                            "client":"设计模式",
                            "desc":"java单例模式-面试出现概率最大的模式"
                        }
                    ];

                </script>
            </div>
            <div class="blogs">
            <#if articleList??>
                <#if (articleList?size>0)>
                    <#list articleList as post>
                        <li> <span class="blogpic"><a href="/article/${post.id!""}"><img src="${post.titleImg!""}"></a></span>
                            <h3 class="blogtitle"><a href="/article/${post.id!""}">${post.title!""}</a></h3>
                            <div class="bloginfo">
                                <p>${post.summary}</p>
                            </div>
                            <div class="autor"><span class="lm"><a href="/" title="易小侠" target="_blank" class="classname">易小侠</a></span><span class="dtime">${post.createtime}</span><span class="viewnum">浏览（${post.count!""}）</span></div>
                        </li>
                    </#list>
                </#if>
            </#if>
            </div>
        </div>

        <div class="r_box f_r">
            <div class="sidebar">
                <div class="about">
                    <div class="avatar"> <img src="/images/avatar.jpg" alt=""> </div>
                    <p class="abname">易小侠</p>
                    <p class="abposition">java开发工程师</p>
                    <div class="abtext"> 15年毕业。坐标广州。一直在java领域摸爬滚打 </div>
                </div>
            </div>
            <div class="tit01">
                <h3>关注我</h3>
                <div class="gzwm">
                    <ul>
                        <li><a class="csdn" href="https://blog.csdn.net/u010102390" target="_blank">CSDN博客</a></li>
                        <li><a class="rss" href="https://github.com/YiDongMing" target="_blank">GitHub</a></li>
                        <li><a class="wx" href="mailto:978325568@qq.com">邮箱</a></li>
                    </ul>
                </div>
            </div>
            <div class="links">
                <h2 class="hometitle">友情链接</h2>
                <ul>
                    <li><a href="http://calvin1978.blogcn.com/" title="江南白衣博客">江南白衣博客</a></li>
                    <li><a href="http://ifeve.com/" title="并发编程网">并发编程网</a></li>
                </ul>
            </div>
        </div>
    </article>
<#include "public/footer.ftl">
</body>
</html>