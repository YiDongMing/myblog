package com.ydm.blog.service;

import com.ydm.blog.entity.Article;
import com.ydm.blog.entity.vo.ArticleListView;

import java.util.List;

public interface IArticleService {

    List<ArticleListView> getArticleList() throws Exception;

    Article getArticleById(Integer id) throws Exception;
}
