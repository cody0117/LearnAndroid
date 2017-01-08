// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;

// Referenced classes of package com.google.android.gms.internal:
//            av

public final class lg
{

    private final Object a = new Object();
    private final String b;
    private int c;
    private long d;
    private long e;
    private int f;
    private int g;

    public lg(String s)
    {
        c = 0;
        d = -1L;
        e = -1L;
        f = 0;
        g = -1;
        b = s;
    }

    private static boolean a(Context context)
    {
        int i = context.getResources().getIdentifier("Theme.Translucent", "style", "android");
        if (i != 0)
        {
            ComponentName componentname = new ComponentName(context.getPackageName(), "com.google.android.gms.ads.AdActivity");
            int j;
            try
            {
                j = context.getPackageManager().getActivityInfo(componentname, 0).theme;
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                return false;
            }
            if (i == j)
            {
                return true;
            }
        }
        return false;
    }

    public final long a()
    {
        return e;
    }

    public final Bundle a(Context context, String s)
    {
        Bundle bundle;
        synchronized (a)
        {
            bundle = new Bundle();
            bundle.putString("session_id", b);
            bundle.putLong("basets", e);
            bundle.putLong("currts", d);
            bundle.putString("seq_num", s);
            bundle.putInt("preqs", g);
            bundle.putInt("pclick", c);
            bundle.putInt("pimp", f);
            bundle.putBoolean("support_transparent_background", a(context));
        }
        return bundle;
    }

    public final void a(av av1, long l)
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        if (e != -1L)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        e = l;
        d = e;
_L2:
        if (av1.c == null || av1.c.getInt("gw", 2) != 1)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        return;
        d = l;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
        g = 1 + g;
        obj;
        JVM INSTR monitorexit ;
    }

    public final void b()
    {
        synchronized (a)
        {
            c = 1 + c;
        }
    }

    public final void c()
    {
        synchronized (a)
        {
            f = 1 + f;
        }
    }
}
