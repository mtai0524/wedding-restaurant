/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mt.repository;

import com.mt.pojo.Services;
import java.util.List;

/**
 *
 * @author minh tai
 */
public interface ServiceRepository {
    List<Services> getListServices();
    Services updateServices(Services service);
}
