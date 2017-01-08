// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class CloseOutCashRegister
{

    private String date;
    private long id;
    private String lastTime;
    private double nextAmount;
    private double startAmount;
    private String time;

    public CloseOutCashRegister()
    {
    }

    public String getDate()
    {
        return date;
    }

    public long getId()
    {
        return id;
    }

    public String getLastTime()
    {
        return lastTime;
    }

    public double getNextAmount()
    {
        return nextAmount;
    }

    public double getStartAmount()
    {
        return startAmount;
    }

    public String getTime()
    {
        return time;
    }

    public void setDate(String s)
    {
        date = s;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setLastTime(String s)
    {
        lastTime = s;
    }

    public void setNextAmount(double d)
    {
        nextAmount = d;
    }

    public void setStartAmount(double d)
    {
        startAmount = d;
    }

    public void setTime(String s)
    {
        time = s;
    }

    public final String toString()
    {
        return (new StringBuilder("ColseOutCashRegister [id=")).append(id).append(", startAmount=").append(startAmount).append(", nextAmount=").append(nextAmount).append(", date=").append(date).append(", time=").append(time).append(", lastTime=").append(lastTime).append("]").toString();
    }
}
