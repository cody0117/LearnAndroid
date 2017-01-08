// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import com.google.android.gms.a.c;
import com.google.android.gms.a.f;

// Referenced classes of package com.google.android.gms.internal:
//            ck, cg, cf

public final class ce extends ck
    implements cg
{

    private final String a;
    private final Drawable b;
    private final String c;
    private final Drawable d;
    private final String e;
    private final String f;
    private final Object g = new Object();
    private cf h;

    public ce(String s, Drawable drawable, String s1, Drawable drawable1, String s2, String s3)
    {
        a = s;
        b = drawable;
        c = s1;
        d = drawable1;
        e = s2;
        f = s3;
    }

    public final String a()
    {
        return a;
    }

    public final void a(int i)
    {
label0:
        {
            synchronized (g)
            {
                if (h != null)
                {
                    break label0;
                }
            }
            return;
        }
        h.a("1", i);
        obj;
        JVM INSTR monitorexit ;
    }

    public final void a(cf cf1)
    {
        synchronized (g)
        {
            h = cf1;
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

    public final String f()
    {
        return f;
    }

    public final void g()
    {
label0:
        {
            synchronized (g)
            {
                if (h != null)
                {
                    break label0;
                }
            }
            return;
        }
        h.a();
        obj;
        JVM INSTR monitorexit ;
    }
}
