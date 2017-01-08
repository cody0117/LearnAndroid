// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.aadhk.product.library.c.b;
import com.aadhk.restpos.bean.License;

public final class r extends b
{

    public r(Context context)
    {
        super(context);
    }

    public final boolean A()
    {
        return a.getBoolean("prefDisplayWaiterName", true);
    }

    public final boolean B()
    {
        return a.getBoolean("prefDisplayOrderNumber", true);
    }

    public final boolean C()
    {
        return a.getBoolean("prefDisplayTaxNumber", true);
    }

    public final boolean D()
    {
        return a.getBoolean("prefDisplayOrderTime", true);
    }

    public final boolean E()
    {
        return a.getBoolean("prefDisplayEnableTip", true);
    }

    public final int F()
    {
        return a.getInt("redMinutes", 15);
    }

    public final int G()
    {
        return a.getInt("greenMinutes", 10);
    }

    public final int H()
    {
        return a.getInt("yellowMinutes", 5);
    }

    public final int I()
    {
        return a.getInt("fontSize", 22);
    }

    public final int J()
    {
        return a.getInt("refresh", 5000);
    }

    public final void a(License license)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putString("licenseActivationKey", license.getActivationKey());
        editor.putString("licenseDeviceNumber", license.getSerialNumber());
        editor.putString("licenseUserName", license.getUserName());
        editor.putString("licensePhone", license.getPhone());
        editor.putString("licenseEmail", license.getEmail());
        editor.putString("licenseItemId", license.getItem());
        editor.putString("licenseInstalledDate", license.getInstalledDate());
        editor.putString("licenseDeviceModel", license.getDeviceModel());
        editor.putString("licenseDeviceLocale", license.getLocale());
        editor.commit();
    }

    public final boolean b(String s1)
    {
        return a.getBoolean(s1, false);
    }

    public final String d()
    {
        if (a.getBoolean("prefTimeFormat24", false))
        {
            return "HH:mm";
        } else
        {
            return "hh:mm a";
        }
    }

    public final boolean i()
    {
        return a.getBoolean("prefOrderingOption", false);
    }

    public final boolean j()
    {
        return a.getBoolean("showDefaultAccount", true);
    }

    public final boolean k()
    {
        return a.getBoolean("prefPrintVoidOrderItem", true);
    }

    public final boolean l()
    {
        return a.getBoolean("prefShowVoidOrderItem", false);
    }

    public final boolean m()
    {
        return a.getBoolean("prefReceiptItemSort", true);
    }

    public final int n()
    {
        return a.getInt("prefTableDefaultPersonNum", 0);
    }

    public final int o()
    {
        return a.getInt("prefItemFontSize", 16);
    }

    public final String p()
    {
        return a.getString("pref_user_password", "");
    }

    public final boolean q()
    {
        return a.getBoolean("prefRememeberPassword", false);
    }

    public final String r()
    {
        return a.getString("prefOrderNumPrefix", "");
    }

    public final String s()
    {
        return a.getString("prefOrderNumInitial", "00001");
    }

    public final String t()
    {
        return a.getString("prefOrderNumSuffix", "");
    }

    public final String u()
    {
        return a.getString("prefOrderNum", "");
    }

    public final boolean v()
    {
        return a.getBoolean("enableServer", false);
    }

    public final String w()
    {
        return a.getString("serverIp", "192.168.1.220");
    }

    public final String x()
    {
        return a.getString("licenseInstalledDate", "");
    }

    public final License y()
    {
        License license = new License();
        license.setActivationKey(a.getString("licenseActivationKey", ""));
        license.setSerialNumber(a.getString("licenseDeviceNumber", ""));
        license.setUserName(a.getString("licenseUserName", ""));
        license.setPhone(a.getString("licensePhone", ""));
        license.setEmail(a.getString("licenseEmail", ""));
        license.setInstalledDate(a.getString("licenseInstalledDate", ""));
        license.setItem(a.getString("licenseItemId", ""));
        license.setDeviceModel(a.getString("licenseDeviceModel", ""));
        license.setLocale(a.getString("licenseDeviceLocale", ""));
        return license;
    }

    public final boolean z()
    {
        return a.getBoolean("prefDisplayTableName", true);
    }
}
