// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


public final class qw
{

    public static int a(byte abyte0[], int i)
    {
        int j;
        int l;
        int i1;
        int j1;
        j = 0 + (i & -4);
        int k = 0;
        int j3;
        for (l = 0; k < j; l = j3)
        {
            int l2 = 0xcc9e2d51 * (0xff & abyte0[k] | (0xff & abyte0[k + 1]) << 8 | (0xff & abyte0[k + 2]) << 16 | abyte0[k + 3] << 24);
            int i3 = l ^ 0x1b873593 * (l2 << 15 | l2 >>> 17);
            j3 = 0xe6546b64 + 5 * (i3 << 13 | i3 >>> 19);
            k += 4;
        }

        i1 = i & 3;
        j1 = 0;
        i1;
        JVM INSTR tableswitch 1 3: default 148
    //                   1 224
    //                   2 207
    //                   3 193;
           goto _L1 _L2 _L3 _L4
_L1:
        int l1 = l;
_L6:
        int i2 = l1 ^ i;
        int j2 = 0x85ebca6b * (i2 ^ i2 >>> 16);
        int k2 = 0xc2b2ae35 * (j2 ^ j2 >>> 13);
        return k2 ^ k2 >>> 16;
_L4:
        j1 = (0xff & abyte0[j + 2]) << 16;
_L3:
        j1 |= (0xff & abyte0[j + 1]) << 8;
_L2:
        int k1 = 0xcc9e2d51 * (j1 | 0xff & abyte0[j]);
        l1 = l ^ 0x1b873593 * (k1 << 15 | k1 >>> 17);
        if (true) goto _L6; else goto _L5
_L5:
    }
}
