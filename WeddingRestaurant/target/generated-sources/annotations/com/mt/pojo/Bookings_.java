package com.mt.pojo;

import com.mt.pojo.BookingMenus;
import com.mt.pojo.BookingServices;
import com.mt.pojo.EventHalls;
import com.mt.pojo.Payments;
import com.mt.pojo.Users;
import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-09-12T15:37:14")
@StaticMetamodel(Bookings.class)
public class Bookings_ { 

    public static volatile SetAttribute<Bookings, BookingServices> bookingServicesSet;
    public static volatile SingularAttribute<Bookings, EventHalls> hallId;
    public static volatile SingularAttribute<Bookings, BigDecimal> bookingPrice;
    public static volatile SetAttribute<Bookings, Payments> paymentsSet;
    public static volatile SingularAttribute<Bookings, Users> userId;
    public static volatile SingularAttribute<Bookings, Integer> bookingId;
    public static volatile SingularAttribute<Bookings, Integer> eventDate;
    public static volatile SetAttribute<Bookings, BookingMenus> bookingMenusSet;

}