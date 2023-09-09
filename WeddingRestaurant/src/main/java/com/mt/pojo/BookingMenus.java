/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author minh tai
 */
@Entity
@Table(name = "booking_menus")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "BookingMenus.findAll", query = "SELECT b FROM BookingMenus b"),
    @NamedQuery(name = "BookingMenus.findByBookingMenuId", query = "SELECT b FROM BookingMenus b WHERE b.bookingMenuId = :bookingMenuId")})
public class BookingMenus implements Serializable {
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    @ManyToOne
    private Users userId;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "booking_menu_id")
    private Integer bookingMenuId;
    @JoinColumn(name = "booking_id", referencedColumnName = "booking_id")
    @ManyToOne
    private Bookings bookingId;
    @JoinColumn(name = "menu_id", referencedColumnName = "menu_id")
    @ManyToOne
    private Menus menuId;
   
    public BookingMenus() {
    }

    public BookingMenus(Integer bookingMenuId) {
        this.bookingMenuId = bookingMenuId;
    }

    public Integer getBookingMenuId() {
        return bookingMenuId;
    }

    public void setBookingMenuId(Integer bookingMenuId) {
        this.bookingMenuId = bookingMenuId;
    }

    public Bookings getBookingId() {
        return bookingId;
    }

    public void setBookingId(Bookings bookingId) {
        this.bookingId = bookingId;
    }

    public Menus getMenuId() {
        return menuId;
    }

    public void setMenuId(Menus menuId) {
        this.menuId = menuId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (bookingMenuId != null ? bookingMenuId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BookingMenus)) {
            return false;
        }
        BookingMenus other = (BookingMenus) object;
        if ((this.bookingMenuId == null && other.bookingMenuId != null) || (this.bookingMenuId != null && !this.bookingMenuId.equals(other.bookingMenuId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mt.pojo.BookingMenus[ bookingMenuId=" + bookingMenuId + " ]";
    }

    public Users getUserId() {
        return userId;
    }

    public void setUserId(Users userId) {
        this.userId = userId;
    }
    
}
