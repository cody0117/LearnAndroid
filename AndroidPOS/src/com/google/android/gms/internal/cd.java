// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import com.google.android.gms.a.c;
import com.google.android.gms.a.f;

// Referenced classes of package com.google.android.gms.internal:
//            ci, cg, cf

public final class cd extends ci
    implements cg
{

    private final String a;
    private final Drawable b;
    private final String c;
    private final Drawable d;
    private final String e;
    private final double f;
    private final String g;
    private final String h;
    private final Object i = new Object();
    private cf j;

    public cd(String s, Drawable drawable, String s1, Drawable drawable1, String s2, double d1, 
            String s3, String s4)
    {
        a = s;
        b = drawable;
        c = s1;
        d = drawable1;
        e = s2;
        f = d1;
        g = s3;
        h = s4;
    }

    public final String a()
    {
        return a;
    }

    public final void a(int k)
    {
label0:
        {
            synchronized (i)
            {
                if (j != null)
                {
                    break label0;
                }
            }
            return;
        }
        j.a("2", k);
        obj;
        JVM INSTR monitorexit ;
    }

    public final void a(cf cf1)
    {
        synchronized (i)
        {
            j = cf1;
        }
    }

    public final c b()
    {
        return com.google.android.gms.a.f.a(b);
    }

    public final String c()
    {
        return c;
    }

    public final c d()
    {
        return com.google.android.gms.a.f.a(d);
    }

    public final String e()
    {
        return e;
    }

    public final double f()
    {
        return f;
    }

    public final String g()
    {
        return g;
    }

    public final String h()
    {
        return h;
    }

    public final void i()
    {
label0:
        {
            synchronized (i)
            {
                if (j != null)
                {
                    break label0;
                }
            }
            return;
        }
        j.a();
        obj;
        JVM INSTR monitorexit ;
    }
}
