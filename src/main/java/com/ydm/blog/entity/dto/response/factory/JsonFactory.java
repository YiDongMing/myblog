package com.ydm.blog.entity.dto.response.factory;

import com.ydm.blog.entity.dto.response.RedirectResponse;
import com.ydm.blog.entity.dto.response.SimpleResponse;

public interface JsonFactory {
    /**
            * 获取简单响应实体
   *
           * @return 响应实体
   */
    SimpleResponse createSimpleResponse();

    /**
     * 获取简单错误实体
     *
     * @return 响应实体
     */
    SimpleResponse createtSimpleErrorResponse();

    /**
     * 获取简单响应实体
     *
     * @param resultCode 结果状态码
     * @param hasError   是否含有错误
     *
     * @return 响应实体
     */
    SimpleResponse createSimpleResponse(int resultCode, boolean hasError);

    /**
     * 获取重定向响应实体
     *
     * @param resultCode  结果状态码
     * @param hasError    是否含有错误
     * @param redirectURL 重定向 url
     *
     * @return
     */
    RedirectResponse createRedirectResponse(int resultCode, boolean hasError, String redirectURL);
}
