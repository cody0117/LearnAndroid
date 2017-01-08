// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import java.util.ArrayList;
import java.util.List;

public class SetmealItem
{

    private long groupId;
    private long id;
    private long itemId;
    private String name;
    private int num;
    private double price;
    private List setmealSupplements;

    public SetmealItem()
    {
        setmealSupplements = new ArrayList();
    }

    public final boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        SetmealItem setmealitem;
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        setmealitem = (SetmealItem)obj;
        if (id != setmealitem.id)
        {
            return false;
        }
        if (name != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (setmealitem.name == null) goto _L1; else goto _L3
_L3:
        return false;
        if (name.equals(setmealitem.name)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public long getGroupId()
    {
        return groupId;
    }

    public long getId()
    {
        return id;
    }

    public long getItemId()
    {
        return itemId;
    }

    public String getName()
    {
        return name;
    }

    public int getNum()
    {
        return num;
    }

    public double getPrice()
    {
        return price;
    }

    public List getSetmealSupplements()
    {
        return setmealSupplements;
    }

    public final int hashCode()
    {
        int i = 31 * (31 + (int)(id ^ id >>> 32));
        int j;
        if (name == null)
        {
            j = 0;
        } else
        {
            j = name.hashCode();
        }
        return j + i;
    }

    public void setGroupId(long l)
    {
        groupId = l;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setItemId(long l)
    {
        itemId = l;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setNum(int i)
    {
        num = i;
    }

    public void setPrice(double d)
    {
        price = d;
    }

    public void setSetmealSupplements(List list)
    {
        setmealSupplements = list;
    }

    public final String toString()
    {
        return (new StringBuilder("SetmealItem [id=")).append(id).append(", itemId=").append(itemId).append(", groupId=").append(groupId).append(", name=").append(name).append(", price=").append(price).append(", num=").append(num).append(", setmealSupplements=").append(setmealSupplements).append("]").toString();
    }
}
