package com.ydm.blog.service.impl;

import com.ydm.blog.entity.VisitorMessage;
import com.ydm.blog.entity.dto.form.AddVisitorMsgForm;
import com.ydm.blog.entity.vo.VisitorMessageView;
import com.ydm.blog.mapper.VisitorMessageMapper;
import com.ydm.blog.service.IVisitorService;
import com.ydm.blog.service.base.ViewTransableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Service
public class VisitorServiceImpl extends ViewTransableService implements IVisitorService {

    @Autowired
    VisitorMessageMapper visitorMessageMapper;

    @Override
    public List<VisitorMessageView> getVisitorMessages() throws Exception {
        List<VisitorMessage> visitorMessageList = visitorMessageMapper.getVisitorMessages();
        List<VisitorMessageView> visitorMessageViews = transEntityToView(visitorMessageList);
        return visitorMessageViews;
    }

    @Override
    @Transactional
    public void addVisitorMsg(AddVisitorMsgForm addVisitorMsgForm) throws Exception {
        VisitorMessage visitorMessage = new VisitorMessage();
        visitorMessage.setArea(addVisitorMsgForm.getArea());
        visitorMessage.setInfo(addVisitorMsgForm.getInfo());
        visitorMessage.setName(addVisitorMsgForm.getName());
        visitorMessageMapper.insertSelective(visitorMessage);
    }

    @Override
    protected List transEntityToView(List entityList) {
        List<VisitorMessageView> visitorMessageViews = new ArrayList<>();
        Iterator it = entityList.iterator();
        while(it.hasNext()){
            VisitorMessage visitorMessage = (VisitorMessage) it.next();
            VisitorMessageView visitorMessageView = new VisitorMessageView(visitorMessage);
            visitorMessageViews.add(visitorMessageView);
        }
        return visitorMessageViews;
    }
}
