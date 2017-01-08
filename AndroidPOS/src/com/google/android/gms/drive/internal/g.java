// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import com.google.android.gms.internal.td;
import com.google.android.gms.internal.tf;

public final class g extends tf
{

    public int a;
    public String b;
    public long c;
    public long d;

    public g()
    {
        a = 1;
        b = "";
        c = -1L;
        d = -1L;
        m = null;
        n = -1;
    }

    protected final int a()
    {
        return super.a() + td.a(a) + td.b(2, b) + td.c(3, c) + td.c(4, d);
    }

    public final void a(td td1)
    {
        td1.a(1, a);
        td1.a(2, b);
        td1.b(3, c);
        td1.b(4, d);
        super.a(td1);
    }

    public final boolean equals(Object obj)
    {
        if (obj != this) goto _L2; else goto _L1
_L1:
        boolean flag1 = true;
_L4:
        return flag1;
_L2:
        g g1;
        boolean flag = obj instanceof g;
        flag1 = false;
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        g1 = (g)obj;
        int i = a;
        int j = g1.a;
        flag1 = false;
        if (i != j)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (b != null)
        {
            break; /* Loop/switch isn't completed */
        }
        String s = g1.b;
        flag1 = false;
        if (s != null)
        {
            continue; /* Loop/switch isn't completed */
        }
_L5:
        int k = c != g1.c;
        flag1 = false;
        if (k == 0)
        {
            int l = d != g1.d;
            flag1 = false;
            if (l == 0)
            {
                return a(g1);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!b.equals(g1.b))
        {
            return false;
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    public final int hashCode()
    {
        int i = 31 * (527 + a);
        int j;
        if (b == null)
        {
            j = 0;
        } else
        {
            j = b.hashCode();
        }
        return 31 * (31 * (31 * (j + i) + (int)(c ^ c >>> 32)) + (int)(d ^ d >>> 32)) + b();
    }
}
