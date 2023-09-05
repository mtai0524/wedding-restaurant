/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.repository.impl;

import com.mt.pojo.Branches;
import com.mt.pojo.Menus;
import com.mt.repository.BranchRepository;
import com.mt.repository.MenuRepository;
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
public class MenuRepositoryImpl implements MenuRepository{

    @Autowired
    LocalSessionFactoryBean factory;
    

    @Override
    public List<Menus> getListMenus() {
        Session s = factory.getObject().getCurrentSession();
        Query q = s.createQuery("FROM Menus");
        return q.getResultList();
    }
}
