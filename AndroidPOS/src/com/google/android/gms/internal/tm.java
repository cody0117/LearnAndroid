// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Arrays;

final class tm
{

    final int a;
    final byte b[];

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof tm))
            {
                return false;
            }
            tm tm1 = (tm)obj;
            if (a != tm1.a || !Arrays.equals(b, tm1.b))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return 31 * (527 + a) + Arrays.hashCode(b);
    }
}
