package com.java.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

@Configuration 
public class FileUrl_config {
	
	//이미지나 동영상, 파일 업로드 관련해서 다른 폴더를 연결할 때 설정
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/upload/**")  //url이 들어오면
		.addResourceLocations("file:///c:/upload/"); //여기에서 찾으라는 뜻
	
		registry.addResourceHandler("/uploadImages/**")  //url이 들어오면
		.addResourceLocations("file:///c:/images/"); //여기에서 찾으라는 뜻
		
	}
}
