/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.component;

import org.springframework.stereotype.Component;

/**
 *
 * @author minh tai
 */
@Component
public class MyEnvironment {
    private int userIdCurrent = 0;

    public int getUserIdCurrent() {
        return userIdCurrent;
    }

    public void setUserIdCurrent(int userIdCurrent) {
        this.userIdCurrent = userIdCurrent;
    }
}
