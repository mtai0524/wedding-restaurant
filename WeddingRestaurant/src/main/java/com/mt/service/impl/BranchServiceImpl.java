/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.service.impl;

import com.mt.pojo.Branches;
import com.mt.repository.BranchRepository;
import com.mt.service.BranchService;
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
public class BranchServiceImpl implements BranchService{

    @Autowired
    BranchRepository branchRepo;
    @Override
    public List<Branches> getListBranches() {
        return branchRepo.getListBranches();
    }
}
