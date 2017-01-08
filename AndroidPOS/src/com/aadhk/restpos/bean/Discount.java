// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class Discount
{

    private double amount;
    private int id;
    private boolean percentage;
    private String reason;

    public Discount()
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

    public String getReason()
    {
        return reason;
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

    public void setPercentage(boolean flag)
    {
        percentage = flag;
    }

    public void setReason(String s)
    {
        reason = s;
    }

    public final String toString()
    {
        return (new StringBuilder("Discount [id=")).append(id).append(", reason=").append(reason).append(", percentage=").append(percentage).append(", amount=").append(amount).append("]").toString();
    }
}
