// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class ServiceFee
{

    private double amount;
    private int id;
    private String name;
    private boolean percentage;

    public ServiceFee()
    {
    }

    public double getAmount()
    {
        return amount;
    }

    public int getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public boolean isPercentage()
    {
        return percentage;
    }

    public void setAmount(double d)
    {
        amount = d;
    }

    public void setId(int i)
    {
        id = i;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setPercentage(boolean flag)
    {
        percentage = flag;
    }

    public final String toString()
    {
        return (new StringBuilder("Discount [id=")).append(id).append(", name=").append(name).append(", percentage=").append(percentage).append(", amount=").append(amount).append("]").toString();
    }
}
