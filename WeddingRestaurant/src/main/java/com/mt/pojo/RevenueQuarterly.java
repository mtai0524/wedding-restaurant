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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author minh tai
 */
@Entity
@Table(name = "revenue_quarterly")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "RevenueQuarterly.findAll", query = "SELECT r FROM RevenueQuarterly r"),
    @NamedQuery(name = "RevenueQuarterly.findByQuarterlyRevenueId", query = "SELECT r FROM RevenueQuarterly r WHERE r.quarterlyRevenueId = :quarterlyRevenueId"),
    @NamedQuery(name = "RevenueQuarterly.findByYear", query = "SELECT r FROM RevenueQuarterly r WHERE r.year = :year"),
    @NamedQuery(name = "RevenueQuarterly.findByQuarter", query = "SELECT r FROM RevenueQuarterly r WHERE r.quarter = :quarter"),
    @NamedQuery(name = "RevenueQuarterly.findByQuaterlyRevenue", query = "SELECT r FROM RevenueQuarterly r WHERE r.quaterlyRevenue = :quaterlyRevenue")})
public class RevenueQuarterly implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "quarterly_revenue_id")
    private Integer quarterlyRevenueId;
    @Column(name = "year")
    private Integer year;
    @Size(max = 2)
    @Column(name = "quarter")
    private String quarter;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "quaterly_revenue")
    private BigDecimal quaterlyRevenue;

    public RevenueQuarterly() {
    }

    public RevenueQuarterly(Integer quarterlyRevenueId) {
        this.quarterlyRevenueId = quarterlyRevenueId;
    }

    public Integer getQuarterlyRevenueId() {
        return quarterlyRevenueId;
    }

    public void setQuarterlyRevenueId(Integer quarterlyRevenueId) {
        this.quarterlyRevenueId = quarterlyRevenueId;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public String getQuarter() {
        return quarter;
    }

    public void setQuarter(String quarter) {
        this.quarter = quarter;
    }

    public BigDecimal getQuaterlyRevenue() {
        return quaterlyRevenue;
    }

    public void setQuaterlyRevenue(BigDecimal quaterlyRevenue) {
        this.quaterlyRevenue = quaterlyRevenue;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (quarterlyRevenueId != null ? quarterlyRevenueId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RevenueQuarterly)) {
            return false;
        }
        RevenueQuarterly other = (RevenueQuarterly) object;
        if ((this.quarterlyRevenueId == null && other.quarterlyRevenueId != null) || (this.quarterlyRevenueId != null && !this.quarterlyRevenueId.equals(other.quarterlyRevenueId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mt.pojo.RevenueQuarterly[ quarterlyRevenueId=" + quarterlyRevenueId + " ]";
    }
    
}
