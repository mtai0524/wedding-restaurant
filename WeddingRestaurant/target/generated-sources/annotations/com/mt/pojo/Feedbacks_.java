package com.mt.pojo;

import com.mt.pojo.Users;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-08-28T16:16:10")
@StaticMetamodel(Feedbacks.class)
public class Feedbacks_ { 

    public static volatile SingularAttribute<Feedbacks, Date> date;
    public static volatile SingularAttribute<Feedbacks, Integer> feedbackId;
    public static volatile SingularAttribute<Feedbacks, Users> userId;
    public static volatile SingularAttribute<Feedbacks, String> content;

}