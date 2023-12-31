/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mt.service;

import com.mt.pojo.Services;
import java.util.List;

/**
 *
 * @author minh tai
 */
public interface ServiceService {
    List<Services> getListServices();
    Services updateServices(Services service);
    Services addService(Services service);
    List<Services> getListServiceByUserId(int userId);
    Services getServiceById(int id);
}
