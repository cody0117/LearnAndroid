// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


public final class ao
{

    final long a;
    final String b;

    ao(long l, String s)
    {
        a = l;
        b = s;
    }

    public final boolean equals(Object obj)
    {
        while (obj == null || !(obj instanceof ao) || ((ao)obj).a != a) 
        {
            return false;
        }
        return true;
    }

    public final int hashCode()
    {
        return (int)a;
    }
}
