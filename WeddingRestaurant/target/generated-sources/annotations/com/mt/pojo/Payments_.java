package com.mt.pojo;

import com.mt.pojo.Bookings;
import com.mt.pojo.Invoices;
import java.math.BigDecimal;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-08-27T14:50:06")
@StaticMetamodel(Payments.class)
public class Payments_ { 

    public static volatile SetAttribute<Payments, Invoices> invoicesSet;
    public static volatile SingularAttribute<Payments, BigDecimal> amount;
    public static volatile SingularAttribute<Payments, Integer> paymentId;
    public static volatile SingularAttribute<Payments, String> paymentMethod;
    public static volatile SingularAttribute<Payments, Date> paymentDate;
    public static volatile SingularAttribute<Payments, Bookings> bookingId;

}