package com.mt.pojo;

import com.mt.pojo.Bookings;
import com.mt.pojo.Menus;
import com.mt.pojo.Users;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-09-12T15:37:14")
@StaticMetamodel(BookingMenus.class)
public class BookingMenus_ { 

    public static volatile SingularAttribute<BookingMenus, Integer> bookingMenuId;
    public static volatile SingularAttribute<BookingMenus, Menus> menuId;
    public static volatile SingularAttribute<BookingMenus, Users> userId;
    public static volatile SingularAttribute<BookingMenus, Bookings> bookingId;

}