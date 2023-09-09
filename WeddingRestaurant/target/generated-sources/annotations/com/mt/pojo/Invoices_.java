package com.mt.pojo;

import com.mt.pojo.Employees;
import com.mt.pojo.Payments;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-09-09T12:03:01")
@StaticMetamodel(Invoices.class)
public class Invoices_ { 

    public static volatile SingularAttribute<Invoices, Payments> paymentId;
    public static volatile SingularAttribute<Invoices, Integer> invoiceId;
    public static volatile SingularAttribute<Invoices, Employees> employeeId;
    public static volatile SingularAttribute<Invoices, Date> invoiceDate;

}