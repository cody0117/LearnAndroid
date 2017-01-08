// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class ReportItem
{

    private double amount;
    private int count;
    private long id;
    private String name;
    private int percentage;

    public ReportItem()
    {
    }

    public double getAmount()
    {
        return amount;
    }

    public int getCount()
    {
        return count;
    }

    public long getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public int getPercentage()
    {
        return percentage;
    }

    public void setAmount(double d)
    {
        amount = d;
    }

    public void setCount(int i)
    {
        count = i;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setPercentage(int i)
    {
        percentage = i;
    }

    public final String toString()
    {
        return (new StringBuilder("ReportItem [id=")).append(id).append(", name=").append(name).append(", count=").append(count).append(", amount=").append(amount).append(", percentage=").append(percentage).append("]").toString();
    }
}
