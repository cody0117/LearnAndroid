// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.bean;


public final class b
{

    private long a;
    private String b;

    public b()
    {
    }

    public final String a()
    {
        return b;
    }

    public final void a(String s)
    {
        b = s;
    }

    public final String toString()
    {
        return (new StringBuilder("Field [id=")).append(a).append(", name=").append(b).append("]").toString();
    }
}
