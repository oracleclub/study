/*
 * EmpBO.java 2012. 8. 10.
 *
 * Copyright oracleclub.com All rights Reserved.
 */
package com.gurubee.study.emp.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gurubee.study.emp.dao.EmpDAO;
import com.gurubee.study.emp.model.Emp;

/**
 * Class 내용 기술
 * 
 * @author : oramaster
 * 
 */
@Service
public class EmpBO {

    @Autowired
    private EmpDAO empDAO;

    public List<Emp> getEmpList() {
        return empDAO.selectEmpList();
        // Git Commit Test Comment.
        // second Comment.
        // third Comment.
    }

}
