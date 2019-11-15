package com.bookStar.project.mvc;


import com.bookStar.project.bookstar.domain.Contact;
import com.bookStar.project.bookstar.service.ContactService;
import com.bookStar.project.bookstar.service.ValidationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.validation.Valid;
import java.util.LinkedList;
import java.util.List;


@Controller
@RequestMapping("/contact")
public class ContactController {

    private static Logger LOGGER = LoggerFactory.getLogger("ContactController");


    @Autowired
    private ContactService contactService;


    @RequestMapping("")
    public ModelAndView listAll() {
        ModelAndView modelAndView = new ModelAndView("/contact");
        return modelAndView;
    }




    @RequestMapping("/save")
    public ModelAndView save(@Valid Contact contact,
                             BindingResult bindingResult) {

        ModelAndView modelAndView = new ModelAndView();
        if (!bindingResult.hasErrors()) {
            try {
                contactService.save(contact);
                RedirectView redirectView = new RedirectView("/contact");
                modelAndView.setView(redirectView);
            } catch (ValidationException ex) {

                LOGGER.error("validation error", ex);

                List<String> errors = new LinkedList<>();
                errors.add(ex.getMessage());
                modelAndView = new ModelAndView("contact/add");
                modelAndView.addObject("errors", errors);
                modelAndView.addObject("contact", contact);
            }

        } else {
            List<String> errors = new LinkedList<>();

            for (FieldError error :
                    bindingResult.getFieldErrors()) {
                errors.add(error.getField() + ":" + error.getCode());
            }

            modelAndView = new ModelAndView("contact/add");
            modelAndView.addObject("errors", errors);
            modelAndView.addObject("contact", contact);
        }

        return modelAndView;
    }
    @RequestMapping("/add")
    public ModelAndView add() {
        ModelAndView modelAndView = new ModelAndView("contact/add");
        modelAndView.addObject("contact", new Contact ());
        return modelAndView;
    }
}
