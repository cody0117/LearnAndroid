// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class Field
{

    private long id;
    private String name;

    public Field()
    {
    }

    public Field(long l, String s)
    {
        id = l;
        name = s;
    }

    public long getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setName(String s)
    {
        name = s;
    }

    public final String toString()
    {
        return (new StringBuilder("Field [id=")).append(id).append(", name=").append(name).append("]").toString();
    }
}
