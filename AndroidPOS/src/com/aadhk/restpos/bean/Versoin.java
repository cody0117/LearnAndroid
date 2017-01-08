// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class Versoin
{

    private String tableName;
    private long tableVersion;

    public Versoin()
    {
    }

    public String getTableName()
    {
        return tableName;
    }

    public long getTableVersion()
    {
        return tableVersion;
    }

    public void setTableName(String s)
    {
        tableName = s;
    }

    public void setTableVersion(long l)
    {
        tableVersion = l;
    }

    public final String toString()
    {
        return (new StringBuilder("VersoinDao [tableName=")).append(tableName).append(", version=").append(tableVersion).append("]").toString();
    }
}
