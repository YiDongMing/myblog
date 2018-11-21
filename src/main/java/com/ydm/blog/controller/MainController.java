package com.ydm.blog.controller;

import com.ydm.blog.entity.vo.ArticleListView;
import com.ydm.blog.service.IArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class MainController extends BaseController{

    @Autowired
    IArticleService iArticleService;

    @GetMapping("/error")
    public String errorPage(HttpServletRequest request, Model model){
        return "error";
    }
    @GetMapping("/index")
    public String indexPage(HttpServletRequest request, Model model){
        List<ArticleListView> articleList = null;
        try {
            articleList = iArticleService.getArticleList();
            addModelAtt(model, "articleList", articleList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "index";
    }
}
