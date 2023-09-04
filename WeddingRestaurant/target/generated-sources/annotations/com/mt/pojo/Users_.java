package com.mt.pojo;

import com.mt.pojo.Bookings;
import com.mt.pojo.Feedbacks;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-09-04T11:18:26")
@StaticMetamodel(Users.class)
public class Users_ { 

    public static volatile SingularAttribute<Users, String> password;
    public static volatile SingularAttribute<Users, String> role;
    public static volatile SetAttribute<Users, Feedbacks> feedbacksSet;
    public static volatile SetAttribute<Users, Bookings> bookingsSet;
    public static volatile SingularAttribute<Users, String> avatar;
    public static volatile SingularAttribute<Users, Integer> userId;
    public static volatile SingularAttribute<Users, String> username;

}