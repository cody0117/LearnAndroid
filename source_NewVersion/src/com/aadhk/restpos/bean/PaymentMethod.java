// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class PaymentMethod
{

    private int id;
    private String name;
    private boolean openDrawer;
    private String rounding;
    private int type;

    public PaymentMethod()
    {
    }

    public int getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public String getRounding()
    {
        return rounding;
    }

    public int getType()
    {
        return type;
    }

    public boolean isOpenDrawer()
    {
        return openDrawer;
    }

    public void setId(int i)
    {
        id = i;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setOpenDrawer(boolean flag)
    {
        openDrawer = flag;
    }

    public void setRounding(String s)
    {
        rounding = s;
    }

    public void setType(int i)
    {
        type = i;
    }

    public final String toString()
    {
        return (new StringBuilder("PaymentType [id=")).append(id).append(", name=").append(name).append(", type=").append(type).append(", rounding=").append(rounding).append(", openDrawer=").append(openDrawer).append("]").toString();
    }
}
