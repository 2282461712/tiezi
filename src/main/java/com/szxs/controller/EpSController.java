package com.szxs.controller;


import com.szxs.entity.Enterprisetalent;
import com.szxs.service.EpService;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.annotation.WebServlet;
import java.util.List;

@Controller
public class EpSController {
    @Resource
    private EpService epService;
    @RequestMapping("/list")
    public String  queryEp(Model model){
        List<Enterprisetalent> enterprisetalentList = epService.queryEp();
        model.addAttribute("enterprisetalentList",enterprisetalentList);
        return "index";
    }
}
