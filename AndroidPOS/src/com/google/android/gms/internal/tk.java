// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            tl, td

public abstract class tk
{

    protected volatile int n;

    public tk()
    {
        n = -1;
    }

    protected int a()
    {
        return 0;
    }

    public void a(td td)
    {
    }

    public final int c()
    {
        if (n < 0)
        {
            d();
        }
        return n;
    }

    public final int d()
    {
        int i = a();
        n = i;
        return i;
    }

    public final String toString()
    {
        return tl.a(this);
    }
}
