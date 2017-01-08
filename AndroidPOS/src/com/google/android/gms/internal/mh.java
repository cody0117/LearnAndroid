// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;

public final class mh extends MutableContextWrapper
{

    private Activity a;
    private Context b;

    public mh(Context context)
    {
        super(context);
        setBaseContext(context);
    }

    public final Context a()
    {
        return a;
    }

    public final void setBaseContext(Context context)
    {
        b = context.getApplicationContext();
        Activity activity;
        if (context instanceof Activity)
        {
            activity = (Activity)context;
        } else
        {
            activity = null;
        }
        a = activity;
        super.setBaseContext(b);
    }

    public final void startActivity(Intent intent)
    {
        if (a != null)
        {
            a.startActivity(intent);
            return;
        } else
        {
            intent.setFlags(0x10000000);
            b.startActivity(intent);
            return;
        }
    }
}
