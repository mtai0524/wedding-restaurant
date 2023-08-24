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
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "event_halls")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EventHalls.findAll", query = "SELECT e FROM EventHalls e"),
    @NamedQuery(name = "EventHalls.findByHallId", query = "SELECT e FROM EventHalls e WHERE e.hallId = :hallId"),
    @NamedQuery(name = "EventHalls.findByHallName", query = "SELECT e FROM EventHalls e WHERE e.hallName = :hallName"),
    @NamedQuery(name = "EventHalls.findByCapacity", query = "SELECT e FROM EventHalls e WHERE e.capacity = :capacity"),
    @NamedQuery(name = "EventHalls.findByPriceMorning", query = "SELECT e FROM EventHalls e WHERE e.priceMorning = :priceMorning"),
    @NamedQuery(name = "EventHalls.findByPriceAfternoon", query = "SELECT e FROM EventHalls e WHERE e.priceAfternoon = :priceAfternoon"),
    @NamedQuery(name = "EventHalls.findByPriceEvening", query = "SELECT e FROM EventHalls e WHERE e.priceEvening = :priceEvening"),
    @NamedQuery(name = "EventHalls.findByPriceWeekend", query = "SELECT e FROM EventHalls e WHERE e.priceWeekend = :priceWeekend")})
public class EventHalls implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "hall_id")
    private Integer hallId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "hall_name")
    private String hallName;
    @Column(name = "capacity")
    private Integer capacity;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "price_morning")
    private BigDecimal priceMorning;
    @Column(name = "price_afternoon")
    private BigDecimal priceAfternoon;
    @Column(name = "price_evening")
    private BigDecimal priceEvening;
    @Column(name = "price_weekend")
    private BigDecimal priceWeekend;
    @JoinColumn(name = "branch_id", referencedColumnName = "branch_id")
    @ManyToOne
    private Branches branchId;
    @OneToMany(mappedBy = "hallId")
    private Set<Bookings> bookingsSet;

    public EventHalls() {
    }

    public EventHalls(Integer hallId) {
        this.hallId = hallId;
    }

    public EventHalls(Integer hallId, String hallName) {
        this.hallId = hallId;
        this.hallName = hallName;
    }

    public Integer getHallId() {
        return hallId;
    }

    public void setHallId(Integer hallId) {
        this.hallId = hallId;
    }

    public String getHallName() {
        return hallName;
    }

    public void setHallName(String hallName) {
        this.hallName = hallName;
    }

    public Integer getCapacity() {
        return capacity;
    }

    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }

    public BigDecimal getPriceMorning() {
        return priceMorning;
    }

    public void setPriceMorning(BigDecimal priceMorning) {
        this.priceMorning = priceMorning;
    }

    public BigDecimal getPriceAfternoon() {
        return priceAfternoon;
    }

    public void setPriceAfternoon(BigDecimal priceAfternoon) {
        this.priceAfternoon = priceAfternoon;
    }

    public BigDecimal getPriceEvening() {
        return priceEvening;
    }

    public void setPriceEvening(BigDecimal priceEvening) {
        this.priceEvening = priceEvening;
    }

    public BigDecimal getPriceWeekend() {
        return priceWeekend;
    }

    public void setPriceWeekend(BigDecimal priceWeekend) {
        this.priceWeekend = priceWeekend;
    }

    public Branches getBranchId() {
        return branchId;
    }

    public void setBranchId(Branches branchId) {
        this.branchId = branchId;
    }

    @XmlTransient
    public Set<Bookings> getBookingsSet() {
        return bookingsSet;
    }

    public void setBookingsSet(Set<Bookings> bookingsSet) {
        this.bookingsSet = bookingsSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (hallId != null ? hallId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EventHalls)) {
            return false;
        }
        EventHalls other = (EventHalls) object;
        if ((this.hallId == null && other.hallId != null) || (this.hallId != null && !this.hallId.equals(other.hallId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mt.pojo.EventHalls[ hallId=" + hallId + " ]";
    }
    
}
