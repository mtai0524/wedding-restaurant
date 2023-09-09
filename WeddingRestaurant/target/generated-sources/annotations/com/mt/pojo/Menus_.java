package com.mt.pojo;

import com.mt.pojo.BookingMenus;
import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-09-09T06:18:51")
@StaticMetamodel(Menus.class)
public class Menus_ { 

    public static volatile SingularAttribute<Menus, String> image;
    public static volatile SingularAttribute<Menus, BigDecimal> menuPrice;
    public static volatile SingularAttribute<Menus, Integer> menuId;
    public static volatile SingularAttribute<Menus, String> description;
    public static volatile SingularAttribute<Menus, Integer> choose;
    public static volatile SingularAttribute<Menus, String> menuName;
    public static volatile SetAttribute<Menus, BookingMenus> bookingMenusSet;

}