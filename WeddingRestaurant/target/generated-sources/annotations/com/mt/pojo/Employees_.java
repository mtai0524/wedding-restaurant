package com.mt.pojo;

import com.mt.pojo.Branches;
import com.mt.pojo.Invoices;
import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-09-02T18:23:26")
@StaticMetamodel(Employees.class)
public class Employees_ { 

    public static volatile SetAttribute<Employees, Invoices> invoicesSet;
    public static volatile SingularAttribute<Employees, Branches> branchId;
    public static volatile SingularAttribute<Employees, String> fullName;
    public static volatile SingularAttribute<Employees, Integer> employeeId;
    public static volatile SingularAttribute<Employees, String> position;
    public static volatile SingularAttribute<Employees, BigDecimal> salary;

}