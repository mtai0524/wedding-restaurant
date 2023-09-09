package com.mt.pojo;

import com.mt.pojo.Employees;
import com.mt.pojo.EventHalls;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-09-09T08:33:06")
@StaticMetamodel(Branches.class)
public class Branches_ { 

    public static volatile SingularAttribute<Branches, Integer> branchId;
    public static volatile SetAttribute<Branches, EventHalls> eventHallsSet;
    public static volatile SingularAttribute<Branches, String> img;
    public static volatile SingularAttribute<Branches, String> address;
    public static volatile SetAttribute<Branches, Employees> employeesSet;
    public static volatile SingularAttribute<Branches, String> phone;
    public static volatile SingularAttribute<Branches, String> branchName;

}