// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.me;

public final class d
{

    public static final d a = new d(320, 50, "320x50_mb");
    public static final d b = new d(468, 60, "468x60_as");
    public static final d c = new d(320, 100, "320x100_as");
    public static final d d = new d(728, 90, "728x90_as");
    public static final d e = new d(300, 250, "300x250_as");
    public static final d f = new d(160, 600, "160x600_as");
    public static final d g = new d(-1, -2, "smart_banner");
    private final int h;
    private final int i;
    private final String j;

    public d(int k, int l)
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s;
        StringBuilder stringbuilder1;
        String s1;
        if (k == -1)
        {
            s = "FULL";
        } else
        {
            s = String.valueOf(k);
        }
        stringbuilder1 = stringbuilder.append(s).append("x");
        if (l == -2)
        {
            s1 = "AUTO";
        } else
        {
            s1 = String.valueOf(l);
        }
        this(k, l, stringbuilder1.append(s1).append("_as").toString());
    }

    d(int k, int l, String s)
    {
        if (k < 0 && k != -1)
        {
            throw new IllegalArgumentException((new StringBuilder("Invalid width for AdSize: ")).append(k).toString());
        }
        if (l < 0 && l != -2)
        {
            throw new IllegalArgumentException((new StringBuilder("Invalid height for AdSize: ")).append(l).toString());
        } else
        {
            h = k;
            i = l;
            j = s;
            return;
        }
    }

    public final int a()
    {
        return i;
    }

    public final int a(Context context)
    {
        if (i == -2)
        {
            return ay.b(context.getResources().getDisplayMetrics());
        } else
        {
            return me.a(context, i);
        }
    }

    public final int b()
    {
        return h;
    }

    public final int b(Context context)
    {
        if (h == -1)
        {
            return ay.a(context.getResources().getDisplayMetrics());
        } else
        {
            return me.a(context, h);
        }
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof d))
            {
                return false;
            }
            d d1 = (d)obj;
            if (h != d1.h || i != d1.i || !j.equals(d1.j))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return j.hashCode();
    }

    public final String toString()
    {
        return j;
    }

}
