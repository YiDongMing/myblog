package com.ydm.blog.mapper.provider;

import com.ydm.blog.entity.ArticleCount;
import org.apache.ibatis.jdbc.SQL;

public class AriticleSqlProvider {
    public String updateCount(Integer id){
        return new SQL(){{
            UPDATE("article_count");
            SET("count = count +1 ");
            WHERE("article_id = #{id}");
        }}.toString();
    }
}
