// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import java.util.Arrays;

final class e
{

    public final String a;
    public final Object b;

    e(String s, Object obj)
    {
        a = s;
        b = obj;
    }

    public final boolean equals(Object obj)
    {
        e e1;
        if (obj instanceof e)
        {
            if (a.equals((e1 = (e)obj).a) && b.equals(e1.b))
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        Integer ainteger[] = new Integer[2];
        ainteger[0] = Integer.valueOf(a.hashCode());
        ainteger[1] = Integer.valueOf(b.hashCode());
        return Arrays.hashCode(ainteger);
    }

    public final String toString()
    {
        return (new StringBuilder("Key: ")).append(a).append(" value: ").append(b.toString()).toString();
    }
}
