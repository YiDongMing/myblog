package com.ydm.blog.controller;

import com.alibaba.fastjson.JSONObject;
import com.ydm.blog.config.RemoteProperties;
import com.ydm.blog.entity.Article;
import com.ydm.blog.entity.dto.form.AddArticleForm;
import com.ydm.blog.entity.vo.ArticleListView;
import com.ydm.blog.service.IArticleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class ArticleController extends BaseController{
    private static final Logger logger = LoggerFactory.getLogger(ArticleController.class);

    @Autowired
    IArticleService iArticleService;
    @Autowired
    RemoteProperties remoteProperties;

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

    @GetMapping("/article/{id}")
    public String articlePage(HttpServletRequest request, Model model, @PathVariable Integer id)throws Exception{
        Article article = new Article();
        article = iArticleService.getArticleById(id);
        addModelAtt(model,"article",article);
        return "article";
    }

    @GetMapping("/editOneArticle")
    public String editArticle(HttpServletRequest request, Model model){
        return "editArticle";
    }

    /**
     * 图片上传的方法
     * @param request
     * @param file
     * @return
     */
    @ResponseBody
    @PostMapping("/articleImages")
    public String getArticleImages(HttpServletRequest request,@RequestParam(value = "editormd-image-file",required = false) MultipartFile file){
        JSONObject res = new JSONObject();
        String uploadPath = remoteProperties.getImagesPath();

        try {
            file.transferTo(new File(uploadPath+file.getOriginalFilename()));
            res.put("success", 1);
            res.put("message", "上传成功");
            res.put("url","/images/uplocadimages/"+file.getOriginalFilename());
        } catch (IOException e) {
            logger.error("上传图片异常", e.getMessage());
            res.put("success", 0);
            res.put("message", "上传异常");
        }
        return res.toString();
    }

    @ResponseBody
    @PostMapping("/addArticle")
    public Object addArticle(@Valid AddArticleForm addArticleForm,BindingResult bindingResult) throws Exception {
        if(bindingResult.hasErrors()){
            return bindingResult.getFieldError().getDefaultMessage();
        }else{
            iArticleService.addArticle(addArticleForm);
            return responseSimpleOK();
        }
    }


}
