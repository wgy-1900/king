package com.wgyws.king.controller;

import com.wgyws.king.service.AlanService;
import com.wgyws.king.service.impl.AlanServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/Alan")
public class AlanController {
    public AlanController(){System.out.println("AlanController-------");}
    @Autowired
    private AlanService alanService;

    @RequestMapping("/queryDays.action")
    public int queryDays(HttpServletRequest request, HttpServletResponse response) throws  Exception{
        String startDate = request.getParameter("startDate");
        System.out.println(startDate);
        int days = alanService.countDate(startDate);
        System.out.println(days);
        request.setAttribute("days",days);
        return days;
    }
}
