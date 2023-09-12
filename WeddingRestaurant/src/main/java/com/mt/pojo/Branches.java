/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
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
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author minh tai
 */
@Entity
@Table(name = "branches")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Branches.findAll", query = "SELECT b FROM Branches b"),
    @NamedQuery(name = "Branches.findByBranchId", query = "SELECT b FROM Branches b WHERE b.branchId = :branchId"),
    @NamedQuery(name = "Branches.findByBranchName", query = "SELECT b FROM Branches b WHERE b.branchName = :branchName"),
    @NamedQuery(name = "Branches.findByAddress", query = "SELECT b FROM Branches b WHERE b.address = :address"),
    @NamedQuery(name = "Branches.findByPhone", query = "SELECT b FROM Branches b WHERE b.phone = :phone")})
public class Branches implements Serializable {

    @Size(max = 255)
    @Column(name = "img")
    private String img;

    
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "branch_id")
    private Integer branchId;
    @Basic(optional = false)
    @Size(min = 5, max = 50, message = "{branch.branchName.lengthError}")
    @Column(name = "branch_name")
    private String branchName;
    @Size(min = 10, max = 50, message = "{branch.address.lengthError}")
    @Column(name = "address")
    private String address;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Size(min = 1, max = 10, message = "{branch.phone.lengthError}")
    @Column(name = "phone")
    private String phone;
    @JsonIgnore
    @OneToMany(mappedBy = "branchId")
    private Set<EventHalls> eventHallsSet;
    @OneToMany(mappedBy = "branchId")
    @JsonIgnore
    private Set<Employees> employeesSet;
    
    @NotNull(message = "{branch.file.nullError}")
    @Transient
    private MultipartFile file;

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }


    public Branches() {
    }

    public Branches(Integer branchId) {
        this.branchId = branchId;
    }

    public Branches(Integer branchId, String branchName, String address, String phone) {
        this.branchId = branchId;
        this.branchName = branchName;
        this.address = address;
        this.phone = phone;
    }

    public Integer getBranchId() {
        return branchId;
    }

    public void setBranchId(Integer branchId) {
        this.branchId = branchId;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @XmlTransient
    public Set<EventHalls> getEventHallsSet() {
        return eventHallsSet;
    }

    public void setEventHallsSet(Set<EventHalls> eventHallsSet) {
        this.eventHallsSet = eventHallsSet;
    }

    @XmlTransient
    public Set<Employees> getEmployeesSet() {
        return employeesSet;
    }

    public void setEmployeesSet(Set<Employees> employeesSet) {
        this.employeesSet = employeesSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (branchId != null ? branchId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Branches)) {
            return false;
        }
        Branches other = (Branches) object;
        if ((this.branchId == null && other.branchId != null) || (this.branchId != null && !this.branchId.equals(other.branchId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mt.pojo.Branches[ branchId=" + branchId + " ]";
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    
}
