package com.mt.repository.impl;


import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.mt.pojo.Users;
import com.mt.repository.UserRepository;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author minh tai
 */
@Transactional
@Repository
public class UserRepositoryImpl implements UserRepository{
    @Autowired
    private Cloudinary cloudinary;

    
    @Autowired
    LocalSessionFactoryBean factory;

    @Override
    public List<Users> getUsers() {
        Session s = this.factory.getObject().getCurrentSession();
        Query q = s.createQuery("FROM Users");
        return q.getResultList();
    }

    @Override
    public String add(Users user) {
        try {
            // Tải lên hình ảnh lên Cloudinary
            Map<String, Object> uploadResult = this.cloudinary.uploader().upload(user.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));

            // Lấy địa chỉ URL của hình ảnh từ kết quả tải lên
            String imageUrl = (String) uploadResult.get("secure_url");
//            user.setUsername("dashduksh");
//            user.setRole("ccccc");
//            user.setPassword("cc");
//            // Gán địa chỉ URL vào đối tượng Users
            user.setAvatar(imageUrl);

            // Lưu đối tượng Users vào cơ sở dữ liệu
            Session session = factory.getObject().getCurrentSession();
            session.persist(user);

            return "redirect:/";
        } catch (IOException ex) {
            System.err.println("Có lỗi xảy ra: " + ex.getMessage());
        }
        return "user";
    }
}
