package com.ydm.blog.config;


import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

@Configuration
@ConfigurationProperties(prefix = "project")
@PropertySource("classpath:/remote.properties")
@Data
@Component
@Setter
@Getter
public class RemoteProperties {
    private String imagesPath;
}
