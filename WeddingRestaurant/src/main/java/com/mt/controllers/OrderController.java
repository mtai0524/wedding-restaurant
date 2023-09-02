/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.controllers;

import com.mt.pojo.Branches;
import com.mt.pojo.EventHalls;
import com.mt.pojo.MenuSelectionForm;
import com.mt.pojo.Menus;
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
        model.addAttribute("sendBranchId", branchId);
        model.addAttribute("menus", new Menus());
        
        return "order";
    }
    
    @GetMapping("/order/{branchId}/hall/{hallId}")
    public String getOrderWithHall(@PathVariable("branchId") Integer branchId, @PathVariable("hallId") Integer hallId, Model model) {
        int id = hallId;
        String hql = "FROM EventHalls e WHERE e.hallId= :hallId";
        List<EventHalls> evenHall = factory.getObject().getCurrentSession()
                .createQuery(hql, EventHalls.class)
                .setParameter("hallId", id)
                .getResultList();
        model.addAttribute("hallById", evenHall);
        
        // lấy menu
        Session s = factory.getObject().getCurrentSession();
        Query q = s.createQuery("FROM Menus");
        model.addAttribute("listMenu", q.getResultList());
        model.addAttribute("menus", new Menus());

        return "order";
    }
    
    
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
    @PostMapping("/order/{branchId}/hall/{hallId}")
    public String selectMenus(@ModelAttribute("menuSelectionForm") MenuSelectionForm menuSelectionForm) {
        Integer[] selectedMenuIds = menuSelectionForm.getSelectedMenuIds();
         for (Integer menuId : selectedMenuIds) {
             System.out.println(menuId.toString());
        }
        // Sử dụng selectedMenuIds ở đây để xử lý dữ liệu
        return "order"; // Chuyển hướng về trang danh sách món ăn
    }


    @ModelAttribute("menuSelectionForm")
    public MenuSelectionForm getMenuSelectionForm() {
        return new MenuSelectionForm();
    }
    
//    @PostMapping("/order/{branchId}/hall/{hallId}")
//    public String selectMenus(@RequestParam(value = "selectedMenuIds", required = false) Integer[] selectedMenuIds) {
//        if (selectedMenuIds != null) {
//            for (Integer menuId : selectedMenuIds) {
//                String hql = "FROM Menus m WHERE m.menuId = :menuId";
//                Menus menu=  factory.getObject().getCurrentSession()
//                        .createQuery(hql, Menus.class)
//                        .setParameter("menuId", menuId)
//                        .uniqueResult();
//                if (menu != null) { 
//                    
//                    hql = "UPDATE Menus m SET m.choose = :choose WHERE m.menuId = :menuId";
//                    factory.getObject().getCurrentSession()
//                            .createQuery(hql)
//                            .setParameter("choose", 1)
//                            .setParameter("menuId", menuId)
//                            .executeUpdate();
//                }
//            }
//        }
//        return "order"; // Chuyển hướng về trang danh sách món ăn
//    }
    
}
