package com.atguigu.finance.controller;

import java.lang.invoke.VolatileCallSite;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.atguigu.finance.bean.LoanContract;



@Controller
public class IndexController {


    @RequestMapping("toContract")
    public String toContract(){

        return "contract";
    }

    @RequestMapping("index")
    public String index(){

        return "index";
    }

	
}
