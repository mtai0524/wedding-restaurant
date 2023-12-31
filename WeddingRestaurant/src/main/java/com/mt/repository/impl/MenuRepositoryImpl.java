/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.repository.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.mt.component.MyEnvironment;
import com.mt.pojo.Branches;
import com.mt.pojo.Menus;
import com.mt.repository.BranchRepository;
import com.mt.repository.MenuRepository;
import java.io.IOException;
import java.util.List;
import java.util.Map;
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
    private Cloudinary cloudinary;
    @Autowired
    LocalSessionFactoryBean factory;
    
    @Autowired
    MyEnvironment myEnvironment;

    @Override
    public List<Menus> getListMenus() {
        Session s = factory.getObject().getCurrentSession();
        Query q = s.createQuery("FROM Menus");
        return q.getResultList();
    }

    @Override
    public Menus updateMenus(Menus menu) {
        try {
            // Tải lên hình ảnh lên Cloudinary
            Map<String, Object> uploadResult = this.cloudinary.uploader().upload(menu.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));

            // Lấy địa chỉ URL của hình ảnh từ kết quả tải lên
            String imageUrl = (String) uploadResult.get("secure_url");
//            user.setUsername("dashduksh");
//            user.setRole("ccccc");
//            user.setPassword("cc");
//            // Gán địa chỉ URL vào đối tượng Users
            menu.setImage(imageUrl);

            // Lưu đối tượng Users vào cơ sở dữ liệu
            Session session = factory.getObject().getCurrentSession();
            session.update(menu);

            return menu;

        } catch (IOException ex) {
            System.err.println("Có lỗi xảy ra: " + ex.getMessage());
        }
        return null;
    }

    @Override
    public Menus addMenu(Menus menu) {
        try {
            // Tải lên hình ảnh lên Cloudinary
            Map<String, Object> uploadResult = this.cloudinary.uploader().upload(menu.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));

            // Lấy địa chỉ URL của hình ảnh từ kết quả tải lên
            String imageUrl = (String) uploadResult.get("secure_url");

            // Gán địa chỉ URL vào đối tượng Users
            menu.setImage(imageUrl);

            // Lưu đối tượng Users vào cơ sở dữ liệu
            Session session = factory.getObject().getCurrentSession();
            session.save(menu);

            // Trả về đối tượng Users sau khi lưu thành công
            return menu;
        } catch (IOException ex) {
            System.err.println("Có lỗi xảy ra: " + ex.getMessage());

            // Trả về null hoặc đối tượng Users rỗng nếu xảy ra lỗi
            return null;
        }
    }

    @Override
    public List<Menus> getListMenuById(int userId) {
        Session currentSession = factory.getObject().getCurrentSession();
        String hql = "SELECT bm.menuId FROM BookingMenus bm WHERE bm.userId.userId = :userId";
        List<Menus> menuList = currentSession.createQuery(hql, Menus.class)
                .setParameter("userId", myEnvironment.getUserIdCurrent()) // Đặt tham số userId vào truy vấn
                .getResultList();
        return menuList;
    }
}
