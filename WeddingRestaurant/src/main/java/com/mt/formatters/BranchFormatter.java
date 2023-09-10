/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.formatters;

import com.mt.pojo.Branches;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author minh tai
 */
public class BranchFormatter implements Formatter<Branches>{

    @Override
    public String print(Branches branch, Locale locale) {
        return String.valueOf(branch.getBranchId());
    }

    @Override
    public Branches parse(String branchId, Locale locale) throws ParseException {
        int id = Integer.parseInt(branchId);
        return new Branches(id);
    }
}
