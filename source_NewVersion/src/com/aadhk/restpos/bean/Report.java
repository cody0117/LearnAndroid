// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import java.util.ArrayList;
import java.util.List;

public class Report
{

    private int id;
    private String name;
    private List reportItems;

    public Report()
    {
        reportItems = new ArrayList();
    }

    public int getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public List getReportItems()
    {
        return reportItems;
    }

    public void setId(int i)
    {
        id = i;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setReportItems(List list)
    {
        reportItems = list;
    }

    public final String toString()
    {
        return (new StringBuilder("Report [id=")).append(id).append(", name=").append(name).append(", reportItems=").append(reportItems).append("]").toString();
    }
}
