// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import android.os.Parcel;
import android.os.Parcelable;

public class OrderPayment
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    private double amount;
    private String cashierName;
    private double changeAmt;
    private long id;
    private long orderId;
    private double paid;
    private String paymentMethodName;
    private int paymentMethodType;
    private String paymentTime;

    public OrderPayment()
    {
    }

    protected OrderPayment(Parcel parcel)
    {
        id = parcel.readLong();
        orderId = parcel.readLong();
        amount = parcel.readDouble();
        paymentTime = parcel.readString();
        paymentMethodName = parcel.readString();
        paymentMethodType = parcel.readInt();
        cashierName = parcel.readString();
        changeAmt = parcel.readDouble();
        paid = parcel.readDouble();
    }

    public int describeContents()
    {
        return 0;
    }

    public double getAmount()
    {
        return amount;
    }

    public String getCashierName()
    {
        return cashierName;
    }

    public double getChangeAmt()
    {
        return changeAmt;
    }

    public long getId()
    {
        return id;
    }

    public long getOrderId()
    {
        return orderId;
    }

    public double getPaid()
    {
        return paid;
    }

    public String getPaymentMethodName()
    {
        return paymentMethodName;
    }

    public int getPaymentMethodType()
    {
        return paymentMethodType;
    }

    public String getPaymentTime()
    {
        return paymentTime;
    }

    public void setAmount(double d)
    {
        amount = d;
    }

    public void setCashierName(String s)
    {
        cashierName = s;
    }

    public void setChangeAmt(double d)
    {
        changeAmt = d;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setOrderId(long l)
    {
        orderId = l;
    }

    public void setPaid(double d)
    {
        paid = d;
    }

    public void setPaymentMethodName(String s)
    {
        paymentMethodName = s;
    }

    public void setPaymentMethodType(int i)
    {
        paymentMethodType = i;
    }

    public void setPaymentTime(String s)
    {
        paymentTime = s;
    }

    public final String toString()
    {
        return (new StringBuilder("OrderPayment [id=")).append(id).append(", orderId=").append(orderId).append(", amount=").append(amount).append(", paymentTime=").append(paymentTime).append(", paymentMethodName=").append(paymentMethodName).append(", paymentMethodType=").append(paymentMethodType).append(", cashierName=").append(cashierName).append(", changeAmt=").append(changeAmt).append(", paid=").append(paid).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeLong(id);
        parcel.writeLong(orderId);
        parcel.writeDouble(amount);
        parcel.writeString(paymentTime);
        parcel.writeString(paymentMethodName);
        parcel.writeInt(paymentMethodType);
        parcel.writeString(cashierName);
        parcel.writeDouble(changeAmt);
        parcel.writeDouble(paid);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final OrderPayment createFromParcel(Parcel parcel)
        {
            return new OrderPayment(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final OrderPayment[] newArray(int i)
        {
            return new OrderPayment[i];
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
