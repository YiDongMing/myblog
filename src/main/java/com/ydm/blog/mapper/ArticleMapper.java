package com.ydm.blog.mapper;

import com.ydm.blog.entity.Article;
import com.ydm.blog.framework.mapper.IMyMapper;

import java.util.List;

public interface ArticleMapper extends IMyMapper<Article>{
    int insert(Article record);

    int insertSelective(Article record);

    List<Article> getArticleList() throws Exception;

    List<Article> getArticleListOfIndex() throws Exception;

}