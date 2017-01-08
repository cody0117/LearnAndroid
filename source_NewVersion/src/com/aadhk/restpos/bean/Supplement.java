// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class Supplement
{

    private long id;
    private long itemid;
    private String name;
    private double price;
    private int qty;
    private int type;

    public Supplement()
    {
    }

    public Supplement(long l, String s, double d, int i)
    {
        itemid = l;
        name = s;
        price = d;
        type = i;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            Supplement supplement = (Supplement)obj;
            if (id != supplement.id)
            {
                return false;
            }
        }
        return true;
    }

    public long getId()
    {
        return id;
    }

    public long getItemid()
    {
        return itemid;
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

    public int getType()
    {
        return type;
    }

    public final int hashCode()
    {
        return 31 + (int)(id ^ id >>> 32);
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setItemid(long l)
    {
        itemid = l;
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

    public void setType(int i)
    {
        type = i;
    }

    public final String toString()
    {
        return (new StringBuilder("Supplement [id=")).append(id).append(", itemid=").append(itemid).append(", name=").append(name).append(", price=").append(price).append(", qty=").append(qty).append(", type=").append(type).append("]").toString();
    }
}
