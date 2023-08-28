package com.mt.pojo;

import com.mt.pojo.Bookings;
import com.mt.pojo.Branches;
import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-08-28T16:16:10")
@StaticMetamodel(EventHalls.class)
public class EventHalls_ { 

    public static volatile SingularAttribute<EventHalls, Branches> branchId;
    public static volatile SingularAttribute<EventHalls, BigDecimal> priceAfternoon;
    public static volatile SingularAttribute<EventHalls, Integer> hallId;
    public static volatile SingularAttribute<EventHalls, BigDecimal> priceEvening;
    public static volatile SingularAttribute<EventHalls, BigDecimal> priceWeekend;
    public static volatile SetAttribute<EventHalls, Bookings> bookingsSet;
    public static volatile SingularAttribute<EventHalls, BigDecimal> priceMorning;
    public static volatile SingularAttribute<EventHalls, String> hallName;
    public static volatile SingularAttribute<EventHalls, Integer> capacity;

}