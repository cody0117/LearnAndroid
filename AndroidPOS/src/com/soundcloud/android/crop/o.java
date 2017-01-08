// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;


final class o extends Enum
{

    public static final o a;
    public static final o b;
    public static final o c;
    private static final o d[];

    private o(String s, int i)
    {
        super(s, i);
    }

    public static o valueOf(String s)
    {
        return (o)Enum.valueOf(com/soundcloud/android/crop/o, s);
    }

    public static o[] values()
    {
        o ao[] = d;
        int i = ao.length;
        o ao1[] = new o[i];
        System.arraycopy(ao, 0, ao1, 0, i);
        return ao1;
    }

    static 
    {
        a = new o("Changing", 0);
        b = new o("Always", 1);
        c = new o("Never", 2);
        o ao[] = new o[3];
        ao[0] = a;
        ao[1] = b;
        ao[2] = c;
        d = ao;
    }
}
