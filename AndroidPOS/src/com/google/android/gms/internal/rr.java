// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.List;

public final class rr
{

    public static boolean a(List list, List list1)
    {
        if (list.size() != list1.size())
        {
            return false;
        }
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            if (!list1.contains(iterator.next()))
            {
                return false;
            }
        }

        return true;
    }
}
