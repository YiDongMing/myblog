package com.ydm.blog.mapper;

import com.ydm.blog.entity.Article;
import com.ydm.blog.framework.mapper.IMyMapper;
import com.ydm.blog.mapper.provider.AriticleSqlProvider;
import org.apache.ibatis.annotations.UpdateProvider;

import java.util.List;

public interface ArticleMapper extends IMyMapper<Article>{
    int insert(Article record);

    int insertSelective(Article record);

    List<Article> getArticleList() throws Exception;

    List<Article> getArticleListOfIndex() throws Exception;

    @UpdateProvider(type = AriticleSqlProvider.class,method = "updateCount")
    int updateCount(Integer id);

}