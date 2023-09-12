/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.service.impl;

import com.mt.pojo.Services;
import com.mt.repository.ServiceRepository;
import com.mt.repository.UserRepository;
import com.mt.service.ServiceService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author minh tai
 */
@Transactional
@Service
public class ServiceServiceImpl implements ServiceService{
    @Autowired
    private ServiceRepository serverRepo;
    @Override
    public List<Services> getListServices() {
        return this.serverRepo.getListServices();
    }

    @Override
    public Services updateServices(Services service) {
        return this.serverRepo.updateServices(service);
    }

    @Override
    public Services addService(Services service) {
        return this.serverRepo.addService(service);
    }

    @Override
    public List<Services> getListServiceByUserId(int userId) {
        return this.serverRepo.getListServiceByUserId(userId);
    }

    @Override
    public Services getServiceById(int id) {
        return this.serverRepo.getServiceById(id);
    }
}
