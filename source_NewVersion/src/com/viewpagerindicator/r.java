// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.viewpagerindicator;


public final class r extends Enum
{

    public static final r a;
    public static final r b;
    public static final r c;
    private static final r e[];
    public final int d;

    private r(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static r a(int i)
    {
        r ar[];
        int j;
        int k;
        ar = values();
        j = ar.length;
        k = 0;
_L6:
        if (k < j) goto _L2; else goto _L1
_L1:
        r r1 = null;
_L4:
        return r1;
_L2:
        r1 = ar[k];
        if (r1.d == i) goto _L4; else goto _L3
_L3:
        k++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static r valueOf(String s)
    {
        return (r)Enum.valueOf(com/viewpagerindicator/r, s);
    }

    public static r[] values()
    {
        r ar[] = e;
        int i = ar.length;
        r ar1[] = new r[i];
        System.arraycopy(ar, 0, ar1, 0, i);
        return ar1;
    }

    static 
    {
        a = new r("None", 0, 0);
        b = new r("Triangle", 1, 1);
        c = new r("Underline", 2, 2);
        r ar[] = new r[3];
        ar[0] = a;
        ar[1] = b;
        ar[2] = c;
        e = ar;
    }
}
