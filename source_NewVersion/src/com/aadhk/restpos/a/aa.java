// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.widget.BaseAdapter;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.Company;

public abstract class aa extends BaseAdapter
{

    public Context a;
    public LayoutInflater b;
    public Resources c;
    public String d;
    public SharedPreferences e;
    public Company f;
    public int g;

    public aa(Context context)
    {
        a = context;
        b = LayoutInflater.from(context);
        c = context.getResources();
        e = PreferenceManager.getDefaultSharedPreferences(context);
        f = ((POSApp)context.getApplicationContext()).b();
        d = f.getCurrencySign();
        g = f.getDecimalPlace();
    }
}
