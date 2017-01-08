// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Arrays;

public final class on
{

    public final int a;
    public final int b;

    public on(int i, int j)
    {
        a = i;
        b = j;
    }

    public final boolean equals(Object obj)
    {
        if (obj instanceof on)
        {
            if (this == obj)
            {
                return true;
            }
            on on1 = (on)obj;
            if (on1.a == a && on1.b == b)
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(a);
        aobj[1] = Integer.valueOf(b);
        return Arrays.hashCode(aobj);
    }
}
