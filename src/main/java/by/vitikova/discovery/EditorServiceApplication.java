package by.vitikova.discovery;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients
@SpringBootApplication
public class EditorServiceApplication {
    public static void main(String[] args) {
        SpringApplication.run(EditorServiceApplication.class, args);
    }
}