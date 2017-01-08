// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.widget.BaseAdapter;

public abstract class a extends BaseAdapter
{

    public Context a;
    public LayoutInflater b;
    public Resources c;
    public int d;

    public a(Context context)
    {
        d = -1;
        a = context;
        b = LayoutInflater.from(context);
        c = context.getResources();
    }

    public final void a()
    {
        d = -1;
        notifyDataSetChanged();
    }

    public final void a(int i)
    {
        d = i;
        notifyDataSetChanged();
    }

    public abstract void a(int i, int j);

    public abstract void b();
}
