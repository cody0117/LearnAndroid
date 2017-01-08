// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

public class b
{

    protected SharedPreferences a;

    public b(Context context)
    {
        a = PreferenceManager.getDefaultSharedPreferences(context);
    }

    public final void a(String s)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.remove(s);
        editor.commit();
    }

    public final void a(String s, int i)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt(s, i);
        editor.commit();
    }

    public final void a(String s, long l)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putLong(s, l);
        editor.commit();
    }

    public final void a(String s, String s1)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putString(s, s1);
        editor.commit();
    }

    public final void a(String s, boolean flag)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putBoolean(s, flag);
        editor.commit();
    }

    public final boolean a()
    {
        return a.getBoolean("prefAutoBackup", true);
    }

    public final boolean b()
    {
        return a.getBoolean("prefAutoBackupDropBox", false);
    }

    public final String c()
    {
        return a.getString("prefDateFormat", "yyyy-MM-dd");
    }

    public final int d()
    {
        return Integer.parseInt(a.getString("prefLang", "0"));
    }

    public final int e()
    {
        return Integer.parseInt(a.getString("prefFirstDayofWeek", "1"));
    }

    public final int f()
    {
        return Integer.parseInt(a.getString("prefPeriod", "4"));
    }

    public final String g()
    {
        return a.getString("prefLangSys", "Non");
    }
}
