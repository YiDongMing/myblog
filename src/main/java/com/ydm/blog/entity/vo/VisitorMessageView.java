package com.ydm.blog.entity.vo;

import com.ydm.blog.entity.VisitorMessage;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang3.time.DateFormatUtils;

@Getter
@Setter
@AllArgsConstructor
public class VisitorMessageView {

    private Integer id;
    private String info;
    private String name;
    private String area;
    private String createTime;

    public VisitorMessageView(VisitorMessage visitorMessage) {
        id = visitorMessage.getId();
        info = visitorMessage.getInfo();
        name = visitorMessage.getName();
        createTime = DateFormatUtils.format(visitorMessage.getCreateTime(), "yyyy-MM-dd HH:mm");
        area = visitorMessage.getArea();
    }
}
