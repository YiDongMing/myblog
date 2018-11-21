package com.ydm.blog.controller;

import com.ydm.blog.entity.vo.ArticleListView;
import com.ydm.blog.service.IArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/article")
public class ArticleController extends BaseController{

    @Autowired
    IArticleService iArticleService;

    @GetMapping("/articleList")
    public String getAllArticleList(HttpServletRequest request, Model model){
        try {
            List<ArticleListView> articleList = null;
            articleList = iArticleService.getArticleList();
            addModelAtt(model, "articleList", articleList);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }

        return "articleListPage";
    }


}
