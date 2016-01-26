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
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

/**
 * Created by mahfuz on 1/13/16.
 */

@Controller
public class LoginController {

    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model,
                        @RequestParam(value = "error", required = false) String error) {

        model.addAttribute("user", new User());
        logger.info("login page");

        if(error != null) {
            model.addAttribute("error", "true");
        }

        return "login";
    }

    /*@RequestMapping(value = "/loginFailed", method = RequestMethod.GET)
    public String loginFailed(Model model) {

        model.addAttribute("user", new User());
        model.addAttribute("error", "true");
        logger.error("Login Failed");

        return "login";
    }*/

    @RequestMapping(value = "/userInfo")
    public String showUserInfo(){
        return "userInfoPage";
    }

    @RequestMapping(value="/logoutSuccess", method=RequestMethod.GET)
    public String logout(ModelMap model) {
        return "logout";
    }

    @RequestMapping(value="/403", method=RequestMethod.GET)
    public String error403(ModelMap model) {
        return "403";
    }

}
