<!-- 模板页面方便创建新页面的时候可以直接复制公共的代码 -->
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
        <div class="">
            <form id="inputForm" name="inputForm" method="post">
                <input name="title" type="text" id = "title"placeholder="输入文章标题">
                <input name="summary" id="summary" placeholder="摘要" type="text">
                <input name="articleContent" id="articleContent" type="hidden">
                <input name="articleHtmlContet" id="articleHtmlContet" type="hidden">

            </form>
        </div>
        <div id="content-editormd" >
            <textarea style="display:none;" id="content-editormd-markdown-doc" name="content-editormd-markdown-doc"></textarea>
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
<script src="/js/vendor/editor/editormd.min.js"></script>
<link rel="stylesheet" href="/js/vendor/jquery/validationEngine.jquery.css">
<script src="/js/vendor/jquery/jquery.validationEngine-zh_CN.js"></script>
<script src="/js/vendor/jquery/jquery.validationEngine.js"></script>
<script type="text/javascript">
    var myeditor;
    $(function() {
        myeditor = editormd("content-editormd", {
            width   : "100%",
            height  : 1000,
            syncScrolling : "single",
            path    : "/js/vendor/editor/lib/",
            saveHTMLToTextarea : true, // 保存HTML到Textarea
            imageUpload : true,
            imageFormats: ["jpg","jpeg","gif","png","bmp","webp"],
            imageUploadURL: "/articleImages",
        });
    });
    $().ready(function() {
        dialog.DOM.wrap.on('ok', function (e) {
            e.preventDefault();
            $("#inputForm").submit();
        });
        $("#inputForm").validationEngine('attach',{
            autoHidePrompt: true,
            showOneMessage: true,
            binded:false,
            overflownDIV: '#divOverflown',
            promptPosition: 'bottomLeft:0,-5',
            //promptPosition:'centerRight: 0, -4',
            scroll: false ,
            'custom_error_messages': {
                'required': {
                    'message': '* 该项必须填写！'
                }},
            onValidationComplete:function (form,status) {
                if(status){
                    var formdata = $("#inputForm").serializeArray();
                    $.ajax({
                        url:"",
                        type:"post",
                        data:formdata,
                        success:function (data) {
                            alert(data);
                        }
                    });
                }
            }
        });
    });
</script>
</html>