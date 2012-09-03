/*
 * EmpListController.java 2012. 8. 10.
 *
 * Copyright oracleclub.com All rights Reserved.
 */
package com.gurubee.study.emp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gurubee.study.emp.bo.EmpBO;

/**
 * Class 내용 기술
 * 
 * @author : oramaster
 * 
 */
@Controller
@RequestMapping("/emp")
public class EmpListController {

    @Autowired
    private EmpBO empBO;

    @RequestMapping(value = "/list")
    public ModelAndView list() {

        ModelAndView mv = new ModelAndView();

        mv.setViewName("emp/list");
        mv.addObject("empList", empBO.getEmpList());

        return mv;
    }
}
