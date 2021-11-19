package com.lyl.cloudfactory;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.lyl.cloudfactory.dao")
public class CloudfactoryApplication {

    public static void main(String[] args) {
        SpringApplication.run(CloudfactoryApplication.class, args);
    }

}
