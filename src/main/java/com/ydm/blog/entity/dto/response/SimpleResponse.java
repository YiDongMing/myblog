package com.ydm.blog.entity.dto.response;

public class SimpleResponse extends GlobalResponse{

    public SimpleResponse(int resultCode,boolean hasError){
        super(resultCode,hasError);
    }
}
