// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            tk, th, ti, td

public abstract class tf extends tk
{

    protected th m;

    public tf()
    {
    }

    protected int a()
    {
        int i = 0;
        int j;
        if (m != null)
        {
            j = 0;
            for (; i < m.a(); i++)
            {
                j += m.a(i).a();
            }

        } else
        {
            j = 0;
        }
        return j;
    }

    public void a(td td)
    {
        if (m != null)
        {
            int i = 0;
            while (i < m.a()) 
            {
                m.a(i).a(td);
                i++;
            }
        }
    }

    protected final boolean a(tf tf1)
    {
        if (m == null || m.b())
        {
            return tf1.m == null || tf1.m.b();
        } else
        {
            return m.equals(tf1.m);
        }
    }

    protected final int b()
    {
        if (m == null || m.b())
        {
            return 0;
        } else
        {
            return m.hashCode();
        }
    }
}
