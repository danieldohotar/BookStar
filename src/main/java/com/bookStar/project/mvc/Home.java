package com.bookStar.project.mvc;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/books")
public class Home {

    @RequestMapping("/")
    public ModelAndView all() {
        ModelAndView modelAndView = new ModelAndView("books/home");
        return modelAndView;
    }
}


