// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.viewpagerindicator;


public final class s extends Enum
{

    public static final s a;
    public static final s b;
    private static final s d[];
    public final int c;

    private s(String s1, int i, int j)
    {
        super(s1, i);
        c = j;
    }

    public static s a(int i)
    {
        s as[];
        int j;
        int k;
        as = values();
        j = as.length;
        k = 0;
_L6:
        if (k < j) goto _L2; else goto _L1
_L1:
        s s1 = null;
_L4:
        return s1;
_L2:
        s1 = as[k];
        if (s1.c == i) goto _L4; else goto _L3
_L3:
        k++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static s valueOf(String s1)
    {
        return (s)Enum.valueOf(com/viewpagerindicator/s, s1);
    }

    public static s[] values()
    {
        s as[] = d;
        int i = as.length;
        s as1[] = new s[i];
        System.arraycopy(as, 0, as1, 0, i);
        return as1;
    }

    static 
    {
        a = new s("Bottom", 0, 0);
        b = new s("Top", 1, 1);
        s as[] = new s[2];
        as[0] = a;
        as[1] = b;
        d = as;
    }
}
