/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.controllers;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.mt.pojo.Bill;
import com.mt.pojo.BookingMenus;
import com.mt.pojo.Branches;
import com.mt.pojo.EventHalls;
import com.mt.pojo.MenuSelectionForm;
import com.mt.pojo.Menus;
import com.mt.pojo.SearchForm;
import com.mt.pojo.Services;
import com.mt.service.OrderService;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author minh tai
 */
@ControllerAdvice
@Transactional
@Controller
public class OrderController {
    private List<String> menuNameList;
    
    @Autowired
    OrderService orderService;

    @ModelAttribute
    public void commAttr(Model model) {
        model.addAttribute("branch", orderService.getBranches());


    }
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
        model.addAttribute("services", new Services());
        
        return "order";
    }
    
    @GetMapping("/order/{branchId}/hall/{hallId}/menu")
    public String getOrderWithHall(@PathVariable("branchId") Integer branchId, @PathVariable("hallId") Integer hallId, Model model) {
        int idBrand = branchId;
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
        model.addAttribute("services", new Services());
        boolean shouldShowButton = true;
        boolean showTextListMenu = true; // Thay đổi giá trị điều kiện tùy theo logic của bạn

        model.addAttribute("shouldShowButton", shouldShowButton);
        model.addAttribute("showTextListMenu", showTextListMenu);
        model.addAttribute("sendHallId", id);
        model.addAttribute("idBrand", idBrand); // id branch trang trước không tồn tại khi qua URL khác => phải gửi lại
        return "order";
    }
    
    
