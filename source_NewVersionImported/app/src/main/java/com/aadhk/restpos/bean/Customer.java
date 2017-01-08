// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;

public class Customer
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private String address1;
    private String address2;
    private String address3;
    private String email;
    private double expenseAmount;
    private int id;
    private String name;
    private String tel;

    public Customer()
    {
    }

    protected Customer(Parcel parcel)
    {
        id = parcel.readInt();
        name = parcel.readString();
        address1 = parcel.readString();
        address2 = parcel.readString();
        address3 = parcel.readString();
        tel = parcel.readString();
        email = parcel.readString();
        expenseAmount = parcel.readDouble();
    }

    public int describeContents()
    {
        return 0;
    }

    public String getAddress1()
    {
        return address1;
    }

    public String getAddress2()
    {
        return address2;
    }

    public String getAddress3()
    {
        return address3;
    }

    public String getEmail()
    {
        return email;
    }

    public double getExpenseAmount()
    {
        return expenseAmount;
    }

    public int getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public String getTel()
    {
        return tel;
    }

    public void setAddress1(String s)
    {
        address1 = s;
    }

    public void setAddress2(String s)
    {
        address2 = s;
    }

    public void setAddress3(String s)
    {
        address3 = s;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setExpenseAmount(double d)
    {
        expenseAmount = d;
    }

    public void setId(int i)
    {
        id = i;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setTel(String s)
    {
        tel = s;
    }

    public final String toString()
    {
        return (new StringBuilder("Customer [id=")).append(id).append(", name=").append(name).append(", address1=").append(address1).append(", address2=").append(address2).append(", address3=").append(address3).append(", tel=").append(tel).append(", email=").append(email).append(", expenseAmount=").append(expenseAmount).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(id);
        parcel.writeString(name);
        parcel.writeString(address1);
        parcel.writeString(address2);
        parcel.writeString(address3);
        parcel.writeString(tel);
        parcel.writeString(email);
        parcel.writeDouble(expenseAmount);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final Customer createFromParcel(Parcel parcel)
        {
            return new Customer(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final Customer[] newArray(int i)
        {
            return new Customer[i];
        }

        public final volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

        _cls1()
        {
        }
    }

}
