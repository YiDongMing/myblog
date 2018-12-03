package com.ydm.blog.service;

import com.ydm.blog.entity.dto.form.AddVisitorMsgForm;
import com.ydm.blog.entity.vo.VisitorMessageView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface IVisitorService {

    List<VisitorMessageView> getVisitorMessages()throws Exception;

    void addVisitorMsg(AddVisitorMsgForm addVisitorMsgForm)throws Exception;
}
