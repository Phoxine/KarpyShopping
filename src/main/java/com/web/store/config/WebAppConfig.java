package com.web.store.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.web.store.interceptor.LoginCheckingInterceptor;
import com.web.store.interceptor.MemberLoginCheckingInterceptor;

@Configuration
@EnableWebMvc
@ComponentScan("com.web.store")
public class WebAppConfig extends WebMvcConfigurerAdapter {
	@Bean
	public ViewResolver internalResourceViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}

	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource resource = new ResourceBundleMessageSource();
		resource.setBasename("messages");
		return resource;
	}

	@Override
	// 應用系統必須透過ResourceHandlerRegistry的輔助，以便處理靜態檔案：
	// 只要請求路徑是以/css/開頭的任何請求，都轉到/WEB-INF/views/css/去尋找
	// 只要請求路徑是以/images/開頭的任何請求，都轉到/WEB-INF/views/images/去尋找
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/views/css/");
		registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/views/images/");
	}

	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}

	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("UTF-8");
		resolver.setMaxUploadSize(81920000); // 78.12MB
		return resolver;
	}

	@Bean
	LoginCheckingInterceptor getLoginCheckingFilter() {
		return new LoginCheckingInterceptor();
	}

	@Bean
	MemberLoginCheckingInterceptor getMemberLoginCheckingFilter() {
		return new MemberLoginCheckingInterceptor();
	}

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(getLoginCheckingFilter()).addPathPatterns("/managers", "/manager/change","/admin");
		registry.addInterceptor(getMemberLoginCheckingFilter()).addPathPatterns("/CreditCardList", "/membercentre",
				"/member/change", "/cartConfirm", "/cart", "/uploadImage","/updateTaxId","/chat");

	}

}
