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
articleList
<div class="col-md-8">
    <ul class="list-unstyled">
            <#if articleList??>
                <#if (articleList?size>0)>
                    <#list articleList as post>
                        <div class="card mt-3">
                            <div class="card-body">
                                <a href="/blog/${post.id!""}" class="text-dark" target="_blank"><h4
                                        class="card-title font-weight-bold">${post.title!""}</h4>
                                </a>
                                <p class="card-text">${post.summary}</p>
                                <p class="text-right text-secondary">${post.dateTime!""}</p>
                            </div>
                        </div>
                    </#list>
                <#else>
                    <div class="card border-danger mt-3 mb-3">
                        <div class="card-body text-danger">
                            <h2 class="card-title"><i class="fa fa-warning fa-1x"></i> 抱歉，没有找到相关内容</h2>
                            <p class="card-text">试试其他关键字？</p>
                        </div>
                    </div>
                </#if>
            </#if>
    </ul>
</div>
<input type = "text" id=""/>
</body>