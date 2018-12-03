<!-- 模板页面方便创建新页面的时候可以直接复制公共的代码 -->
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>易小侠的个人博客</title>
</head>
<body>
<#include "public/nav.ftl">
<article>
    <div class="l_box f_l">
        <div class="top_m">
            <span>
                留言板:
            </span>

        </div>
        <div class="message">
            <ul>
                <#if visitorMessageList??>
                    <#if (visitorMessageList?size>0)>
                        <#list visitorMessageList as list>
                            <li class="box">
                                <div class="box_t" >时间：${list.createTime!""}  &nbsp;&nbsp;&nbsp; 来自：${list.area!""}&nbsp;&nbsp;${list.name!"网友"}   </div>
                                <div class="box_m"> ${list.info!""}</div>
                            </li>
                        </#list>
                    </#if>
                </#if>
            </ul>
        </div>
        <div class="comment">
            <div class="comment_title">
                <span>留言板:</span>
            </div>
            <form id="commentForm" name="commentForm">
            <div class="comment_name">
                <span>您的名字</span>
                <input type="text" id ="name" name="name" maxlength="30">
            </div>
            <div class="comment_text">
                 <textarea id="info" rows="6" name="info" cols="90" maxlength="200"></textarea>
            </div>
            <div class="comment_btn">
                <input type="button" id="saveComment"  value="发表留言"/>
            </div>
                <input type="hidden" id="area" name="area">
            </form>
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
<script type="text/javascript" src="/js/vendor/jquery/jquery-1.11.1.min.js"></script>
<script src="http://pv.sohu.com/cityjson?ie=utf-8"></script>
<script type="text/javascript">
    var area=returnCitySN["cname"];
    $(function () {
        $("#area").val(area);
        $("#saveComment").bind("click", function () {
            $.ajax({
                type: "POST",
                dataType: "json",
                url: "/addMessage",
                data: $('#commentForm').serialize(),
                success: function (result) {
                    if (!(result.hasError)) {
                        alert("发表成功");
                        toLocation("/visitormessage");
                    } else {
                        alert("失败1"+result);
                    }
                },
                error: function () {
                    alert("失败");
                }
            });
        });
    });
</script>
</html>