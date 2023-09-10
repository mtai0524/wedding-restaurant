/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.repository.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.mt.pojo.Services;
import com.mt.repository.ServiceRepository;
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
public class ServiceRepositoryImpl implements ServiceRepository{

    @Autowired
    private Cloudinary cloudinary;
    
    @Autowired
    LocalSessionFactoryBean factory;
    
    @Override
    public List<Services> getListServices() {
        Session s = factory.getObject().getCurrentSession();
        Query q = s.createQuery("FROM Services");
        return q.getResultList();
    }

    @Override
    public Services updateServices(Services service) {
        try {
            // Tải lên hình ảnh lên Cloudinary
            Map<String, Object> uploadResult = this.cloudinary.uploader().upload(service.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));

            // Lấy địa chỉ URL của hình ảnh từ kết quả tải lên
            String imageUrl = (String) uploadResult.get("secure_url");
//            user.setUsername("dashduksh");
//            user.setRole("ccccc");
//            user.setPassword("cc");
//            // Gán địa chỉ URL vào đối tượng Users
            service.setServiceImg(imageUrl);

            // Lưu đối tượng Users vào cơ sở dữ liệu
            Session session = factory.getObject().getCurrentSession();
            session.update(service);

            return service;

        } catch (IOException ex) {
            System.err.println("Có lỗi xảy ra: " + ex.getMessage());
        }
        return null;
    }

    @Override
    public Services addService(Services service) {
        try {
            Map<String, Object> uploadResult = this.cloudinary.uploader().upload(service.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
            String imageUrl = (String) uploadResult.get("secure_url");
            service.setServiceImg(imageUrl);

            Session session = factory.getObject().getCurrentSession();
            session.save(service);

            return service;
        } catch (IOException ex) {
            System.err.println("Có lỗi xảy ra: " + ex.getMessage());
            return null;
        }
    }
}
