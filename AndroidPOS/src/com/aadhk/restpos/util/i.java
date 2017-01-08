// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;


public final class i
{

    public static boolean a(String s, String s1)
    {
        return s != null && (s.contains(s1) || "[]".equals(s));
    }
}
