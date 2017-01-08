// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;


public class License
{

    private String activationKey;
    private String deviceModel;
    private String email;
    private boolean enable;
    private String installedDate;
    private String item;
    private String locale;
    private String phone;
    private int purchaseId;
    private String serialNumber;
    private String userName;

    public License()
    {
    }

    public String getActivationKey()
    {
        return activationKey;
    }

    public String getDeviceModel()
    {
        return deviceModel;
    }

    public String getEmail()
    {
        return email;
    }

    public String getInstalledDate()
    {
        return installedDate;
    }

    public String getItem()
    {
        return item;
    }

    public String getLocale()
    {
        return locale;
    }

    public String getPhone()
    {
        return phone;
    }

    public int getPurchaseId()
    {
        return purchaseId;
    }

    public String getSerialNumber()
    {
        return serialNumber;
    }

    public String getUserName()
    {
        return userName;
    }

    public boolean isEnable()
    {
        return enable;
    }

    public void setActivationKey(String s)
    {
        activationKey = s;
    }

    public void setDeviceModel(String s)
    {
        deviceModel = s;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setEnable(boolean flag)
    {
        enable = flag;
    }

    public void setInstalledDate(String s)
    {
        installedDate = s;
    }

    public void setItem(String s)
    {
        item = s;
    }

    public void setLocale(String s)
    {
        locale = s;
    }

    public void setPhone(String s)
    {
        phone = s;
    }

    public void setPurchaseId(int i)
    {
        purchaseId = i;
    }

    public void setSerialNumber(String s)
    {
        serialNumber = s;
    }

    public void setUserName(String s)
    {
        userName = s;
    }

    public final String toString()
    {
        return (new StringBuilder("License [userName=")).append(userName).append(", email=").append(email).append(", phone=").append(phone).append(", serialId=").append(serialNumber).append(", deviceModel=").append(deviceModel).append(", locale=").append(locale).append(", installedDate=").append(installedDate).append(", purchaseId=").append(purchaseId).append(", activationKey=").append(activationKey).append(", item=").append(item).append(", enable=").append(enable).append("]").toString();
    }
}
