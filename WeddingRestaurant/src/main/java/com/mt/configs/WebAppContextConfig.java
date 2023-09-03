/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.configs;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/**
 *
 * @author minh tai
 */
@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages = {
    "com.mt.controllers",
    "com.mt.service",
    "com.mt.repository"
})
public class WebAppContextConfig implements WebMvcConfigurer{

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }
    
//    @Bean
//    public InternalResourceViewResolver internalResourceViewResolver(){
//      
//        InternalResourceViewResolver r = new InternalResourceViewResolver();
//        r.setViewClass(JstlView.class);
//        r.setPrefix("/WEB-INF/pages/");
//        r.setSuffix(".jsp");
//
//        return r;
//    }

    @Bean
    public CommonsMultipartResolver multipartResolver(){
         CommonsMultipartResolver resolver = new CommonsMultipartResolver();
         resolver.setDefaultEncoding("UTF-8");
         return resolver;
    }
    
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/css/**")
                .addResourceLocations("/resources/css/"); //vị trí thật sự
        
        registry.addResourceHandler("/js/**")
                .addResourceLocations("/resources/js/");
        
        registry.addResourceHandler("/lib/animate**")
                .addResourceLocations("/resources/lib/animate");
        
        registry.addResourceHandler("/lib/counterup**")
                .addResourceLocations("/resources/lib/counterup");
        
        registry.addResourceHandler("/lib/easing**")
                .addResourceLocations("/resources/lib/easing");
        
        registry.addResourceHandler("/lib/isotope**")
                .addResourceLocations("/resources/lib/isotope");
        
        registry.addResourceHandler("/img/**")
                .addResourceLocations("/resources/img/"); //vị trí thật sự
    }
    
    @Bean
    public Cloudinary cloudinary() {
        Cloudinary cloudinary
                = new Cloudinary(ObjectUtils.asMap(
                        "cloud_name", "dl3hvap4a",
                        "api_key", "834354428788744",
                        "api_secret", "lv7zI6VPru0YhHwUPQsru318SOE",
                        "secure", true));
        return cloudinary;
    }
}
