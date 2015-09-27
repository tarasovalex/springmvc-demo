package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class HelloController {
    @RequestMapping(method = RequestMethod.GET)
    public String welcomeTitle(ModelMap model) {
        model.addAttribute("message", "Spring MVC DEMO, hello from ITISSUE");

        return "hello";
    }

    @RequestMapping(value = "/welcome/{name:.+}", method = RequestMethod.GET)
    public ModelAndView welcome(@PathVariable("name") String name) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("hello");
        modelAndView.addObject("welcomemsg", name);

        return modelAndView;
    }
}