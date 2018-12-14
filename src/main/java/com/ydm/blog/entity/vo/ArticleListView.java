package com.ydm.blog.entity.vo;

import com.ydm.blog.entity.Article;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang3.time.DateFormatUtils;

@Getter
@Setter
@AllArgsConstructor
public class ArticleListView {

    private Integer id;
    private String title;
    private String titleImg;
    private String summary;
    private String createtime;
    private Integer count;

    public ArticleListView(Article article){
        id = article.getId();
        title = article.getTitle();
        titleImg = article.getTitleImg();
        summary = article.getSummary();
        createtime = DateFormatUtils.format(article.getCreatetime(), "yyyy-MM-dd HH:mm");
    }

}
