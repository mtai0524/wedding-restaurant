/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.controllers;

import com.mt.pojo.Branches;
import com.mt.pojo.EventHalls;
import com.mt.pojo.SearchForm;
import com.mt.service.OrderService;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author minh tai
 */
@Transactional
@Controller
public class OrderController {
    @Autowired
    OrderService orderService;
    
    @Autowired
    private LocalSessionFactoryBean factory;
    
    @RequestMapping("/order")
    public String order(Model model){
        model.addAttribute("branch", orderService.getBranches());
        return "order";
    }
    
    
    @GetMapping("/order/{branchId}")
    public String getHall(@PathVariable("branchId") Integer branchId, Model model) {
        int id = branchId;
        model.addAttribute("branchId", id);

        String hql = "FROM EventHalls h WHERE h.branchId.branchId = :branchId";

        List<EventHalls> halls = factory.getObject().getCurrentSession()
                .createQuery(hql, EventHalls.class)
                .setParameter("branchId", id)
                .getResultList();

        // get branches by id
        hql = "FROM Branches b WHERE b.branchId= :branchId";
        List<Branches> branches = factory.getObject().getCurrentSession()
                .createQuery(hql, Branches.class)
                .setParameter("branchId", id)
                .getResultList();
        model.addAttribute("halls", halls);
        model.addAttribute("branches", branches);

        return "order";
    }
    
//    @GetMapping("/order/{branchId}")
//    public String getHall(@RequestParam("branchId") Integer branchId, Model model) {
//        String hql = "FROM EventHalls h WHERE h.branchId = :branchId";
//
//        List<EventHalls> halls = factory.getObject().getCurrentSession()
//                .createQuery(hql, EventHalls.class)
//                .setParameter("branchId", branchId)
//                .getResultList();
//
//        model.addAttribute("hall", halls);
//        return "order";
//    }
    
    
    @PostMapping("/search")
    public String search(@ModelAttribute("searchForm") SearchForm searchForm, Model model) {
        String searchType = searchForm.getSearchType();
        String searchKeyword = searchForm.getKeyword(); // Từ khóa tìm kiếm

        if ("branch".equals(searchType)) {
            String hql = "FROM Branches b WHERE b.branchName LIKE :keyword";

            List<Branches> branches = factory.getObject().getCurrentSession()
                    .createQuery(hql, Branches.class)
                    .setParameter("keyword", "%" + searchKeyword + "%")
                    .getResultList();

            model.addAttribute("results", branches);

            return "searchResults";
        } else if ("hall".equals(searchType)) {
            String hql = "FROM EventHalls h WHERE h.hallName LIKE :keyword";

            List<EventHalls> halls = factory.getObject().getCurrentSession()
                    .createQuery(hql, EventHalls.class)
                    .setParameter("keyword", "%" + searchKeyword + "%")
                    .getResultList();

            model.addAttribute("results", halls);

            return "searchResults";
        }
        // ... Xử lý tìm kiếm cho các loại khác

        return "searchResults";
    }
}
