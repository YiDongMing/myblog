package com.ydm.blog;

import tk.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@MapperScan(basePackages = {"com.ydm.blog.mapper"})
public class BlogApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(BlogApplication.class, args);
		System.out.println("系统启动成功！");
	}
	@Override//为了打包springboot项目
	protected SpringApplicationBuilder configure(
			SpringApplicationBuilder builder) {
		return builder.sources(this.getClass());
	}
}
