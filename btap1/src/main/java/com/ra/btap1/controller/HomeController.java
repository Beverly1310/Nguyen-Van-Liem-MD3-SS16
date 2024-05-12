package com.ra.btap1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
    @RequestMapping("/home")
    public String home(){
        return "home";
    }
    @RequestMapping("/result")
    public String result(@RequestParam("money") Double money, @RequestParam("rate") Double rate, Model model){
        Double exchangeMoney = money/rate;
        model.addAttribute("money",money);
        model.addAttribute("rate",money);
        model.addAttribute("exchangeMoney",exchangeMoney);
        return "result";
    }
}
