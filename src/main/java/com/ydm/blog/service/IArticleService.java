package com.ydm.blog.service;

import com.ydm.blog.entity.Article;
import com.ydm.blog.entity.dto.form.AddArticleForm;
import com.ydm.blog.entity.vo.ArticleListView;

import java.util.List;

public interface IArticleService {

    List<ArticleListView> getArticleList() throws Exception;

    List<ArticleListView> getArticleListOfIndex() throws Exception;

    Article getArticleById(Integer id) throws Exception;

    void addArticle(AddArticleForm addArticleForm) throws Exception;

    int updateCount(Integer id)throws Exception;
}
