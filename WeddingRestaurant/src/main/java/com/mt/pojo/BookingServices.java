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
@Table(name = "booking_services")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "BookingServices.findAll", query = "SELECT b FROM BookingServices b"),
    @NamedQuery(name = "BookingServices.findByBookingServiceId", query = "SELECT b FROM BookingServices b WHERE b.bookingServiceId = :bookingServiceId")})
public class BookingServices implements Serializable {

    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    @ManyToOne
    private Users userId;

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "booking_service_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Integer bookingServiceId;
    @JoinColumn(name = "booking_id", referencedColumnName = "booking_id")
    @ManyToOne
    private Bookings bookingId;
    @JoinColumn(name = "service_id", referencedColumnName = "service_id")
    @ManyToOne
    private Services serviceId;

    public BookingServices() {
    }

    public BookingServices(Integer bookingServiceId) {
        this.bookingServiceId = bookingServiceId;
    }

    public Integer getBookingServiceId() {
        return bookingServiceId;
    }

    public void setBookingServiceId(Integer bookingServiceId) {
        this.bookingServiceId = bookingServiceId;
    }

    public Bookings getBookingId() {
        return bookingId;
    }

    public void setBookingId(Bookings bookingId) {
        this.bookingId = bookingId;
    }

    public Services getServiceId() {
        return serviceId;
    }

    public void setServiceId(Services serviceId) {
        this.serviceId = serviceId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (bookingServiceId != null ? bookingServiceId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BookingServices)) {
            return false;
        }
        BookingServices other = (BookingServices) object;
        if ((this.bookingServiceId == null && other.bookingServiceId != null) || (this.bookingServiceId != null && !this.bookingServiceId.equals(other.bookingServiceId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mt.pojo.BookingServices[ bookingServiceId=" + bookingServiceId + " ]";
    }

    public Users getUserId() {
        return userId;
    }

    public void setUserId(Users userId) {
        this.userId = userId;
    }
    
}
