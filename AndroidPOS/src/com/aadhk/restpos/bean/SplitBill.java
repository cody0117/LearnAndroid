// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class SplitBill
{

    private double amount;
    private long id;
    private long orderId;
    private boolean paid;

    public SplitBill()
    {
    }

    public double getAmount()
    {
        return amount;
    }

    public long getId()
    {
        return id;
    }

    public long getOrderId()
    {
        return orderId;
    }

    public boolean isPaid()
    {
        return paid;
    }

    public void setAmount(double d)
    {
        amount = d;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setOrderId(long l)
    {
        orderId = l;
    }

    public void setPaid(boolean flag)
    {
        paid = flag;
    }

    public final String toString()
    {
        return (new StringBuilder("SplitBill [id=")).append(id).append(", orderId=").append(orderId).append(", amount=").append(amount).append(", paid=").append(paid).append("]").toString();
    }
}
