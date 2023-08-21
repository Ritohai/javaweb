package rikkei.academy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthController {
    @GetMapping("/")
    public ModelAndView home(){
        return new ModelAndView("/home");
    }
    @GetMapping("/user")
    public ModelAndView user(){
        return new ModelAndView("/user");
    }
    @GetMapping("/admin")
    public ModelAndView admin(){
        return new ModelAndView("/admin");
    }
}
