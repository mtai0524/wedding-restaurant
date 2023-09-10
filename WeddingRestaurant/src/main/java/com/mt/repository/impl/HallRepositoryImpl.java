/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.repository.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.mt.pojo.Branches;
import com.mt.pojo.EventHalls;
import com.mt.repository.BranchRepository;
import com.mt.repository.HallRepository;
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
public class HallRepositoryImpl implements HallRepository{

    @Autowired
    private Cloudinary cloudinary;
    
    @Autowired
    LocalSessionFactoryBean factory;
    

    @Override
    public List<EventHalls> getListHalls() {
        Session s = factory.getObject().getCurrentSession();
        Query q = s.createQuery("FROM EventHalls");
        return q.getResultList();
    }

    @Override
    public EventHalls updateEventHalls(EventHalls hall) {
        try {
            Map<String, Object> uploadResult = this.cloudinary.uploader().upload(hall.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));

            String imageUrl = (String) uploadResult.get("secure_url");
            hall.setImgHall(imageUrl);

            Session session = factory.getObject().getCurrentSession();
            session.update(hall);

            return hall;
        } catch (IOException ex) {
            System.err.println("Có lỗi xảy ra: " + ex.getMessage());
        }
        return null;
    }

    @Override
    public EventHalls addHall(EventHalls hall) {
        try {
            Map<String, Object> uploadResult = this.cloudinary.uploader().upload(hall.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
            String imageUrl = (String) uploadResult.get("secure_url");
            hall.setImgHall(imageUrl);

            Session session = factory.getObject().getCurrentSession();
            session.save(hall);

            return hall;
        } catch (IOException ex) {
            System.err.println("Có lỗi xảy ra: " + ex.getMessage());
            return null;
        }
    }
    
}
