package io.khasang.auction.config;

import io.khasang.auction.model.Message;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {

    @Bean
    public Message message() {
        return new Message("bean from config class");
    }
}
