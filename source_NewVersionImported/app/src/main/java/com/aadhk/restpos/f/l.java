// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.content.Context;
import android.content.SharedPreferences;
import com.aadhk.product.library.c.b;

public final class l extends b
{

    public l(Context context)
    {
        super(context);
    }

    public final String b(String s1)
    {
        return a.getString(s1, "");
    }

    public final boolean c(String s1)
    {
        return a.getBoolean(s1, false);
    }

    public final boolean h()
    {
        return a.getBoolean("prefOrderingOption", false);
    }

    public final boolean i()
    {
        return a.getBoolean("showDefaultAccount", true);
    }

    public final boolean j()
    {
        return a.getBoolean("prefPrintVoidOrderItem", true);
    }

    public final boolean k()
    {
        return a.getBoolean("prefShowVoidOrderItem", false);
    }

    public final boolean l()
    {
        return a.getBoolean("prefReceiptItemSort", true);
    }

    public final boolean m()
    {
        return a.getBoolean("prefTakeOutCharge", false);
    }

    public final int n()
    {
        return a.getInt("prefTableDefaultPersonNum", 0);
    }

    public final String o()
    {
        return a.getString("pref_user_account", "");
    }

    public final boolean p()
    {
        return a.getBoolean("prefRememeberPassword", false);
    }

    public final String q()
    {
        return a.getString("prefOrderNumInitial", "A-00001");
    }

    public final String r()
    {
        return a.getString("prefOrderNum", "");
    }

    public final int s()
    {
        return Integer.parseInt(a.getString("prefSessionPeriod", "0"));
    }

    public final boolean t()
    {
        return a.getBoolean("requireWifi", false);
    }
}
