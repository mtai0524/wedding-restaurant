/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.controllers;

import com.mt.pojo.Branches;
import com.mt.pojo.EventHalls;
import com.mt.pojo.Menus;
import com.mt.pojo.Services;
import com.mt.pojo.Users;
import com.mt.service.BranchService;
import com.mt.service.HallService;
import com.mt.service.MenuService;
import com.mt.service.ServiceService;
import com.mt.service.UserService;
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

/**
 *
 * @author minh tai
 */
@Transactional
@Controller
public class AdminController {
    
    @Autowired
    LocalSessionFactoryBean factory;
    
    @Autowired
    UserService userService;
    @Autowired
    MenuService menuService;
    @Autowired
    BranchService branchService;
    @Autowired
    HallService hallService;
    @Autowired
    ServiceService serviceService;
    @RequestMapping("/admin")
    public String admin(){
        return "redirect:/admin/manage-branch";
    }
    
    @GetMapping("/admin/manage-service/add")
    public String addService(Model model) {
        model.addAttribute("service", new Services());
        return "addService";
    }
    
    @PostMapping("/admin/manage-service/add")
    public String postAddService(@ModelAttribute(value = "service") Services service) {
        serviceService.addService(service);
        return "redirect:/";
    }
    
    @GetMapping("/admin/manage-menu/add")
    public String addMenu(Model model) {
        model.addAttribute("menu", new Menus());
        return "addMenu";
    }

    @PostMapping("/admin/manage-menu/add")
    public String postAddMenu(@ModelAttribute(value = "menu") Menus menu) {
        menuService.addMenu(menu);
        return "redirect:/";
    }
    
    @GetMapping("/admin/manage-branch/add")
    public String addBranch(Model model) { 
        model.addAttribute("branchpost", new Branches()); // do đã có một branch public ra rồi, nên đổi tên thành branchpost cho khác
        return "addBranch";
    }

    @PostMapping("/admin/manage-branch/add")
    public String postAddBranch(@ModelAttribute(value = "branchpost") Branches branch) {
        branchService.addBranch(branch);
        return "redirect:/";
    }
  
    
    @GetMapping("/admin/manage-hall/add")
    public String addHall(Model model) {
        model.addAttribute("hall", new EventHalls());
        return "addHall";
    }

    @PostMapping("/admin/manage-hall/add")
    public String postAddHall(@ModelAttribute(value = "hall") EventHalls hall) {
        hallService.addHall(hall);
        return "redirect:/";
    }
    
    @GetMapping("/admin/manage-service")
    public String manageService(Model model) {
        model.addAttribute("txtMngServices", "Quản lý dịch vụ");
        model.addAttribute("services", serviceService.getListServices());
        
        boolean isManageService = true;
        model.addAttribute("isManageService", isManageService);

        return "admin";
    }
    
    @GetMapping("/edit/service/{serviceId}")
    public String getEditService(@PathVariable("serviceId") Integer serviceId, Model model) {
        Session s = this.factory.getObject().getCurrentSession();

        model.addAttribute("services", s.get(Services.class, serviceId));

        return "serviceInfo";
    }

    @PostMapping("/edit/service/{serviceId}")
    public String postEditService(@ModelAttribute(value = "services") Services service) {
        serviceService.updateServices(service);
        
        return "redirect:/admin/manage-service";
    }
    
    @GetMapping("/admin/manage-branch")
    public String manageBranch(Model model) {
        model.addAttribute("txtMngBranches", "Quản lý chi nhánh");
        model.addAttribute("branches", branchService.getListBranches());

        boolean isManageBranch = true;
        model.addAttribute("isManageBranch", isManageBranch);

        return "admin";
    }
    
    @GetMapping("/edit/branch/{branchId}")
    public String getEditBranch(@PathVariable("branchId") Integer branchId, Model model) {
        Session s = this.factory.getObject().getCurrentSession();

        model.addAttribute("branch", s.get(Branches.class, branchId));
        return "branchInfo";
    }
    
    @PostMapping("/edit/branch/{branchId}")
    public String postEditBranch(@ModelAttribute(value = "branches") Branches branch) {
        branchService.updateBranch(branch);
        return "redirect:/admin/manage-branch";
    }
    
    @GetMapping("/admin/manage-hall")
    public String manageHall(Model model) {
        model.addAttribute("txtMngHalls", "Quản lý sảnh");
        model.addAttribute("halls", hallService.getListHalls());

        boolean isManageHall = true;
        model.addAttribute("isManageHall", isManageHall);

        return "admin";
    }
    
    @GetMapping("/edit/hall/{hallId}")
    public String getEditHall(@PathVariable("hallId") Integer hallId, Model model) {
        Session s = this.factory.getObject().getCurrentSession();

        model.addAttribute("hall", s.get(EventHalls.class, hallId));
        return "hallInfo";
    }

    @PostMapping("/edit/hall/{hallId}")
    public String postEditHall(@ModelAttribute(value = "hall") EventHalls hall) {
        hallService.updateEventHalls(hall);
        return "redirect:/admin/manage-hall";
    }
    
    @GetMapping("/admin/manage-menu")
    public String manageMenu(Model model) {
        model.addAttribute("txtMngMenu", "Quản lý menu");
        model.addAttribute("menus", menuService.getListMenus());

        boolean isManageMenu = true;
        model.addAttribute("isManageMenu", isManageMenu);

        return "admin";
    }
    
    @GetMapping("/edit/menu/{menuId}")
    public String getEditMenu(@PathVariable("menuId") Integer menuId, Model model) {
        Session s = this.factory.getObject().getCurrentSession();

        model.addAttribute("menus", s.get(Menus.class, menuId));
        return "menuInfo";
    }

    @PostMapping("/edit/menu/{menuId}")
    public String postEditMenu(@ModelAttribute(value = "menus") Menus menu) {
        menuService.updateMenus(menu);
        return "redirect:/admin/manage-menu";
    }
    
    @GetMapping("/admin/manage-user")
    public String adminEdit(Model model) {
        model.addAttribute("txtMngUsers", "Quản lý người dùng");
        model.addAttribute("users", userService.getUsers());
        boolean isManageUser = true;
        model.addAttribute("isManageUser", isManageUser);

        return "admin";
    }
    
    @GetMapping("/edit/{userId}")
    public String editUser(@PathVariable("userId") Integer userId, Model model) {
        Users user1 = userService.getUserById(userId);
        model.addAttribute("users", user1);
//        userService.updateUser(user);
        return "userInfo";
    }

    @PostMapping("/edit/{userId}")
    public String editUserPost(@ModelAttribute(value = "users") Users user) {
        userService.updateUser(user);
        return "redirect:/admin/manage-user";
    }
    

    @GetMapping("/delete/{userId}")
    public String deleteUser(@PathVariable("userId") Integer userId) {
        userService.deleteProduct(userId);
        return "redirect:/admin/manage-user";
    }
}
