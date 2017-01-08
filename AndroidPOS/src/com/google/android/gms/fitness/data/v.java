// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import java.util.List;

public final class v
{

    public static int a(Object obj, List list)
    {
        int i;
        if (obj == null)
        {
            i = -1;
        } else
        {
            i = list.indexOf(obj);
            if (i < 0)
            {
                list.add(obj);
                return -1 + list.size();
            }
        }
        return i;
    }
}
