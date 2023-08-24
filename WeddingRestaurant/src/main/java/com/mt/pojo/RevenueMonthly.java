/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
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
@Table(name = "revenue_monthly")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "RevenueMonthly.findAll", query = "SELECT r FROM RevenueMonthly r"),
    @NamedQuery(name = "RevenueMonthly.findByMonthlyRevenueId", query = "SELECT r FROM RevenueMonthly r WHERE r.monthlyRevenueId = :monthlyRevenueId"),
    @NamedQuery(name = "RevenueMonthly.findByYear", query = "SELECT r FROM RevenueMonthly r WHERE r.year = :year"),
    @NamedQuery(name = "RevenueMonthly.findByMonth", query = "SELECT r FROM RevenueMonthly r WHERE r.month = :month"),
    @NamedQuery(name = "RevenueMonthly.findByMonthRevenue", query = "SELECT r FROM RevenueMonthly r WHERE r.monthRevenue = :monthRevenue")})
public class RevenueMonthly implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "monthly_revenue_id")
    private Integer monthlyRevenueId;
    @Column(name = "year")
    private Integer year;
    @Column(name = "month")
    private Integer month;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "month_revenue")
    private BigDecimal monthRevenue;

    public RevenueMonthly() {
    }

    public RevenueMonthly(Integer monthlyRevenueId) {
        this.monthlyRevenueId = monthlyRevenueId;
    }

    public Integer getMonthlyRevenueId() {
        return monthlyRevenueId;
    }

    public void setMonthlyRevenueId(Integer monthlyRevenueId) {
        this.monthlyRevenueId = monthlyRevenueId;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Integer getMonth() {
        return month;
    }

    public void setMonth(Integer month) {
        this.month = month;
    }

    public BigDecimal getMonthRevenue() {
        return monthRevenue;
    }

    public void setMonthRevenue(BigDecimal monthRevenue) {
        this.monthRevenue = monthRevenue;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (monthlyRevenueId != null ? monthlyRevenueId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RevenueMonthly)) {
            return false;
        }
        RevenueMonthly other = (RevenueMonthly) object;
        if ((this.monthlyRevenueId == null && other.monthlyRevenueId != null) || (this.monthlyRevenueId != null && !this.monthlyRevenueId.equals(other.monthlyRevenueId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mt.pojo.RevenueMonthly[ monthlyRevenueId=" + monthlyRevenueId + " ]";
    }
    
}
