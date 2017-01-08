// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class CashRegister
{

    private double amount;
    private String date;
    private long id;
    private String note;
    private String time;
    private int tranxType;

    public CashRegister()
    {
    }

    public double getAmount()
    {
        return amount;
    }

    public String getDate()
    {
        return date;
    }

    public long getId()
    {
        return id;
    }

    public String getNote()
    {
        return note;
    }

    public String getTime()
    {
        return time;
    }

    public int getTranxType()
    {
        return tranxType;
    }

    public void setAmount(double d)
    {
        amount = d;
    }

    public void setDate(String s)
    {
        date = s;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setNote(String s)
    {
        note = s;
    }

    public void setTime(String s)
    {
        time = s;
    }

    public void setTranxType(int i)
    {
        tranxType = i;
    }

    public final String toString()
    {
        return (new StringBuilder("CashRegister [id=")).append(id).append(", amount=").append(amount).append(", tranxType=").append(tranxType).append(", date=").append(date).append(", time=").append(time).append(", note=").append(note).append("]").toString();
    }
}
