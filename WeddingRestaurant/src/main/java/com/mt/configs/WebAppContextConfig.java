/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.configs;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.mt.formatters.BranchFormatter;
import com.mt.formatters.MenusFormatter;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.format.FormatterRegistry;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
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
    "com.mt.repository",
    "com.mt.component"
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

    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addFormatter(new MenusFormatter());
        registry.addFormatter(new BranchFormatter());
    }

    @Bean
    public MessageSource messageSource() {
        ResourceBundleMessageSource m = new ResourceBundleMessageSource();
        m.addBasenames("messages");

        return m;
    }
    
    @Bean(name = "validator")
    public LocalValidatorFactoryBean validator() {
        LocalValidatorFactoryBean bean
                = new LocalValidatorFactoryBean();
        bean.setValidationMessageSource(messageSource());
        return bean;
    }

    @Override
    public Validator getValidator() {
        return validator();
    }
    
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
        registry.addResourceHandler("/scss/**")
                .addResourceLocations("/resources/scss/"); //vị trí thật sự
        registry.addResourceHandler("/scss/component**")
                .addResourceLocations("/resources/scss/component"); //vị trí thật sự
        registry.addResourceHandler("/scss/layouts**")
                .addResourceLocations("/resources/scss/layouts"); //vị trí thật sự
        registry.addResourceHandler("/scss/pages**")
                .addResourceLocations("/resources/scss/pages"); //vị trí thật sự
        registry.addResourceHandler("/scss/utilities**")
                .addResourceLocations("/resources/scss/utilities"); //vị trí thật sự
        registry.addResourceHandler("/scss/variables**")
                .addResourceLocations("/resources/scss/variables"); //vị trí thật sự
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
