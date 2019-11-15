package com.bookStar.project.mvc;

import com.bookStar.project.bookstar.domain.Books;
import com.bookStar.project.bookstar.service.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Collection;

@Controller
public class SearchController {

    @Autowired
    private BooksService booksService;


    @RequestMapping("/search/{title}")
    public ModelAndView search(@PathVariable(value="title", required = false) String title){
        ModelAndView modelAndView = new ModelAndView("books/search");
        Collection<Books> books = booksService.search(title);
        modelAndView.addObject("books", books);
        return modelAndView;
    }


}
