package com.insat;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;


@SpringBootApplication
public class HardwareApplication extends SpringBootServletInitializer{

	
	 @Override
	  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(HardwareApplication.class);
	  }

	  public static void main(String[] args) {
	    SpringApplication.run(HardwareApplication.class, args);
	  }
}