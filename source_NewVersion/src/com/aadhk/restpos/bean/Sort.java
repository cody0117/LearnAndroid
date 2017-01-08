// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class Sort
{

    private boolean desc;
    private int id;
    private String query;

    public Sort()
    {
    }

    public int getId()
    {
        return id;
    }

    public String getQuery()
    {
        return query;
    }

    public boolean isDesc()
    {
        return desc;
    }

    public void setDesc(boolean flag)
    {
        desc = flag;
    }

    public void setId(int i)
    {
        id = i;
    }

    public void setQuery(String s)
    {
        query = s;
    }

    public final String toString()
    {
        return (new StringBuilder("Sort [id=")).append(id).append(", desc=").append(desc).append(", query=").append(query).append("]").toString();
    }
}
