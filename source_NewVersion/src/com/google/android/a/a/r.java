// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import android.text.TextUtils;

public final class r
{

    public int a;
    public int b;
    public String c;
    public String d;
    public String e;
    public long f;
    public String g;

    public r()
    {
    }

    public final String toString()
    {
        Object aobj[] = new Object[6];
        aobj[0] = Integer.valueOf(a);
        aobj[1] = Integer.valueOf(b);
        aobj[2] = c;
        aobj[3] = d;
        aobj[4] = e;
        aobj[5] = Long.valueOf(f);
        return TextUtils.join("|", aobj);
    }
}
