// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common;

import java.util.Comparator;

final class j
    implements Comparator
{

    j()
    {
    }

    public final int compare(Object obj, Object obj1)
    {
        byte abyte0[] = (byte[])obj;
        byte abyte1[] = (byte[])obj1;
        int i = Math.min(abyte0.length, abyte1.length);
        for (int k = 0; k < i; k++)
        {
            int l = 0xff & abyte0[k];
            int i1 = 0xff & abyte1[k];
            if (l != i1)
            {
                return l - i1;
            }
        }

        return abyte0.length - abyte1.length;
    }
}
