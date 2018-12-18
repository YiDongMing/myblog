package com.ydm.blog.service.impl;

import com.ydm.blog.entity.Article;
import com.ydm.blog.entity.dto.form.AddArticleForm;
import com.ydm.blog.entity.vo.ArticleListView;
import com.ydm.blog.mapper.ArticleMapper;
import com.ydm.blog.service.IArticleService;
import com.ydm.blog.service.base.ViewTransableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Service
public class ArticleServiceImpl extends ViewTransableService implements IArticleService{

    @Autowired
    ArticleMapper articleMapper;

    @Override
    public List<ArticleListView> getArticleList() throws Exception{
        List<Article> articleList = articleMapper.getArticleList();
        List<ArticleListView> articleListViews = transEntityToView(articleList);
        return articleListViews;
    }

    @Override
    public List<ArticleListView> getArticleListOfIndex() throws Exception {
        List<Article> articleList = articleMapper.getArticleListOfIndex();
        List<ArticleListView> articleListViews = transEntityToView(articleList);
        return articleListViews;
    }

    @Override
    public Article getArticleById(Integer id) throws Exception {
        Article articleList = articleMapper.selectByPrimaryKey(id);
        return articleList;
    }

    @Override
    @Transactional
    public void addArticle(AddArticleForm addArticleForm) throws Exception {
        Article article = new Article();
        article.setTitle(addArticleForm.getTitle());
        article.setSummary(addArticleForm.getSummary());
        article.setContent(addArticleForm.getArticleContent());
        article.setHtmlContent(addArticleForm.getArticleHtmlContet());
        articleMapper.insertSelective(article);
    }

    @Override
    protected List transEntityToView(List entityList) {
        List<ArticleListView> articleListViewList = new ArrayList<>();
        Iterator it = entityList.iterator();
        while(it.hasNext()){
            Article article = (Article) it.next();
            ArticleListView articleListView = new ArticleListView(article);
            articleListViewList.add(articleListView);
        }
        return articleListViewList;
    }

    @Override
    public int updateCount(Integer id) throws Exception {
        return articleMapper.updateCount(id);
    }
}
