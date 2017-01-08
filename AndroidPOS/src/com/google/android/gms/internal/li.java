// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;

// Referenced classes of package com.google.android.gms.internal:
//            lf

public final class li
{

    private final Object a;
    private int b;
    private int c;
    private final lf d;
    private final String e;

    private li(lf lf1, String s)
    {
        a = new Object();
        d = lf1;
        e = s;
    }

    public li(String s)
    {
        this(lf.a(), s);
    }

    public final Bundle a()
    {
        Bundle bundle;
        synchronized (a)
        {
            bundle = new Bundle();
            bundle.putInt("pmnli", b);
            bundle.putInt("pmnll", c);
        }
        return bundle;
    }

    public final void a(int i, int j)
    {
        synchronized (a)
        {
            b = i;
            c = j;
            d.a(e, this);
        }
    }
}
