package com.ra.btap2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;
@Controller
public class DictionaryController {
    @RequestMapping("/home")
    public String home(){
        return "home";
    }
    @RequestMapping("/check")
    public String dictionary(@RequestParam("word") String word, Model model){
        Map<String,String> map = new HashMap<>();
        map.put("Hello Word".toLowerCase(),"Xin chao the gioi");
        map.put("Hello".toLowerCase(),"Xin chao ");
        map.put("How are you".toLowerCase(),"ban khoe khong");
        String answer = null;
        if (map.containsKey(word.toLowerCase())){
            answer = map.get(word.toLowerCase());
        } else {
            answer = "NOT FOUND";
        }
        model.addAttribute("answer",answer);
        return "home";
    }
}
