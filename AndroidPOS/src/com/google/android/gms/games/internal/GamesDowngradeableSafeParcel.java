// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.internal.ji;

public abstract class GamesDowngradeableSafeParcel extends ji
{

    public GamesDowngradeableSafeParcel()
    {
    }

    protected static boolean b(Integer integer)
    {
        while (integer == null || integer.intValue() < 0x30d400) 
        {
            return false;
        }
        return true;
    }
}
