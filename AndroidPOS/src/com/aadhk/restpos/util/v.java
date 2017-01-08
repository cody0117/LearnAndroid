// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;


public final class v
{

    public static int a(String s)
    {
        int i = 0;
        if (s != null)
        {
            boolean flag = "".equals(s);
            i = 0;
            if (!flag)
            {
                i = Integer.parseInt(s);
            }
        }
        return i;
    }
}
