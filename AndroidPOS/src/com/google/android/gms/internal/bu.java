// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.a.c;
import com.google.android.gms.a.f;

// Referenced classes of package com.google.android.gms.internal:
//            bx, uc

public final class bu extends bx
{

    private final uc a;
    private final String b;
    private final String c;

    public bu(uc uc1, String s, String s1)
    {
        a = uc1;
        b = s;
        c = s1;
    }

    public final String a()
    {
        return b;
    }

    public final void a(c c1)
    {
        if (c1 == null)
        {
            return;
        } else
        {
            a.a((View)f.a(c1));
            return;
        }
    }

    public final String b()
    {
        return c;
    }

    public final void c()
    {
        a.t();
    }

    public final void d()
    {
        a.u();
    }
}
