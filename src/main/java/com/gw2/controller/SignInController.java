package com.gw2.controller;

import com.gw2.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

/**
 * Created by mahfuz on 1/13/16.
 */

@Controller
public class SignInController {

    @RequestMapping(value = "/sign_in", method = RequestMethod.GET)
    public String signIn(Model model) {
        model.addAttribute("user", new User());
        return "sign_in";
    }

    @RequestMapping(value = "/sign_in", method = RequestMethod.POST)
    public String signIn(@Valid @ModelAttribute("user") User user, BindingResult result) {

        System.out.println("username " + user.getUsername());
//        System.out.println("result has errors: " + result.hasErrors());

//        System.out.println("Minutes updated: " + goal.getMinutes());

//        if (result.hasErrors()) {
//            return "addGoal";
//        }

        return "redirect:sign_in";
    }

}
