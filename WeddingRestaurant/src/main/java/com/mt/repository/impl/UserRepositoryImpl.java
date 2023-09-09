package com.mt.repository.impl;


import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.mt.pojo.Branches;
import com.mt.pojo.Users;
import static com.mt.pojo.Users_.userId;
import com.mt.repository.UserRepository;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import static jdk.nashorn.internal.runtime.Debug.id;
import org.hibernate.HibernateException;
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
        CriteriaQuery<Users> query = factory.getObject().getCurrentSession().getCriteriaBuilder().createQuery(Users.class);
        
        query.from(Users.class);
        return factory.getObject().getCurrentSession().createQuery(query).getResultList();
        
//        Session s = this.factory.getObject().getCurrentSession();
//        Query q = s.createQuery("FROM Users");
//        return q.getResultList();
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
            session.save(user);

            return "redirect:/";
        } catch (IOException ex) {
            System.err.println("Có lỗi xảy ra: " + ex.getMessage());
        }
        return "user";
    }

    @Override
    public void delete(Integer userId) {
        Users user = this.factory.getObject().getCurrentSession().get(Users.class, userId);
        if (user != null) {
            factory.getObject().getCurrentSession().delete(user);
        }
    }
    
    
    @Override
    public Users getProductById(int id) {
        Session s = this.factory.getObject().getCurrentSession();
        return s.get(Users.class, id);
    }

    @Override
    public void deleteProduct(int id) {
        Session session = factory.getObject().getCurrentSession();
        Users user = session.get(Users.class, id);
        if (user != null) {
            session.delete(user);
        }
    }

    @Override
    public Users updateUser(Users user) {
      
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
            session.update(user);

            return user;

        } catch (IOException ex) {
            System.err.println("Có lỗi xảy ra: " + ex.getMessage());
        }
        return null;
    }
    
}
