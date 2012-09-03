/*
 * EmpDAO.java 2012. 8. 9.
 *
 * Copyright oracleclub.com All rights Reserved.
 */
package com.gurubee.study.emp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.gurubee.study.emp.model.Emp;

/**
 * Class 내용 기술
 * 
 * @author : oramaster
 * 
 */
@Repository
public class EmpDAO {

    @Autowired
    private SqlMapClientTemplate sqlMapClientTemplate;

    private static final String NAMESPACE = "emp.";

    @SuppressWarnings("unchecked")
    public List<Emp> selectEmpList() {
        return sqlMapClientTemplate.queryForList(NAMESPACE + "selectEmpList");
    }
}
