// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class AppUpdate
{

    private String downloadLink;
    private int type;
    private String updateMessage;
    private int version;

    public AppUpdate()
    {
    }

    public String getDownloadLink()
    {
        return downloadLink;
    }

    public int getType()
    {
        return type;
    }

    public String getUpdateMessage()
    {
        return updateMessage;
    }

    public int getVersion()
    {
        return version;
    }

    public void setDownloadLink(String s)
    {
        downloadLink = s;
    }

    public void setType(int i)
    {
        type = i;
    }

    public void setUpdateMessage(String s)
    {
        updateMessage = s;
    }

    public void setVersion(int i)
    {
        version = i;
    }

    public final String toString()
    {
        return (new StringBuilder("Update [version=")).append(version).append(", downloadLink=").append(downloadLink).append(", updateMessage=").append(updateMessage).append(", type=").append(type).append("]").toString();
    }
}
