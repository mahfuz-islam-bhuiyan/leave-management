package com.gw2.controller;

import com.gw2.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

/**
 * Created by mahfuz on 1/13/16.
 */

@Controller
public class LoginController {

    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model) {

        model.addAttribute("user", new User());
        logger.error("login page");

        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@Valid @ModelAttribute("user") User user, BindingResult result) {

        System.out.println("username " + user.getUsername());
//        System.out.println("result has errors: " + result.hasErrors());

//        System.out.println("Minutes updated: " + goal.getMinutes());

//        if (result.hasErrors()) {
//            return "addGoal";
//        }

        return "redirect:login";
    }

    @RequestMapping(value = "/loginFailed", method = RequestMethod.GET)
    public String loginFailed(Model model) {

        model.addAttribute("user", new User());
        model.addAttribute("error", "true");
        logger.info("Login Failed");

        return "login";
    }

    @RequestMapping(value="/logout", method=RequestMethod.GET)
    public String logout(ModelMap model) {
        return "logout";
    }

    @RequestMapping(value="/403", method=RequestMethod.GET)
    public String error403(ModelMap model) {
        return "403";
    }

}
