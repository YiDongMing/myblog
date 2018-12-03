package com.ydm.blog.entity.dto.form;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class AddArticleForm {


    @NotEmpty(message="标题不能为空！")
    private String title;

    @NotEmpty
    private String summary;
    @NotEmpty
    private String articleContent;

    @NotEmpty
    private String articleHtmlContet;

}
