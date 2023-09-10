/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.service.impl;

import com.mt.pojo.Branches;
import com.mt.pojo.EventHalls;
import com.mt.repository.BranchRepository;
import com.mt.repository.HallRepository;
import com.mt.service.BranchService;
import com.mt.service.HallService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author minh tai
 */
@Transactional
@Service
public class HallServiceImpl implements HallService{

    @Autowired
    HallRepository hallRepo;

    @Override
    public List<EventHalls> getListHalls() {
        return hallRepo.getListHalls();
    }

    @Override
    public EventHalls updateEventHalls(EventHalls hall) {
        return this.hallRepo.updateEventHalls(hall);
    }

    @Override
    public EventHalls addHall(EventHalls hall) {
        return this.hallRepo.addHall(hall);
    }
}
