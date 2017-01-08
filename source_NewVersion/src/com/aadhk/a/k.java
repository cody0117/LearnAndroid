// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.a;


// Referenced classes of package com.aadhk.a:
//            d

public final class k
{

    int a;
    String b;

    public k(int i, String s)
    {
        a = i;
        if (s == null || s.trim().length() == 0)
        {
            b = d.a(i);
            return;
        } else
        {
            b = (new StringBuilder(String.valueOf(s))).append(" (response: ").append(d.a(i)).append(")").toString();
            return;
        }
    }

    public final boolean a()
    {
        return a == 0;
    }

    public final boolean b()
    {
        return !a();
    }

    public final String toString()
    {
        return (new StringBuilder("IabResult: ")).append(b).toString();
    }
}
