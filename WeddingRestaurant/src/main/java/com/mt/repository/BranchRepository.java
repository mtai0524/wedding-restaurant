/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mt.repository;

import com.mt.pojo.Branches;
import java.util.List;

/**
 *
 * @author minh tai
 */
public interface BranchRepository {
    List<Branches> getListBranches();
    Branches updateBranch(Branches branch);
    Branches addBranch(Branches branch);
}