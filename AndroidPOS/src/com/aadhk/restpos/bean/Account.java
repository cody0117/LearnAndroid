// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class Account
{

    private String createDate;
    private String email;
    private String licenseKey;
    private String name;
    private String password;
    private String phoneNum;

    public Account()
    {
    }

    public String getCreateDate()
    {
        return createDate;
    }

    public String getEmail()
    {
        return email;
    }

    public String getLicenseKey()
    {
        return licenseKey;
    }

    public String getName()
    {
        return name;
    }

    public String getPassword()
    {
        return password;
    }

    public String getPhoneNum()
    {
        return phoneNum;
    }

    public void setCreateDate(String s)
    {
        createDate = s;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setLicenseKey(String s)
    {
        licenseKey = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setPassword(String s)
    {
        password = s;
    }

    public void setPhoneNum(String s)
    {
        phoneNum = s;
    }
}
