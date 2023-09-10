package com.mt.pojo;

import com.mt.pojo.Bookings;
import com.mt.pojo.Services;
import com.mt.pojo.Users;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-09-10T21:20:40")
@StaticMetamodel(BookingServices.class)
public class BookingServices_ { 

    public static volatile SingularAttribute<BookingServices, Integer> bookingServiceId;
    public static volatile SingularAttribute<BookingServices, Services> serviceId;
    public static volatile SingularAttribute<BookingServices, Users> userId;
    public static volatile SingularAttribute<BookingServices, Bookings> bookingId;

}