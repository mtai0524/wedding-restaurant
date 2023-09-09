/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author minh tai
 */
@Entity
@Table(name = "bookings")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Bookings.findAll", query = "SELECT b FROM Bookings b"),
    @NamedQuery(name = "Bookings.findByBookingId", query = "SELECT b FROM Bookings b WHERE b.bookingId = :bookingId"),
    @NamedQuery(name = "Bookings.findByEventDate", query = "SELECT b FROM Bookings b WHERE b.eventDate = :eventDate"),
    @NamedQuery(name = "Bookings.findByBookingPrice", query = "SELECT b FROM Bookings b WHERE b.bookingPrice = :bookingPrice")})
public class Bookings implements Serializable {

    @Column(name = "event_date")
    private Integer eventDate;

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "booking_id")
    private Integer bookingId;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "booking_price")
    private BigDecimal bookingPrice;
    @OneToMany(mappedBy = "bookingId")
    private Set<BookingMenus> bookingMenusSet;
    @OneToMany(mappedBy = "bookingId")
    private Set<Payments> paymentsSet;
    @OneToMany(mappedBy = "bookingId")
    private Set<BookingServices> bookingServicesSet;
    @JoinColumn(name = "hall_id", referencedColumnName = "hall_id")
    @JsonIgnore
    @ManyToOne
    private EventHalls hallId;
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    @JsonIgnore
    @ManyToOne
    private Users userId;

    public Bookings() {
    }

    public Bookings(Integer bookingId) {
        this.bookingId = bookingId;
    }

    public Integer getBookingId() {
        return bookingId;
    }

    public void setBookingId(Integer bookingId) {
        this.bookingId = bookingId;
    }



    public BigDecimal getBookingPrice() {
        return bookingPrice;
    }

    public void setBookingPrice(BigDecimal bookingPrice) {
        this.bookingPrice = bookingPrice;
    }

    @XmlTransient
    public Set<BookingMenus> getBookingMenusSet() {
        return bookingMenusSet;
    }

    public void setBookingMenusSet(Set<BookingMenus> bookingMenusSet) {
        this.bookingMenusSet = bookingMenusSet;
    }

    @XmlTransient
    public Set<Payments> getPaymentsSet() {
        return paymentsSet;
    }

    public void setPaymentsSet(Set<Payments> paymentsSet) {
        this.paymentsSet = paymentsSet;
    }

    @XmlTransient
    public Set<BookingServices> getBookingServicesSet() {
        return bookingServicesSet;
    }

    public void setBookingServicesSet(Set<BookingServices> bookingServicesSet) {
        this.bookingServicesSet = bookingServicesSet;
    }

    public EventHalls getHallId() {
        return hallId;
    }

    public void setHallId(EventHalls hallId) {
        this.hallId = hallId;
    }

    public Users getUserId() {
        return userId;
    }

    public void setUserId(Users userId) {
        this.userId = userId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (bookingId != null ? bookingId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Bookings)) {
            return false;
        }
        Bookings other = (Bookings) object;
        if ((this.bookingId == null && other.bookingId != null) || (this.bookingId != null && !this.bookingId.equals(other.bookingId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mt.pojo.Bookings[ bookingId=" + bookingId + " ]";
    }


    public void setEventDate(Integer eventDate) {
        this.eventDate = eventDate;
    }
    
}
