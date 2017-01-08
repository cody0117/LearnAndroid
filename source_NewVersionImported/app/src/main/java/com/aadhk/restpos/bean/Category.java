// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class Category
{

    private long id;
    private String name;
    private int sequence;

    public Category()
    {
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
            Category category = (Category)obj;
            if (id != category.id)
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

    public String getName()
    {
        return name;
    }

    public int getSequence()
    {
        return sequence;
    }

    public final int hashCode()
    {
        return 31 + (int)(id ^ id >>> 32);
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setSequence(int i)
    {
        sequence = i;
    }

    public final String toString()
    {
        return (new StringBuilder("Category [id=")).append(id).append(", name=").append(name).append(", sequence=").append(sequence).append("]").toString();
    }
}
