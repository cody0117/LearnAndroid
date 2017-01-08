// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.a;

import org.json.JSONObject;

public final class o
{

    String a;
    String b;
    String c;
    String d;
    String e;
    String f;
    String g;

    public o(String s, String s1)
    {
        a = s;
        g = s1;
        JSONObject jsonobject = new JSONObject(g);
        b = jsonobject.optString("productId");
        c = jsonobject.optString("type");
        d = jsonobject.optString("price");
        e = jsonobject.optString("title");
        f = jsonobject.optString("description");
    }

    public final String a()
    {
        return d;
    }

    public final String toString()
    {
        return (new StringBuilder("SkuDetails:")).append(g).toString();
    }
}
