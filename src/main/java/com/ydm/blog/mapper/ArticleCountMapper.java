package com.ydm.blog.mapper;

import com.ydm.blog.entity.ArticleCount;
import com.ydm.blog.framework.mapper.IMyMapper;
import com.ydm.blog.mapper.provider.AriticleSqlProvider;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;

public interface ArticleCountMapper extends IMyMapper<ArticleCount>{

    @UpdateProvider(type = AriticleSqlProvider.class,method = "updateCount")
    int updateCount(Integer id);
}
