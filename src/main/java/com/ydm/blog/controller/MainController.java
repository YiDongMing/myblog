package com.ydm.blog.controller;

import com.ydm.blog.entity.dto.form.AddVisitorMsgForm;
import com.ydm.blog.entity.vo.ArticleListView;
import com.ydm.blog.entity.vo.VisitorMessageView;
import com.ydm.blog.service.IArticleService;
import com.ydm.blog.service.IVisitorService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@Controller
public class MainController extends BaseController{

    private static final Logger logger = LoggerFactory.getLogger(MainController.class);

    @Autowired
    IArticleService iArticleService;
    @Autowired
    IVisitorService iVisitorService;


    @GetMapping("/error")
    public String errorPage(HttpServletRequest request, Model model){
        return "error";
    }

    @PostMapping("/error")
    public String errorPostPage(HttpServletRequest request, Model model){
        return "error";
    }

    @RequestMapping("/")
    public String Toindex(HttpServletRequest request, Model model){
        List<ArticleListView> articleList = null;
        model.addAttribute("name", "ydm");
        try {
            articleList = iArticleService.getArticleListOfIndex();
            addModelAtt(model, "articleList", articleList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/index";
    }

    @GetMapping("/index")
    public String indexPage(HttpServletRequest request, Model model){
        List<ArticleListView> articleList = null;
        try {
            articleList = iArticleService.getArticleListOfIndex();
            addModelAtt(model, "articleList", articleList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "index";
    }

    @GetMapping("/aboutme")
    public String aboutme(HttpServletRequest request,Model model){
        return "aboutme";
    }

    @GetMapping("/visitormessage")
    public String getVisitorMessage(HttpServletRequest request,Model model){
        try {
            List<VisitorMessageView> visitorMessageViewList = iVisitorService.getVisitorMessages();
            addModelAtt(model,"visitorMessageList",visitorMessageViewList);
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return "visitorMessage";
    }

    @ResponseBody
    @PostMapping("/addMessage")
    public Object addVisistorMessage(@Valid AddVisitorMsgForm addVisitorMsgForm,BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return bindingResult.getFieldError().getDefaultMessage();
        }else{
            try {
                iVisitorService.addVisitorMsg(addVisitorMsgForm);
            } catch (Exception e) {
                logger.error(e.getMessage());
            }
            return  responseSimpleOK();
        }
    }
}
