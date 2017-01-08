// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.a;

import org.json.JSONObject;

public final class m
{

    String a;
    String b;
    String c;
    String d;
    long e;
    int f;
    String g;
    String h;
    String i;
    String j;
    String k;

    public m(String s, String s1, String s2)
    {
        a = s;
        i = s1;
        JSONObject jsonobject = new JSONObject(i);
        b = jsonobject.optString("orderId");
        c = jsonobject.optString("packageName");
        d = jsonobject.optString("productId");
        e = jsonobject.optLong("purchaseTime");
        f = jsonobject.optInt("purchaseState");
        g = jsonobject.optString("developerPayload");
        h = jsonobject.optString("token", jsonobject.optString("purchaseToken"));
        j = s2;
    }

    public m(String s, String s1, String s2, long l)
    {
        a = s;
        b = s1;
        d = s2;
        e = l;
    }

    public final String a()
    {
        return a;
    }

    public final void a(String s)
    {
        k = s;
    }

    public final String b()
    {
        return b;
    }

    public final String c()
    {
        return d;
    }

    public final long d()
    {
        return e;
    }

    public final int e()
    {
        return f;
    }

    public final String f()
    {
        return k;
    }

    public final String toString()
    {
        return (new StringBuilder("PurchaseInfo(type:")).append(a).append("):").append(i).toString();
    }
}
