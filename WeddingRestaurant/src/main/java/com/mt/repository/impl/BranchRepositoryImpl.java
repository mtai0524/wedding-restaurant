/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.repository.impl;

import com.mt.pojo.Branches;
import com.mt.repository.BranchRepository;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author minh tai
 */
@Transactional
@Repository
public class BranchRepositoryImpl implements BranchRepository{

    @Autowired
    LocalSessionFactoryBean factory;
    
    @Override
    public List<Branches> getListBranches() {
        Session s = factory.getObject().getCurrentSession();
        Query q = s.createQuery("FROM Branches");
        return q.getResultList();
    }
    
}
