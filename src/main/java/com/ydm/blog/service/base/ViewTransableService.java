package com.ydm.blog.service.base;

import java.util.List;

public abstract class ViewTransableService<E,V> {

    /**
     * 将数据实体类对象转换为视图类对象
     *
     * @param entityList 数据实体类对象集合
     *
     * @return 视图模型类对象集合
     */
    protected abstract List<V> transEntityToView(List<E> entityList);
}
