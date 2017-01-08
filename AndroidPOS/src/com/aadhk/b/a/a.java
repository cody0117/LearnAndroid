// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.b.a;

import android.app.Dialog;
import android.content.Context;
import android.widget.TextView;
import com.aadhk.b.f;

public class a extends Dialog
{

    protected Context a;
    protected TextView b;

    public a(Context context, int i)
    {
        super(context);
        requestWindowFeature(1);
        setCancelable(true);
        setContentView(i);
        a = context;
        b = (TextView)findViewById(f.b);
    }

    public void setTitle(int i)
    {
        b.setText(i);
    }

    public void setTitle(CharSequence charsequence)
    {
        b.setText(charsequence);
    }
}
