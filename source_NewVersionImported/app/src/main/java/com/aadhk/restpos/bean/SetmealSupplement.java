// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class SetmealSupplement
{

    private long id;
    private String name;
    private double price;
    private int qty;
    private long setmealItemId;
    private int type;

    public SetmealSupplement()
    {
    }

    public SetmealSupplement(long l, String s, double d, int i)
    {
        setmealItemId = l;
        name = s;
        price = d;
        type = i;
    }

    public long getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public double getPrice()
    {
        return price;
    }

    public int getQty()
    {
        return qty;
    }

    public long getSetmealItemId()
    {
        return setmealItemId;
    }

    public int getType()
    {
        return type;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setPrice(double d)
    {
        price = d;
    }

    public void setQty(int i)
    {
        qty = i;
    }

    public void setSetmealItemId(long l)
    {
        setmealItemId = l;
    }

    public void setType(int i)
    {
        type = i;
    }

    public final String toString()
    {
        return (new StringBuilder("SetmealSupplement [id=")).append(id).append(", setmealItemId=").append(setmealItemId).append(", name=").append(name).append(", price=").append(price).append(", qty=").append(qty).append(", type=").append(type).append("]").toString();
    }
}
