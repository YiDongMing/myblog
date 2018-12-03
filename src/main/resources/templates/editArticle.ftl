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
    <div class="l_box f_l" style="width: 1000px;">
        <div class="">
            <form   id="inputForm" name="inputForm">
                <input name="title" class="textTitle" type="text" id = "title" placeholder="输入文章标题">
                <input name="summary" class="textTitle" id="summary" placeholder="摘要" type="text">
                <input name="articleContent" id="articleContent" type="hidden">
                <input name="articleHtmlContet" id="articleHtmlContet" type="hidden">
            </form>
        </div>
        <div id="content-editormd" >
            <textarea style="display:none;" id="content-editormd-markdown-doc" name="content-editormd-markdown-doc"></textarea>
        </div>
        <input type="button" class="save_btn" id = "save" onclick="submitArticle()" value="保存">
    </div>
</article>
<#include "public/footer.ftl">
</body>
<script type="text/javascript" src="/js/vendor/jquery/jquery-1.11.1.min.js"></script>
<script src="/js/vendor/editor/editormd.min.js"></script>
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
    function submitArticle() {
        /* markdown 格式文本 */
        $("#articleContent").val(myeditor.getMarkdown());
        /* html 格式内容 */
        $("#articleHtmlContet").val($(".markdown-body").prop('outerHTML'));
    }
    $(function () {
        $("#save").bind("click", function () {
            $.ajax({
                type: "POST",
                dataType: "json",
                url: "/addArticle",
                data: $('#inputForm').serialize(),
                success: function (result) {
                    if (!(result.hasError)) {
                        alert("成功");
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