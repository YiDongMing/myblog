package com.ydm.blog.entity.dto.response;


import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class GlobalResponse {

    protected int resultCode;
    protected boolean hasError;

    public GlobalResponse() {
    }

    public GlobalResponse(int resultCode, boolean hasError) {
        this.resultCode = resultCode;
        this.hasError = hasError;
    }
}
