// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;

public final class bs
{

    private String a;
    private String b;
    private String c;
    private String d;

    public bs()
    {
        a = null;
        b = null;
        c = null;
        d = null;
        a = "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html";
        b = null;
        c = null;
        d = null;
    }

    public bs(String s, String s1, String s2, String s3)
    {
        a = null;
        b = null;
        c = null;
        d = null;
        if (TextUtils.isEmpty(s))
        {
            a = "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html";
        } else
        {
            a = s;
        }
        b = s1;
        c = s2;
        d = s3;
    }

    public final String a()
    {
        return a;
    }

    public final String b()
    {
        return b;
    }

    public final String c()
    {
        return c;
    }

    public final String d()
    {
        return d;
    }
}
