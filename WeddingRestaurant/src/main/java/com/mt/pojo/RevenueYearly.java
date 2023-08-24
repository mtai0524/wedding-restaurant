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
@Table(name = "revenue_yearly")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "RevenueYearly.findAll", query = "SELECT r FROM RevenueYearly r"),
    @NamedQuery(name = "RevenueYearly.findByYearlyRevenueId", query = "SELECT r FROM RevenueYearly r WHERE r.yearlyRevenueId = :yearlyRevenueId"),
    @NamedQuery(name = "RevenueYearly.findByYear", query = "SELECT r FROM RevenueYearly r WHERE r.year = :year"),
    @NamedQuery(name = "RevenueYearly.findByYearRevenue", query = "SELECT r FROM RevenueYearly r WHERE r.yearRevenue = :yearRevenue")})
public class RevenueYearly implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "yearly_revenue_id")
    private Integer yearlyRevenueId;
    @Column(name = "year")
    private Integer year;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "year_revenue")
    private BigDecimal yearRevenue;

    public RevenueYearly() {
    }

    public RevenueYearly(Integer yearlyRevenueId) {
        this.yearlyRevenueId = yearlyRevenueId;
    }

    public Integer getYearlyRevenueId() {
        return yearlyRevenueId;
    }

    public void setYearlyRevenueId(Integer yearlyRevenueId) {
        this.yearlyRevenueId = yearlyRevenueId;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public BigDecimal getYearRevenue() {
        return yearRevenue;
    }

    public void setYearRevenue(BigDecimal yearRevenue) {
        this.yearRevenue = yearRevenue;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (yearlyRevenueId != null ? yearlyRevenueId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RevenueYearly)) {
            return false;
        }
        RevenueYearly other = (RevenueYearly) object;
        if ((this.yearlyRevenueId == null && other.yearlyRevenueId != null) || (this.yearlyRevenueId != null && !this.yearlyRevenueId.equals(other.yearlyRevenueId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mt.pojo.RevenueYearly[ yearlyRevenueId=" + yearlyRevenueId + " ]";
    }
    
}
