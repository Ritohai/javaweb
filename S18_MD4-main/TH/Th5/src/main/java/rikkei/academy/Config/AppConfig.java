package rikkei.academy.Config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import rikkei.academy.Service.IstudentService;
import rikkei.academy.Service.StudentServiceIMPL;

@Configuration
@EnableWebMvc
@ComponentScan("rikkei.academy")
public class AppConfig implements WebMvcConfigurer {
    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver resourceView = new InternalResourceViewResolver();
        resourceView.setPrefix("/WEB_INF/views/");
        resourceView.setSuffix(".jsp");
        return resourceView;
    }

    @Bean
    public IstudentService istudentService() {
        return new StudentServiceIMPL();
    }

}
