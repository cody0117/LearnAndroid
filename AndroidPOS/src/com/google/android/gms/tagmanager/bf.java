// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;


final class bf extends Number
    implements Comparable
{

    private double a;
    private long b;
    private boolean c;

    private bf()
    {
        b = 0L;
        c = true;
    }

    private int a(bf bf1)
    {
        if (c && bf1.c)
        {
            return (new Long(b)).compareTo(Long.valueOf(bf1.b));
        } else
        {
            return Double.compare(doubleValue(), bf1.doubleValue());
        }
    }

    public static bf a()
    {
        return new bf();
    }

    public final boolean b()
    {
        return !c;
    }

    public final byte byteValue()
    {
        return (byte)(int)longValue();
    }

    public final boolean c()
    {
        return c;
    }

    public final int compareTo(Object obj)
    {
        return a((bf)obj);
    }

    public final double doubleValue()
    {
        if (c)
        {
            return (double)b;
        } else
        {
            return a;
        }
    }

    public final boolean equals(Object obj)
    {
        return (obj instanceof bf) && a((bf)obj) == 0;
    }

    public final float floatValue()
    {
        return (float)doubleValue();
    }

    public final int hashCode()
    {
        return (new Long(longValue())).hashCode();
    }

    public final int intValue()
    {
        return (int)longValue();
    }

    public final long longValue()
    {
        if (c)
        {
            return b;
        } else
        {
            return (long)a;
        }
    }

    public final short shortValue()
    {
        return (short)(int)longValue();
    }

    public final String toString()
    {
        if (c)
        {
            return Long.toString(b);
        } else
        {
            return Double.toString(a);
        }
    }
}
