<link href="/css/base.css" rel="stylesheet">
<link href="/css/index.css" rel="stylesheet">
<link href="/css/m.css" rel="stylesheet">
<script>
    window.onload = function ()
    {
        var oH2 = document.getElementsByTagName("h2")[0];
        var oUl = document.getElementsByTagName("ul")[0];
        oH2.onclick = function ()
        {
            var style = oUl.style;
            style.display = style.display == "block" ? "none" : "block";
            oH2.className = style.display == "block" ? "open" : ""
        }
    }
</script>
<header>
<div class="tophead">
<div class="logo"><a href="/">易小侠个人博客</a></div>
<div class="topnav" id="topnav">
<nav>
    <ul>
        <li><a href="/index">首页</a></li>
        <li><a href="/aboutme">关于我</a></li>
        <li><a href="/articleList">全部文章</a></li>
        <li><a href="gbook.html">留言板</a></li>
    </ul>
</nav>
</div>
</div>
</header>
<script src="/js/nav.js"></script>