/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author minh tai
 */
@Entity
@Table(name = "menus")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Menus.findAll", query = "SELECT m FROM Menus m"),
    @NamedQuery(name = "Menus.findByMenuId", query = "SELECT m FROM Menus m WHERE m.menuId = :menuId"),
    @NamedQuery(name = "Menus.findByMenuName", query = "SELECT m FROM Menus m WHERE m.menuName = :menuName"),
    @NamedQuery(name = "Menus.findByDescription", query = "SELECT m FROM Menus m WHERE m.description = :description"),
    @NamedQuery(name = "Menus.findByMenuPrice", query = "SELECT m FROM Menus m WHERE m.menuPrice = :menuPrice")})
public class Menus implements Serializable {

    
    @Column(name = "choose")
    private Integer choose;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "menu_id")
    private Integer menuId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "menu_name")
    private String menuName;
    @Size(max = 1000)
    @Column(name = "description")
    private String description;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "menu_price")
    private BigDecimal menuPrice;
    @OneToMany(mappedBy = "menuId")
    private Set<BookingMenus> bookingMenusSet;

    public Menus() {
    }

    public Menus(Integer menuId) {
        this.menuId = menuId;
    }

    public Menus(Integer menuId, String menuName) {
        this.menuId = menuId;
        this.menuName = menuName;
    }

    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BigDecimal getMenuPrice() {
        return menuPrice;
    }

    public void setMenuPrice(BigDecimal menuPrice) {
        this.menuPrice = menuPrice;
    }

    @XmlTransient
    public Set<BookingMenus> getBookingMenusSet() {
        return bookingMenusSet;
    }

    public void setBookingMenusSet(Set<BookingMenus> bookingMenusSet) {
        this.bookingMenusSet = bookingMenusSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (menuId != null ? menuId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Menus)) {
            return false;
        }
        Menus other = (Menus) object;
        if ((this.menuId == null && other.menuId != null) || (this.menuId != null && !this.menuId.equals(other.menuId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mt.pojo.Menus[ menuId=" + menuId + " ]";
    }

    public Integer getChoose() {
        return choose;
    }

    public void setChoose(Integer choose) {
        this.choose = choose;
    }
    
}
