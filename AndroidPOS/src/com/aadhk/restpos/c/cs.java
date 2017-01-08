// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import android.widget.TextView;

public class cs extends Dialog
{

    public Resources a;
    public SharedPreferences b;
    public Context c;
    public TextView d;

    public cs(Context context, int i)
    {
        super(context);
        requestWindowFeature(1);
        setCancelable(true);
        setContentView(i);
        c = context;
        a = context.getResources();
        b = PreferenceManager.getDefaultSharedPreferences(context);
        d = (TextView)findViewById(0x7f0900a3);
    }

    public void setTitle(int i)
    {
        d.setText(i);
    }

    public void setTitle(CharSequence charsequence)
    {
        d.setText(charsequence);
    }
}
