/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mt.repository;

import com.mt.pojo.EventHalls;
import java.util.List;

/**
 *
 * @author minh tai
 */
public interface HallRepository {
    List<EventHalls> getListHalls();
    EventHalls updateEventHalls(EventHalls hall);
}
