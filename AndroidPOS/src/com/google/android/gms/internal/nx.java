// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;

// Referenced classes of package com.google.android.gms.internal:
//            nz, ob, od, og, 
//            of

public abstract class nx
{

    private static final Object c = new Object();
    private static of d = null;
    protected final String a;
    protected final Object b;
    private Object e;

    protected nx(String s, Object obj)
    {
        e = null;
        a = s;
        b = obj;
    }

    public static nx a(String s)
    {
        return new nz(s, Boolean.valueOf(false));
    }

    public static nx a(String s, Integer integer)
    {
        return new ob(s, integer);
    }

    public static nx a(String s, String s1)
    {
        return new od(s, s1);
    }

    public static void a(Context context)
    {
        synchronized (c)
        {
            if (d == null)
            {
                d = new og(context.getContentResolver());
            }
        }
    }

    public final String a()
    {
        return a;
    }

}