//    @PostMapping("/search")
//    public String search(@ModelAttribute("searchForm") SearchForm searchForm, Model model) {
//        String searchType = searchForm.getSearchType();
//        String searchKeyword = searchForm.getKeyword(); // Từ khóa tìm kiếm
//
//        if ("branch".equals(searchType)) {
//            String hql = "FROM Branches b WHERE b.branchName LIKE :keyword";
//
//            List<Branches> branches = factory.getObject().getCurrentSession()
//                    .createQuery(hql, Branches.class)
//                    .setParameter("keyword", "%" + searchKeyword + "%")
//                    .getResultList();
//
//            model.addAttribute("results", branches);
//
//            return "searchResults";
//        } else if ("hall".equals(searchType)) {
//            String hql = "FROM EventHalls h WHERE h.hallName LIKE :keyword";
//
//            List<EventHalls> halls = factory.getObject().getCurrentSession()
//                    .createQuery(hql, EventHalls.class)
//                    .setParameter("keyword", "%" + searchKeyword + "%")
//                    .getResultList();
//
//            model.addAttribute("results", halls);
//
//            return "searchResults";
//        }
//        // ... Xử lý tìm kiếm cho các loại khác
//
//        return "searchResults";
//    }


    
    
    @PostMapping("/order/{branchId}/hall/{hallId}/menu/service")
    public String selectMenus(@ModelAttribute("menuSelectionForm") MenuSelectionForm menuSelectionForm, Model model) {
        Integer[] selectedMenuIds = menuSelectionForm.getSelectedMenuIds();
        
//        Bill bill = new Bill();
//        bill.setMenuId(id);
//        Session session = factory.getObject().getCurrentSession();
//        session.save(bill);
        String hql = "FROM Menus m WHERE m.menuId = :menuId";
        for (Integer id : selectedMenuIds) {
            Menus menu = factory.getObject().getCurrentSession()
                    .createQuery(hql, Menus.class)
                    .setParameter("menuId", id)
                    .uniqueResult();

            BookingMenus bookingMenu = new BookingMenus();
            bookingMenu.setMenuId(menu);
            
            Session session = factory.getObject().getCurrentSession();
            session.save(bookingMenu);
            
        }
        
        

//        return "order"; // Chuyển hướng về trang danh sách món ăn
        return "redirect:/order/{branchId}/hall/{hallId}/menu/service";
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
 
    
    @GetMapping("/order/bill")
    public String handleBill(Model model){
        Session currentSession = factory.getObject().getCurrentSession();
        String hql = "SELECT bm.menuId FROM BookingMenus bm";
        List<Menus> listMenuBill = currentSession.createQuery(hql, Menus.class).getResultList();
        model.addAttribute("listMenuBill", listMenuBill);
        return "order";
    }
    
    @GetMapping("/order/{branchId}/hall/{hallId}/menu/service")
    public String getOrderWithServices(@PathVariable("branchId") Integer branchId, @PathVariable("hallId") Integer hallId, Model model) {
        int id = hallId;
        String hql = "FROM EventHalls e WHERE e.hallId= :hallId";
        List<EventHalls> evenHall = factory.getObject().getCurrentSession()
                .createQuery(hql, EventHalls.class)
                .setParameter("hallId", id)
                .getResultList();
        model.addAttribute("hallById", evenHall);

        Session s = factory.getObject().getCurrentSession();
        Query q = s.createQuery("FROM Services");
        model.addAttribute("listServices", q.getResultList());
        
        
        
        boolean showTextListService = true; // Thay đổi giá trị điều kiện tùy theo logic của bạn

        model.addAttribute("showTxtListService", showTextListService);
        return "order";
    }
    
    @GetMapping("/export/pdf")
    public ModelAndView exportPdf(HttpServletRequest request, HttpServletResponse response) throws DocumentException {
        // Lấy danh sách menu từ dịch vụ của bạn
        Session currentSession = factory.getObject().getCurrentSession();
        String hql = "SELECT m FROM Menus m";
        List<Menus> menuList = currentSession.createQuery(hql, Menus.class).getResultList();

        // Tạo một Document
        Document document = new Document();

        try {
            // Khởi tạo PdfWriter để viết PDF vào HttpServletResponse
            PdfWriter.getInstance(document, response.getOutputStream());
            document.open();
            // Tạo một bảng để hiển thị danh sách menu
            PdfPTable table = new PdfPTable(3); // 3 cột: Tên món ăn, Mô tả và Giá món ăn

            // Thêm tiêu đề
            PdfPCell cell = new PdfPCell(new Paragraph("Danh sách menu"));
            cell.setColspan(3);
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell);

            // Thêm tiêu đề cột
            table.addCell("Tên món ăn");
            table.addCell("Mô tả");
            table.addCell("Giá món ăn");

            // Thêm danh sách menu vào bảng
            for (Menus menu : menuList) {
                table.addCell(menu.getMenuName());
                table.addCell(menu.getDescription());
                table.addCell(menu.getMenuPrice().toString() + " VND");
            }
            
            // Tính toán tổng số tiền và định dạng nó thành một chuỗi văn bản
            BigDecimal totalAmount = calculateTotalAmount(menuList); // Hàm tính tổng số tiền
   

            String totalAmountText = "Tổng tiền: " + totalAmount.toString() + " VND";

// Tạo một ô để hiển thị tổng số tiền
            PdfPCell totalAmountCell = new PdfPCell(new Phrase(totalAmountText));
            totalAmountCell.setColspan(3); // Chỉnh số cột (3 cột) để ô này chiếm cả bảng
            totalAmountCell.setHorizontalAlignment(Element.ALIGN_RIGHT); // Căn giữa ngang

// Thêm ô tổng số tiền vào bảng
            table.addCell(totalAmountCell);
            
            // Thêm bảng vào tài liệu
            document.add(table);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            document.close();
        }

        // Thiết lập header cho response để tải xuống PDF
        response.setHeader("Content-Disposition", "attachment; filename=menu.pdf");
        response.setContentType("application/pdf");

        return null;
    }

    private BigDecimal calculateTotalAmount(List<Menus> menuList) {
        Session currentSession = factory.getObject().getCurrentSession();
        String hql = "SELECT SUM(m.menuPrice) FROM Menus m WHERE m IN :menuList";

        BigDecimal totalAmount = (BigDecimal) currentSession.createQuery(hql)
                .setParameter("menuList", menuList)
                .uniqueResult();
        return totalAmount;
    }
    
}
