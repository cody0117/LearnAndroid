// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;

// Referenced classes of package com.google.android.gms.internal:
//            tn, tk, td

public final class tg
{

    protected final int a;
    protected final Class b;
    public final int c;
    protected final boolean d;

    private int b(Object obj)
    {
        int i = tn.a(c);
        switch (a)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder("Unknown type ")).append(a).toString());

        case 10: // '\n'
            tk tk1 = (tk)obj;
            return 2 * td.c(i) + tk1.d();

        case 11: // '\013'
            return td.b(i, (tk)obj);
        }
    }

    private void b(Object obj, td td1)
    {
        td1.d(c);
        a;
        JVM INSTR tableswitch 10 11: default 36
    //                   10 73
    //                   11 102;
           goto _L1 _L2 _L3
_L1:
        IOException ioexception;
        throw new IllegalArgumentException((new StringBuilder("Unknown type ")).append(a).toString());
_L2:
        try
        {
            tk tk1 = (tk)obj;
            int i = tn.a(c);
            tk1.a(td1);
            td1.b(i, 4);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            throw new IllegalStateException(ioexception);
        }
_L3:
        td1.a((tk)obj);
        return;
    }

    final int a(Object obj)
    {
        int i = 0;
        if (d)
        {
            int j = Array.getLength(obj);
            for (int k = 0; k < j; k++)
            {
                if (Array.get(obj, k) != null)
                {
                    i += b(Array.get(obj, k));
                }
            }

        } else
        {
            i = b(obj);
        }
        return i;
    }

    final void a(Object obj, td td1)
    {
        if (d)
        {
            int i = Array.getLength(obj);
            for (int j = 0; j < i; j++)
            {
                Object obj1 = Array.get(obj, j);
                if (obj1 != null)
                {
                    b(obj1, td1);
                }
            }

        } else
        {
            b(obj, td1);
        }
    }
}
