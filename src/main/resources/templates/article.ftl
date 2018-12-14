<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>易小侠的个人博客</title>
    <link rel="stylesheet" href="/js/vendor/editor/css/editormd.css"/>
</head>
<body>
<#include "public/nav.ftl">
<article>
    <div class="l_box f_l">
        <div class="a_info">
            <h2 class="a_title">${article.title}</h2>
            <p class="a_box">
                <span class="a_time">发布时间: ${article.createtime?string('yyyy-MM-dd HH:mm:ss')}</span>
                <span>作者：易小侠</span>
            </p>
            <div class="content">${article.htmlContent}</div>
            <p style="color: red;">版权声明：本文版权归本网站作者所有，欢迎转载。但未经作者同意必须保留此段声明，且在文章页面明显位置给出原文连接，否则保留追究法律责任的权利。</p>
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