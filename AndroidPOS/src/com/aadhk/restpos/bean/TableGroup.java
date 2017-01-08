// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class TableGroup
{

    private String name;
    private int tableGroupId;

    public TableGroup()
    {
    }

    public String getName()
    {
        return name;
    }

    public int getTableGroupId()
    {
        return tableGroupId;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setTableGroupId(int i)
    {
        tableGroupId = i;
    }

    public final String toString()
    {
        return (new StringBuilder("TableGroup [tableGroupId=")).append(tableGroupId).append(", name=").append(name).append("]").toString();
    }
}
