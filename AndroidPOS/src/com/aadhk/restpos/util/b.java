// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;


final class b extends Enum
{

    public static final b a;
    public static final b b;
    public static final b c;
    private static final b d[];

    private b(String s, int i)
    {
        super(s, i);
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/aadhk/restpos/util/b, s);
    }

    public static b[] values()
    {
        return (b[])d.clone();
    }

    static 
    {
        a = new b("NONE", 0);
        b = new b("ORDERED", 1);
        c = new b("UNORDERED", 2);
        b ab[] = new b[3];
        ab[0] = a;
        ab[1] = b;
        ab[2] = c;
        d = ab;
    }
}
