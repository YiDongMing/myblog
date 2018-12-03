package com.ydm.blog.mapper;

import com.ydm.blog.entity.Article;
import com.ydm.blog.entity.VisitorMessage;
import com.ydm.blog.framework.mapper.IMyMapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface VisitorMessageMapper extends IMyMapper<VisitorMessage> {


    @Select({
            "SELECT id,info,name,area,create_time as createTime",
            "FROM",
            "visitor_message",
            "ORDER BY createTime DESC"
    })
    List<VisitorMessage> getVisitorMessages();
}