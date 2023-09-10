package com.mt.pojo;

import com.mt.pojo.BookingServices;
import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-09-10T21:20:40")
@StaticMetamodel(Services.class)
public class Services_ { 

    public static volatile SetAttribute<Services, BookingServices> bookingServicesSet;
    public static volatile SingularAttribute<Services, BigDecimal> servicePrice;
    public static volatile SingularAttribute<Services, String> description;
    public static volatile SingularAttribute<Services, Integer> serviceId;
    public static volatile SingularAttribute<Services, String> serviceName;
    public static volatile SingularAttribute<Services, String> serviceImg;

}